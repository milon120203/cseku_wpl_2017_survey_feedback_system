<?php

include_once 'blade/view.question_2.blade.php';

$sID = $_REQUEST['sid'];

$quesBAOobj = new QuestionBAO();

$num_of_ques = $quesBAOobj->getNumQue($sID);



function createDropDownOption($num_of_ques)
{
    for ($i = 1; $i <= $num_of_ques; $i++) {
        $str = "Question";
        $str = $str . $i;
        ?>
        <li><a data-toggle="tab" href="#<?php echo $str; ?>"><?php echo $str; ?></a></li>
        <?php
    }
}

function createTabContent($num_of_ques)
{
    ?>
    <h1>Total number of questions:</h1>
    <input type="text" class="form-control" name="totalQuestions" value="<?php echo $num_of_ques?>">
    <?php

    for ($i = 1; $i <= $num_of_ques; $i++) {
        $str = "Question";
        $str = $str . $i;
        ?>
        <div id="<?php echo $str; ?>" class="tab-pane fade">
            <!-- Tab heading -->
            <h2>Add your question no <?php echo $i; ?></h2>

            <!-- Text area for question input -->
            <textarea class="form-control" name="<?php echo $str; ?>textarea"></textarea>

            <!-- Number of option input area -->
            <h3>Give number of option for this question</h3>
            <input type="text" class="form-control" value="0" name="<?php echo $str; ?>NumOpt"
                   id="<?php echo $str; ?>NumOpt">

            <!-- Option input section -->
            <div id="<?php echo $str; ?>optInputArea">

            </div>

            <!-- Option generate button -->
            <button type="button" name="<?php echo $str; ?>generate" value="Generate" class="btn btn-success"
                    onclick="generateCode('<?php echo $str; ?>')">
                Generate
            </button>

            <?php
            if ($i < $num_of_ques) {
                $str2 = "Question";
                $str2 = $str2 . ($i+1);
                ?>
                <a class="btn btn-primary" data-toggle="tab" href="#<?php echo $str2; ?>"><?php echo $str2; ?></a>
                <?php
            } else {
                ?>
                <!-- Submit button -->
                <input type="submit" name="submit" value="Submit" class="btn btn-primary">
                <?php
            }
            ?>

        </div>
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
    <title>Question entry section</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/question_js_2.js" rel="script"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">

    <ul class="nav nav-tabs">
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">Questions<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <?php
                createDropDownOption($num_of_ques);
                ?>
            </ul>
        </li>
    </ul>

    <div class="tab-content">

        <form method="post">

            <!--Function will go there-->
            <?php
                createTabContent($num_of_ques);
            ?>

        </form>

    </div>


</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>