<?php

namespace frontend\controllers;

use common\models\Answer;
use common\models\Question;
use common\models\Test;
use common\models\search\TestSearch;
use DOMDocument;
use DOMXPath;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpWord\Element\Text;
use PhpOffice\PhpWord\Element\TextRun;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use ZipArchive;

class TestController extends Controller
{
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    public function actionIndex()
    {
        $searchModel = new TestSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCreate($course_id)
    {
        $model = new Test();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {

                $model->file  = UploadedFile::getInstance($model, 'file');
                if ($model->file) {
                    $filePath = Yii::getAlias('@webroot/uploads/') . $model->file->name;

                    $model->file->saveAs($filePath);

                    $model->course_id = $course_id;
                    $model->status = 'new';
                    $model->save(false);

                    $this->parse($filePath, $model->id);

                    unlink($filePath);

                    return $this->redirect(['view', 'id' => $model->id]);
                }
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    private function parse($filePath, $test_id)
    {
        $zip = new \ZipArchive();
        if ($zip->open($filePath) === true) {
            $xmlContent = $zip->getFromName('word/document.xml');
            $zip->close();

            // Remove MathML (entire <m:oMath> blocks)
            $xmlContent = preg_replace('/<m:oMath[^>]*>.*?<\/m:oMath>/s', '', $xmlContent);

            // Load the corrected XML into DOMDocument
            $dom = new \DOMDocument();
            libxml_use_internal_errors(true); // Prevent warnings
            $dom->loadXML($xmlContent);
            libxml_clear_errors();

            // Extract text (ignoring formulas and images)
            $paragraphs = $dom->getElementsByTagName('p');
            $text = '';
            foreach ($paragraphs as $p) {
                $text .= trim($p->textContent) . "\n";
            }

            // Call function to process extracted text
            $this->processText($text, $test_id);
        } else {
            throw new \Exception('Failed to open the .docx file.');
        }
    }

    private function processText($text, $test_id)
    {
        $lines = explode("\n", $text);
        $currentQuestionText = '';
        $answers = [];

        foreach ($lines as $line) {
            $line = trim($line);

            // Check if the line is an answer
            if (preg_match('/^[a-zA-Z]\s*[.)]\s*(.*)/', $line, $match)) {
                $answers[] = trim($match[1]);
            }
            // Check if the line is a question number
            elseif (preg_match('/^\s*\d+\s*[.)]\s*(.*)/', $line, $match)) {
                if ($currentQuestionText !== '' && !empty($answers)) {
                    $this->saveQuestion($currentQuestionText, $answers, $test_id);
                }
                // Start a new question
                $currentQuestionText = $match[1];
                $answers = [];
            }
            // Otherwise, it's part of the question text
            else {
                $currentQuestionText .= "\n" . $line;
            }
        }

        // Save the last question
        if ($currentQuestionText !== '' && !empty($answers)) {
            $this->saveQuestion($currentQuestionText, $answers, $test_id);
        }
    }

    private function saveQuestion($questionText, $answers, $test_id)
    {
        $question = new Question();
        $question->test_id = $test_id;
        $question->question = trim($questionText);
        $question->save(false);

        $firstAnswerId = null; // Store the first answer's ID

        foreach ($answers as $index => $ansText) {
            $answer = new Answer();
            $answer->question_id = $question->id;
            $answer->answer = trim($ansText);
            $answer->save(false);

            if ($index === 0) {
                $firstAnswerId = $answer->id; // Save first answer's ID
            }
        }

        // Update question->answer with the first answer's ID
        if ($firstAnswerId !== null) {
            $question->answer = $firstAnswerId;
            $question->save(false, ['answer']); // Save only 'answer' field
        }
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Test::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
