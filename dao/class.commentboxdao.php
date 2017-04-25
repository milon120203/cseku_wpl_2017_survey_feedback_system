<?php
// write dao object for each class
include_once '/../common/class.common.php';
include_once '/../util/class.util.php';

Class SurveyQuestionDAO{

	private $_DB;
	private $_SurveyQuestion;

	function SurveyQuestionDAO(){

		$this->_DB = DBUtil::getInstance();
		$this->_SurveyQuestion = new SurveyQuestion();

	}

	// get all the SurveyQuestions from the database using the database query
	public function getAllSurveyQuestions(){

		$SurveyQuestionList = array();

		$this->_DB->doQuery("SELECT * FROM tbl_Survey_question");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_SurveyQuestion = new SurveyQuestion();

		    $this->_SurveyQuestion->setID ( $row['ID']);
		    $this->_SurveyQuestion->setSurveyID ( $row['SurveyID']);
		    $this->_SurveyQuestion->setQuestionNo( $row['QuestionNo'] );
		    $this->_SurveyQuestion->setQuestionType ( $row['QuestionType']);
		    $this->_SurveyQuestion->setIsVisible ( $row['IsVisible']);
		    $this->_SurveyQuestion->setIsRequired ( $row['IsRequired']);
		    $this->_SurveyQuestion->setQuestionValue( $row['QuestionValue'] );

		    $SurveyQuestionList[]=$this->_SurveyQuestion;
   
		}

		//todo: LOG util with level of log


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SurveyQuestionList);

		return $Result;
	}

	//create SurveyQuestion funtion with the SurveyQuestion object
	public function createSurveyQuestion($SurveyQuestion){

		$ID=$SurveyQuestion->getID();
		$SurveyID=$SurveyQuestion->getSurveyID();
		$QuestionNo=$SurveyQuestion->getQuestionNo( );
		$QuestionType=$SurveyQuestion->getQuestionType ();
		$IsVisible=$SurveyQuestion->getIsVisible ();
		$IsRequired=$SurveyQuestion->getIsRequired();
		$QuestionValue=$SurveyQuestion->getQuestionValue();


		$SQL = "INSERT INTO tbl_Survey_question (ID,SurveyID, QuestionNo,QuestionType,IsVisible,IsRequired,QuestionValue) VALUES('$ID','$SurveyID','$QuestionNo','$QuestionType','$IsVisible','$IsRequired','$QuestionValue')";

		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	//read an SurveyQuestion object based on its id form SurveyQuestion object
	public function readSurveyQuestion($SurveyQuestion){
		
		
		$SQL = "SELECT * FROM tbl_Survey_question WHERE ID='".$SurveyQuestion->getID()."'";
		$this->_DB->doQuery($SQL);

		//reading the top row for this SurveyQuestion from the database
		$row = $this->_DB->getTopRow();

		$this->_SurveyQuestion = new SurveyQuestion();

		//preparing the SurveyQuestion object

	    $this->_SurveyQuestion->setID ( $row['ID']);
	    $this->_SurveyQuestion->setSurveyID ( $row['SurveyID']);
	    $this->_SurveyQuestion->setQuestionNo( $row['QuestionNo'] );
	    $this->_SurveyQuestion->setQuestionType ( $row['QuestionType']);
	    $this->_SurveyQuestion->setIsVisible ( $row['IsVisible']);
	    $this->_SurveyQuestion->setIsRequired ( $row['IsRequired']);
	    $this->_SurveyQuestion->setQuestionValue( $row['QuestionValue'] );



	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_SurveyQuestion);

		return $Result;
	}

	//update an SurveyQuestion object based on its 
	public function updateSurveyQuestion($SurveyQuestion){

		$SQL = "UPDATE tbl_Survey_question SET QuestionValue='".$SurveyQuestion->getQuestionValue()."' WHERE ID='".$SurveyQuestion->getID()."'";


		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

	//delete an SurveyQuestion based on its id of the database
	public function deleteSurveyQuestion($SurveyQuestion){


		$SQL = "DELETE from tbl_Survey_question where ID ='".$SurveyQuestion->getID()."'";
	
		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

}

echo '<br> log:: exit the class.commentboxdao.php';

?>