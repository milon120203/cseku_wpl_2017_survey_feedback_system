<?php

include_once '/../util/class.util.php';
include_once '/../dao/class.commentboxdao.php';


/*
	SurveyQuestion Business Object 
*/
Class SurveyQuestionBAO{

	private $_DB;
	private $_SurveyQuestionDAO;

	function SurveyQuestionBAO(){

		$this->_SurveyQuestionDAO = new SurveyQuestionDAO();

	}

	//get all SurveyQuestions value
	public function getAllSurveyQuestions(){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionDAO->getAllSurveyQuestions();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionDAO.getAllSurveyQuestions()");		

		return $Result;
	}

	//create SurveyQuestion funtion with the SurveyQuestion object
	public function createSurveyQuestion($SurveyQuestion){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionDAO->createSurveyQuestion($SurveyQuestion);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionDAO.createSurveyQuestion()");		

		return $Result;

	
	}

	//read an SurveyQuestion object based on its id form SurveyQuestion object
	public function readSurveyQuestion($SurveyQuestion){


		$Result = new Result();	
		$Result = $this->_SurveyQuestionDAO->readSurveyQuestion($SurveyQuestion);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionDAO.readSurveyQuestion()");		

		return $Result;


	}

	//update an SurveyQuestion object based on its current information
	public function updateSurveyQuestion($SurveyQuestion){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionDAO->updateSurveyQuestion($SurveyQuestion);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionDAO.updateSurveyQuestion()");		

		return $Result;
	}

	//delete an existing SurveyQuestion
	public function deleteSurveyQuestion($SurveyQuestion){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionDAO->deleteSurveyQuestion($SurveyQuestion);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionDAO.deleteSurveyQuestion()");		

		return $Result;

	}

}

echo '<br> log:: exit the class.commentboxbao.php';

?>