<?php

include_once '/../util/class.util.php';
include_once '/../dao/class.question_2_dao.php';

class QuestionBAO{
    private $_QuestionDAO;

    public function __construct(){
        $this->_QuestionDAO = new QuestionDAO2();
    }

    public function getNumQue($sID){
        return $this->_QuestionDAO->getNumOfQue($sID); // Have to return this
    }

    public function createQuestion($QuestionOb){
        $result = $this->_QuestionDAO->createQuestion($QuestionOb);

        if(!$result->getIsSuccess()){
            $result->setResultObject("Database failure in questiondao.createQuestion");
        }

        return $result;
    }

    public function createQuestionOption($queOpt){

        $result = $this->_QuestionDAO->createQuestionOption($queOpt);

        if(!$result->getIsSuccess()){
            $result->setResultObject("Database failure in questiondao.createQuestionOption");
        }

        return $result;
    }

    public function getSurveyTitle($sID){
        return $this->_QuestionDAO->getSurveyTitle($sID);
    }

    public function getAllQuestions($sID){
        return $this->_QuestionDAO->getAllQuestions($sID);
    }

    public function getAllOption($sID, $qID){
        return $this->_QuestionDAO->getAllOption($sID, $qID);
    }

    public function createSurveyQuestionFilled($fillData){
        $this->_QuestionDAO->createSurveyQuestionFilled($fillData);
    }
}