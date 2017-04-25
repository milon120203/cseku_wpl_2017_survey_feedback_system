<?php

include_once 'blade/view.survey.blade.php';
include_once '/../../common/class.common.php';

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Course Feedback</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>
<center>
    <div id="header">
        <label><a>By : Kazi Masudul Alam</a></label>
    </div>

    <div id="form">
        <form method="post">
            <table width="100%" border="1" cellpadding="15">
                
                
                <tr>
                    <td><input type="text" name="txtTitle" placeholder="Title" value="<?php 
                    if(isset($_GET['edit'])) echo $globalSurvey->getTitle();  ?>" /> </td>
                </tr>

                <tr>
                    <td><input type="text" name="txtDescription" placeholder="Description"value="<?php 
                    if(isset($_GET['edit'])) echo $globalSurvey->getDescription();  ?>" /> </td>
                </tr>

                <tr>
                    <td><input type="text" name="txtTotalQuestions" placeholder="Total Questions" value="<?php
                    if(isset($_GET['edit'])) echo $globalSurvey->getTotalQuestions();  ?>" /> </td>
                </tr>



             <!--   <tr>
                    <td><input type="text" name="txtCreator" placeholder="User Name" value="<?php 
                    if(isset($_GET['edit'])) echo $globalSurvey->getCreator();  ?>" /> </td>
                </tr>
-->


                <tr>

                    <?php
                    $Result = $_SurveyBAO->getAllUsers();
                    if ($Result->getIsSuccess())
                        $UserList = $Result->getResultObject();
                    ?>
                <td>User Name
                    <select name="txtCreator" style="width:170px">
                        <option selected="selected">Select User</option>
                        <?php
                        for ($i = 0; $i<sizeof($UserList); $i++){
                            $User = $UserList[$i];
                            ?>
                            <?php
                            if (!isset($_GET['edit'])){

                                ?>
                                <option value="<?php echo $User->getID();?>" > <?php echo $User->getFirstName(); ?>
                                </option>
                                <?php
                            }
                            if (isset($_GET['edit'])){

                                if ($globalSurvey->getCreator() == $User->getID() ){
                                    ?>
                                    <option selected value = "<?php echo $User->getID();?>" > <?php echo $User->getFirstName();?>
                                    </option>
                                    <?php
                                }
                                else {

                                    ?>
                                    <option value="<?php echo $User->getID();?>" > <?php echo $User->getFirstName(); ?>
                                    </option>
                                    <?php
                                }
                            }
                        }
                        ?>
                    </select>
                </td>
                </tr>

                <tr>
                    <td><level>Completion Date </level><input type="date" name="txtCompletionDate" placeholder="Completion Date" value="<?php 
                    if(isset($_GET['edit'])) echo $globalSurvey->getCompletionDate();  ?>" /> </td>
                </tr>

                <tr>
                    <td>
                        <?php
                        if(isset($_GET['edit']))
                        {
                            ?>
                            <button type="submit" name="update">update</button>
                            <?php
                        }
                        else
                        {
                            ?>
                            <button type="submit" name="save">save</button>
                            <?php
                        }
                        ?>
                    </td>
                </tr>

            </table>
        </form>

<br />

        <table width="100%" border="1" cellpadding="15" align="center">
    <?php
    
    
    $Result = $_SurveyBAO->getAllSurveys();

    //if DAO access is successful to load all the Surveys then show them one by one
    if($Result->getIsSuccess()){
        $SurveyList = $Result->getResultObject();
    ?>
        <tr>
            <td>Survey Title</td>
            <td>Description</td>
            <td>Total Questions</td>
            <td>Creator Name</td>
            <td>Creation Date</td>
            <td>Completion Date</td>
        </tr>
        <?php
        for($i = 0; $i < sizeof($SurveyList); $i++) {
            $Survey = $SurveyList[$i];
            ?>
            <tr>
                <td><?php echo $Survey->getTitle(); ?></td>
                <td><?php echo $Survey->getDescription(); ?></td>
                <td><?php echo $Survey->getTotalQuestions(); ?></td>
                <td><?php echo $_SurveyBAO->getTeacherFromID($Survey->getCreator()); ?></td>
                <td><?php echo $Survey->getCreationDate(); ?></td>
                <td><?php echo $Survey->getCompletionDate(); ?></td>
                <td><a href="?edit=<?php echo $Survey->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a></td>
                <td><a href="?del=<?php echo $Survey->getID(); ?>" onclick="return confirm('sure to delete !'); " >delete</a></td>
                <td><a href="view.question_2.php?sid=<?php echo $Survey->getID(); ?> " >Open</a></td>
            </tr>
        <?php

        }

    }
    else{

        echo $Result->getResultObject(); //giving failure message
    }

    ?>
    </table>
    </div>
</center>
</body>
</html>