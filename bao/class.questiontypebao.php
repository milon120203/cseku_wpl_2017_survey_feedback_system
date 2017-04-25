<?php

include_once '/../util/class.util.php';
include_once '/../dao/class.questiontypedao.php';


/*
	SurveyQuestionType Business Object 
*/
Class SurveyQuestionTypeBAO{

	private $_DB;
	private $_SurveyQuestionTypeDAO;

	function SurveyQuestionTypeBAO(){

		$this->_SurveyQuestionTypeDAO = new SurveyQuestionTypeDAO();

	}

	//get all SurveyQuestionTypes value
	public function getAllSurveyQuestionTypes(){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionTypeDAO->getAllSurveyQuestionTypes();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionTypeDAO.getAllSurveyQuestionTypes()");		

		return $Result;
	}

	//create SurveyQuestionType funtion with the SurveyQuestionType object
	public function createSurveyQuestionType($SurveyQuestionType){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionTypeDAO->createSurveyQuestionType($SurveyQuestionType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionTypeDAO.createSurveyQuestionType()");		

		return $Result;

	
	}

	//read an SurveyQuestionType object based on its id form SurveyQuestionType object
	public function readSurveyQuestionType($SurveyQuestionType){


		$Result = new Result();	
		$Result = $this->_SurveyQuestionTypeDAO->readSurveyQuestionType($SurveyQuestionType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionTypeDAO.readSurveyQuestionType()");		

		return $Result;


	}

	//update an SurveyQuestionType object based on its current information
	public function updateSurveyQuestionType($SurveyQuestionType){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionTypeDAO->updateSurveyQuestionType($SurveyQuestionType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionTypeDAO.updateSurveyQuestionType()");		

		return $Result;
	}

	//delete an existing SurveyQuestionType
	public function deleteSurveyQuestionType($SurveyQuestionType){

		$Result = new Result();	
		$Result = $this->_SurveyQuestionTypeDAO->deleteSurveyQuestionType($SurveyQuestionType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in SurveyQuestionTypeDAO.deleteSurveyQuestionType()");		

		return $Result;

	}

}

echo '<br> log:: exit the class.questiontypebao.php';

?>