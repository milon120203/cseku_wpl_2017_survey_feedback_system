<?php

include_once 'blade/view.response.blade.php';
include_once '/../../common/class.common.php';

function createArea(){
    $queOb = new QuestionBAO();

    $Result = $queOb->getAllQuestions($_REQUEST['sid']);
    $ResultOb = $Result->getResultObject();

    $numOfQues = count($ResultOb);

    $que = "Question";
    $opt = "Opt";

    if($numOfQues==0){
        ?>
        <h1>This Survey is empty now.</h1>
        <?php
    }else{
        ?>
        <h1 class="text-center"><?php $queOb->getSurveyTitle($_REQUEST['sid']);?></h1>


        <?php

        for($i=0;$i<$numOfQues;$i++){
            $Result2 = $queOb->getAllOption($_REQUEST['sid'], $ResultOb[$i]->getID());
            $ResultOb2 = $Result2->getResultObject();
            $numOfOption = count($ResultOb2);

            ?>
            <h3>Question number <?php echo $i;?></h3>
            <h4><?php echo $ResultOb[$i]->getQuestionValue();?></h4>


            <?php

            for($j=0;$j<$numOfOption;$j++){
                $str = $que . ($i+1) . $opt . ($j+1);
                ?>
                <input class="form-check-input" type="radio" name="<?php echo $str;?>" value="<?php echo $ResultOb2[$j]->getQuestionFieldValue();?>">
                <?php echo $ResultOb2[$j]->getQuestionFieldValue();?>
                <br/>
                <?php
            }

        }
        ?>

        <input type="submit" class="btn btn-primary" name="submit" value="Submit">


        <?php

    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Survey view</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <form method="post">
        <?php
            createArea();
        ?>
    </form>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>