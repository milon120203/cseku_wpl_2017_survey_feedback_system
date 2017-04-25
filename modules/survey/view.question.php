<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Survey Questions</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- This page style sheet -->
    <link href="css/QuestionStyle.css" rel="stylesheet">

    <!-- This page scripting -->
    <script src="js/question_js.js" rel="script"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Question field starts -->
<div class="container">
    <div class="bs-example">
        <ul class="nav nav-tabs">
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Questions <b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <!--
                    <li><a data-toggle="tab" href="#dropdown1">Dropdown1</a></li>
                    -->

                    <?php
                    $numOfQuestion = 5;
                    $val = "";
                    for ($i = 1; $i <= $numOfQuestion; $i++) {
                        $val = "";
                        $val = $val . "Question";
                        $val = $val . $i;

                        ?>
                        <li><a data-toggle="tab" href="#<?php echo $val; ?>"><?php echo $val; ?></a></li>
                        <?php
                    }
                    ?>


                </ul>
            </li>
        </ul>

        <!-- Tab content section starts -->
        <form>
            <div class="tab-content">

                <div id="dropdown1" class="tab-pane fade">


                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <h2 for="exampleTextarea">Add your question?</h2>
                                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <h4 for="example-text-input" class="col-2 col-form-label">Number of questions</h4>
                                </div>

                                <div class="col-md-7">
                                    <input class="form-control" type="text" value="0" id="no-question-text-input">
                                </div>

                                <div class="col-md-2">
                                    <button name="generate_btn" id="opt_gen_but" class="btn btn-info pull-right"
                                            onclick="generateOptionFields()">Generate
                                    </button>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- Option area -->
                    <div id="gen-opt-area">

                    </div>

                </div>


                <?php
                for ($i = 1; $i <= $numOfQuestion; $i++) {
                    $val = "";
                    $val = $val . "Question";
                    $val = $val . $i;
                    ?>
                    <div id="<?php echo $val; ?>" class="tab-pane fade">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <h2 for="exampleTextarea">Add your question no <?php echo $i; ?>?</h2>
                                    <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-3">
                                        <h4 for="example-text-input" class="col-2 col-form-label">Number of
                                            questions</h4>
                                    </div>

                                    <div class="col-md-7">
                                        <input class="form-control" type="text" value="0"
                                               id="no-question-text-input-<?php echo $i; ?>">
                                    </div>

                                    <div class="col-md-2">
                                        <button id="opt-gen-but-<?php echo $i; ?>" class="btn btn-info pull-right"
                                                onclick="generateOptionFields2('no-question-text-input-<?php echo $i; ?>','gen-opt-area<?php echo $i; ?>')">
                                            Generate
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- Option area -->
                        <div id="gen-opt-area<?php echo $i; ?>">

                        </div>

                    </div>

                    <?php
                }
                ?>

            </div>

        </form>

        <!-- Tab content section ends -->

        <form>
            <div class="col-md-12">
                <button name="save-btn" id="saveButton" class="btn btn-primary pull-right btn-save-design">Save</button>
            </div>
        </form>


    </div>

</div>


<!-- Question field ends -->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>