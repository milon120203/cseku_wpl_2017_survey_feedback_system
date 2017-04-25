<?php

include_once '/../../../util/class.util.php';
include_once '/../../../bao/class.questiontypebao.php';


$_SurveyQuestionTypeBAO = new SurveyQuestionTypeBAO();
$_DB = DBUtil::getInstance();

/* saving a new SurveyQuestionType account*/
if(isset($_POST['save']))
{
	 $SurveyQuestionType = new SurveyQuestionType();	
	 $SurveyQuestionType->setID(Util::getGUID());
     $SurveyQuestionType->setType($_DB->secureInput($_POST['txtType']));
	 $_SurveyQuestionTypeBAO->createSurveyQuestionType($SurveyQuestionType);		 
}


/* deleting an existing SurveyQuestionType */
if(isset($_GET['del']))
{

	$SurveyQuestionType = new SurveyQuestionType();	
	$SurveyQuestionType->setID($_GET['del']);	
	$_SurveyQuestionTypeBAO->deleteSurveyQuestionType($SurveyQuestionType); //reading the SurveyQuestionType object from the result object

	header("Location: view.questiontype.php");
}


/* reading an existing SurveyQuestionType information */
if(isset($_GET['edit']))
{
	$SurveyQuestionType = new SurveyQuestionType();	
	$SurveyQuestionType->setID($_GET['edit']);	
	$getROW = $_SurveyQuestionTypeBAO->readSurveyQuestionType($SurveyQuestionType)->getResultObject(); //reading the SurveyQuestionType object from the result object
}

/*updating an existing SurveyQuestionType information*/
if(isset($_POST['update']))
{
	$SurveyQuestionType = new SurveyQuestionType();	

    $SurveyQuestionType->setID ($_GET['edit']);
    $SurveyQuestionType->setType( $_POST['txtType'] );
	
	$_SurveyQuestionTypeBAO->updateSurveyQuestionType($SurveyQuestionType);

	header("Location: view.questiontype.php");
}



echo '<br> log:: exit view.blade.questiontype.php';

?>