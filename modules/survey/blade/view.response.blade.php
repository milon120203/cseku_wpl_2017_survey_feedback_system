<?php
include_once '/../../../util/class.util.php';
include_once '/../../../bao/class.question_2_bao.php';

if(isset($_POST['submit'])){
    $queOb = new QuestionBAO();

    $Result = $queOb->getAllQuestions($_REQUEST['sid']);
    $ResultOb = $Result->getResultObject();
    $numOfQues = count($ResultOb);

    $que = "Question";
    $opt = "Opt";

    for($i=0;$i<$numOfQues;$i++){

        $Result2 = $queOb->getAllOption($_REQUEST['sid'], $ResultOb[$i]->getID());
        $ResultOb2 = $Result2->getResultObject();
        $numOfOption = count($ResultOb2);

        for($j=0;$j<$numOfOption;$j++){
            $str = $que . ($i+1) . $opt . ($j+1);
            $val = $_POST[$str];
            $obj = new SurveyQuestionFilled();
            $obj->setSurveyID($ResultOb[$i]->getSurveyID());
            $obj->setQuestionID($ResultOb[$i]->getID());
            $obj->setFilledValue($val);
            $obj->setFilledUserID('Hmm');
            $obj->setFilledTime(gettimeofday());

            echo "Select value = " . $val . "<br/>";

            $queOb->createSurveyQuestionFilled($obj);

        }


    }
}