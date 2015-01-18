<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TestOL</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<style type="text/css">
    .chevron-left{
        width: 30px;
    }
    .tool-bar{
        position: relative;
        left: -57px;
        visibility: hidden;
        display: none;
    }
    .tool{
    }
    .tool-bar + .tool-bar{
        margin-top:5px;
    }
    .rotate{
        -webkit-animation:rotate 1s;
        -moz-animation:rotate 1s;
        animation:rotate 1s;
    }
    .rotate-tool{
        -webkit-animation:rotateTool 9s;
        -webkit-animation-iteration-count:infinite;
        -moz-animation:rotateTool 9s;
        -moz-animation-iteration-count:infinite;
        animation:rotateTool 9s;
        animation-iteration-count:infinite;
    }
    .rotate-tools{
        -webkit-animation:rotateTools 18s;
        -webkit-animation-iteration-count:infinite;
        -moz-animation:rotateTools 18s;
        -moz-animation-iteration-count:infinite;
        animation:rotateTools 18s;
        animation-iteration-count:infinite;
    }
    .z-index-100{
        z-index: -100;
    }
    .ok{
        display: none;
        color: #d9534f;
    }
    .remove{
        display: none;
        color: #d9534f;
    }
    .scale{
        -webkit-transform:scale(0.1,0.1);
        -moz-transform:scale(0.1,0.1);
        transform:scale(0.1,0.1);
        width: 40px;
        height: 40px;
        /*overflow: hidden;*/
    }
    .count{
        position: absolute;
        top: 40px;
        left: 0px;
        right: 0px;
        /*display: none;*/
    }
    .detail{
        display: none;
    }
</style>
<style type="text/css">
    #header{
        position: fixed;
        right: 0;
        left: 0;
        top: 20px;
    }
    #body{
        padding-top: 70px;
    }
    #footer{
        position: fixed;
        right: 0px;
        left: 0px;
        bottom: 20px;
    }
    #navbar{
        position: relative;
        top: 0px;
        left: -26px;
        height: 52px;
        visibility: hidden;
    }
    #navbarBar{
        top:-52px;
        height:52px;
    }
    #filter{
    }
    #search{
    }
    #add{
    }
    #edit{
    }
    #trash{
    }
    #view{
    }
    #tool{
    }
    #tools{
        position: relative;
        bottom: 0px;
        left: -40px;
    }
    #trashCan{
        position: fixed;
        bottom: 20px;
        right: 12px;
        width: 82px;
        padding-bottom: 80px;
        border: 1px solid #ccc;
        border-radius: 4px;
        display: none;
    }
    #sendCan{
        position: fixed;
        top: 90px;
        right: 12px;
        width: 82px;
        padding-top: 170px;
        padding-bottom: 30px;
        border: 1px solid #ccc;
        border-radius: 4px;
        display: none;
    }
    #empty{
        position: absolute;
        bottom: 0px;
        left: 0px;
        right: 0px;
        /*display: none;*/
    }
    #sendButton{
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        /*display: none;*/
    }
</style>
<style type="text/css">
    @-webkit-keyframes rotate /* Safari and Chrome */
    {

        0% {-webkit-transform:rotateZ(0deg);}
        100% {-webkit-transform:rotateZ(360deg);}
    }
    @-webkit-keyframes rotateTool /* Safari and Chrome */
    {

        0% {-webkit-transform:rotateZ(0deg);}
        10% {-webkit-transform:rotateZ(0deg);}
        20% {-webkit-transform:rotateZ(0deg);}
        30% {-webkit-transform:rotateZ(360deg);}
        40% {-webkit-transform:rotateZ(360deg);}
        50% {-webkit-transform:rotateY(0deg);}
        60% {-webkit-transform:rotateY(360deg);}
        70% {-webkit-transform:rotateY(360deg);}
        80% {-webkit-transform:rotateX(0deg);}
        90% {-webkit-transform:rotateX(360deg);}
        100% {-webkit-transform:rotateX(360deg);}
    }
    @-webkit-keyframes rotateTools /* Safari and Chrome */
    {

        0% {-webkit-transform:rotateZ(0deg);}
        /*9% {-webkit-transform:rotateZ(180deg);}*/
        18% {-webkit-transform:rotateZ(360deg);}
        34% {-webkit-transform:rotateZ(360deg);}
        46% {-webkit-transform:rotateZ(360deg);}
        60% {-webkit-transform:rotateZ(360deg);}
        74% {-webkit-transform:rotateZ(360deg);}
        88% {-webkit-transform:rotateZ(360deg);}
        100% {-webkit-transform:rotateZ(360deg);}
    }
    @-moz-keyframes rotate /* Safari and Chrome */
    {

        0% {-moz-transform:rotateZ(0deg);}
        100% {-moz-transform:rotateZ(360deg);}
    }
    @-moz-keyframes rotateTool /* Safari and Chrome */
    {

        0% {-moz-transform:rotateZ(0deg);}
        10% {-moz-transform:rotateZ(0deg);}
        20% {-moz-transform:rotateZ(0deg);}
        30% {-moz-transform:rotateZ(360deg);}
        40% {-moz-transform:rotateZ(360deg);}
        50% {-moz-transform:rotateY(0deg);}
        60% {-moz-transform:rotateY(360deg);}
        70% {-moz-transform:rotateY(360deg);}
        80% {-moz-transform:rotateX(0deg);}
        90% {-moz-transform:rotateX(360deg);}
        100% {-moz-transform:rotateX(360deg);}
    }
    @-moz-keyframes rotateTools /* Safari and Chrome */
    {

        0% {-moz-transform:rotateZ(0deg);}
        /*9% {-moz-transform:rotateZ(180deg);}*/
        18% {-moz-transform:rotateZ(360deg);}
        34% {-moz-transform:rotateZ(360deg);}
        46% {-moz-transform:rotateZ(360deg);}
        60% {-moz-transform:rotateZ(360deg);}
        74% {-moz-transform:rotateZ(360deg);}
        88% {-moz-transform:rotateZ(360deg);}
        100% {-moz-transform:rotateZ(360deg);}
    }
    @keyframes rotate /* Safari and Chrome */
    {

        0% {transform:rotateZ(0deg);}
        100% {transform:rotateZ(360deg);}
    }
    @keyframes rotateTool /* Safari and Chrome */
    {

        0% {transform:rotateZ(0deg);}
        10% {transform:rotateZ(0deg);}
        20% {transform:rotateZ(0deg);}
        30% {transform:rotateZ(360deg);}
        40% {transform:rotateZ(360deg);}
        50% {transform:rotateY(0deg);}
        60% {transform:rotateY(360deg);}
        70% {transform:rotateY(360deg);}
        80% {transform:rotateX(0deg);}
        90% {transform:rotateX(360deg);}
        100% {transform:rotateX(360deg);}
    }
    @keyframes rotateTools /* Safari and Chrome */
    {

        0% {transform:rotateZ(0deg);}
        /*9% {transform:rotateZ(180deg);}*/
        18% {transform:rotateZ(360deg);}
        34% {transform:rotateZ(360deg);}
        46% {transform:rotateZ(360deg);}
        60% {transform:rotateZ(360deg);}
        74% {transform:rotateZ(360deg);}
        88% {transform:rotateZ(360deg);}
        100% {transform:rotateZ(360deg);}
    }
</style>
</head>
<body>
<div id="header">
    <div class="container">
        <button id="navbar" type="button" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-home"></span></button>
        <nav id="navbarBar" name="navbar" class="navbar navbar-inverse" role="navigation" >
            <div class="navbar-header">
                <a class="navbar-brand" href="teacherindex.html">TeacherOL</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="questionmanage.jsp">Question</a></li>
                    <li><a href="#">Test</a></li>
                    <li><a href="#">Report</a></li>
                    <li><a href="/login.html"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                    <li><a class="chevron-left"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<div id="body">
    <div id="contain" class="container">
        <div id="recordList" class="row" ondrop="dropBody(event)" ondragover="allowDrop(event)" style="padding-top:20px;">
            <c:forEach var="questioninfo" items="${sessionScope.questionInfoList}" varStatus="status">
                <div id="${questioninfo.id}" name="record" class="col-md-3" ondragstart="drag(event)" draggable="true">
                    <div name="${status.count}" class="panel panel-default">
                        <div class="panel-heading">${questioninfo.qno}
                            <span class="glyphicon glyphicon-remove pull-right remove confirm-delete" data-toggle="popover"></span>
                            <span class="glyphicon glyphicon-ok pull-right ok confirm-update" data-toggle="popover"></span>
                        </div>
                        <table class="table">
                            <tr name="qno">
                                <th>Qno</th>
                                <td>${questioninfo.qno}</td>
                            </tr>
                            <tr name="subject">
                                <th>Subject</th>
                                <td>${questioninfo.subject}</td>
                            </tr>
                            <tr class="detail" name="chapter">
                                <th>Chapter</th>
                                <td>${questioninfo.chapter}</td>
                            </tr>
                            <tr class="detail" name="tname">
                                <th>Tname</th>
                                <td>${questioninfo.tname}</td>
                            </tr>
                            <tr name="type">
                                <th>Type</th>
                                <td>${questioninfo.type}</td>
                            </tr>
                            <tr name="question" style="height: 100px;overflow: hidden">
                                <th>Question</th>
                                <td>${questioninfo.question}</td>
                            </tr>
                            <tr class="detail" name="knowledge1">
                                <th>Knowledge1</th>
                                <td>${questioninfo.knowledge1}</td>
                            </tr>
                            <tr class="detail" name="knowledge2">
                                <th>Knowledge2</th>
                                <td>${questioninfo.knowledge2}</td>
                            </tr>
                            <tr class="detail" name="knowledge3">
                                <th>Knowledge3</th>
                                <td>${questioninfo.knowledge3}</td>
                            </tr>
                            <tr class="detail" name="keyword1">
                                <th>Keyword1</th>
                                <td>${questioninfo.keyword1}</td>
                            </tr>
                            <tr class="detail" name="keyword2">
                                <th>Keyword2</th>
                                <td>${questioninfo.keyword2}</td>
                            </tr>
                            <tr class="detail" name="keyword3">
                                <th>Keyword3</th>
                                <td>${questioninfo.keyword3}</td>
                            </tr>
                            <tr name="difficulty">
                                <th>Difficulty</th>
                                <td>${questioninfo.difficulty}</td>
                            </tr>
                            <tr name="point">
                                <th>Point</th>
                                <td>${questioninfo.point}</td>
                            </tr>
                            <tr class="detail" name="optionA">
                                <th>OptionA</th>
                                <td>${questioninfo.optionA}</td>
                            </tr>
                            <tr class="detail" name="optionB">
                                <th>OptionB</th>
                                <td>${questioninfo.optionB}</td>
                            </tr>
                            <tr class="detail" name="optionC">
                                <th>OptionC</th>
                                <td>${questioninfo.optionC}</td>
                            </tr>
                            <tr class="detail" name="optionD">
                                <th>OptionD</th>
                                <td>${questioninfo.optionD}</td>
                            </tr>
                            <tr class="detail" name="optionE">
                                <th>OptionE</th>
                                <td>${questioninfo.optionE}</td>
                            </tr>
                            <tr class="detail" name="optionF">
                                <th>OptionF</th>
                                <td>${questioninfo.optionF}</td>
                            </tr>
                            <tr class="detail" name="optionG">
                                <th>OptionG</th>
                                <td>${questioninfo.optionG}</td>
                            </tr>
                            <tr class="detail" name="optionH">
                                <th>OptionH</th>
                                <td>${questioninfo.optionH}</td>
                            </tr>
                            <tr class="detail" name="optionI">
                                <th>OptionI</th>
                                <td>${questioninfo.optionI}</td>
                            </tr>
                            <tr class="detail" name="optionJ">
                                <th>OptionJ</th>
                                <td>${questioninfo.optionJ}</td>
                            </tr>
                            <tr class="detail" name="optionK">
                                <th>OptionK</th>
                                <td>${questioninfo.optionK}</td>
                            </tr>
                            <tr class="detail" name="optionL">
                                <th>OptionL</th>
                                <td>${questioninfo.optionL}</td>
                            </tr>
                            <tr class="detail" name="optionM">
                                <th>OptionM</th>
                                <td>${questioninfo.optionM}</td>
                            </tr>
                            <tr class="detail" name="optionN">
                                <th>OptionN</th>
                                <td>${questioninfo.optionN}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<div  id="footer">
    <div class="container">
        <div  id="tools" class="row">
            <div class="col-md-1">
                <div class="row">
                    <div class="col-md-8">
                        <button id="filter" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-filter"></span></button>
                        <button id="search" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-search"></span></button>
                        <button id="add" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-plus"></span></button>
                        <button id="random" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-random"></span></button>
                        <button id="send" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-send"></span></button>
                        <button id="trash" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-minus"></span></button>
                        <button id="edit" class="btn btn-default btn-block tool" data-toggle="button"><span class="glyphicon glyphicon-pencil"></span></button>
                        <button id="view" class="btn btn-default btn-block tool"><span name="col3" class="glyphicon glyphicon-th"></span></button>
                        <button id="tool" class="btn btn-default btn-block rotate-tool" data-toggle="button"><span class="glyphicon glyphicon-wrench"></span></button>
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
            <div class="col-md-11">
                <div id="filterTool" class="row tool-bar">
                    <div class="col-md-12">
                        <form class="form-inline">
                            <a class="btn btn-default" type="button">Subject</a>
                            <select id="subjectSelect" class="form-control">
                                <option></option>
                                <option>马克思主义</option>
                                <option>思想道德修养</option>
                                <option>毛泽东思想</option>
                            </select>
                            <a class="btn btn-default" type="button">Type</a>
                            <select id="typeSelect" class="form-control">
                                <option></option>
                                <option>单选</option>
                                <option>多选</option>
                                <option>简答</option>
                            </select>
                            <a class="btn btn-default" type="button">Difficulty</a>
                            <select id="difficultySelect" class="form-control">
                                <option></option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </form>
                    </div>
                </div>
                <div id="searchTool" class="row tool-bar">
                    <div class="col-md-3">
                        <div class="input-group">
                            <input id="keyword" type="text" class="form-control" placeholder="Keyword">
                            <span class="input-group-btn">
                              <button id="searchButton" class="btn btn-default" type="button">Search</button>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="addTool" class="row tool-bar">
                    <div class="col-md-12">
                        <form class="form-inline" role="form">
                            <div class="form-group">
                                <select class="form-control">
                                    <option>科目</option>
                                    <option>马克思主义</option>
                                    <option>思想道德修养</option>
                                    <option>毛泽东思想</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>章节</option>
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>教师 ID</option>
                                    <option>11610001</option>
                                    <option>11610002</option>
                                    <option>11610003</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>题型</option>
                                    <option>单选</option>
                                    <option>多选</option>
                                    <option>简答</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>难度系数</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>分值</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>5</option>
                                    <option>10</option>
                                    <option>20</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="" placeholder="question">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="" placeholder="answer">
                            </div>
                            <button type="submit" class="btn btn-default">Insert</button>
                        </form>
                    </div>
                </div>
                <div id="randomTool" class="row tool-bar">
                    <div class="col-md-3">
                        <div class="input-group">
                            <input id="amount" type="text" class="form-control" placeholder="Amount">
                            <span class="input-group-btn">
                              <button id="randomButton" class="btn btn-default" type="button">Random</button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="sendCan" class="row center-block" ondrop="dropSendCan(event)" ondragover="allowDrop(event)">
    <a id="sendButton" class="btn btn-link btn-block" data-toggle="modal" data-target="#mySendModal" data-backdrop="false"><span class="glyphicon glyphicon-send"></span></a>
    <div class="count">
        <a class="btn btn-link btn-xs">Count:</a><br>
        <a id="count" class="btn btn-link btn-xs">0</a><br>
        <a class="btn btn-link btn-xs">Difficulty:</a><br>
        <a id="difficulty" class="btn btn-link btn-xs">0</a><br>
        <a class="btn btn-link btn-xs">Score:</a><br>
        <a id="score" class="btn btn-link btn-xs">0</a>
    </div>
</div>
<div id="trashCan" class="row center-block" ondrop="dropTrashCan(event)" ondragover="allowDrop(event)">
    <a id="empty" class="btn btn-link btn-block" data-toggle="modal" data-target="#myTrashModal" data-backdrop="false"><span class="glyphicon glyphicon-trash"></span></a>
</div>
<div class="modal fade" id="mySendModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Confirmed To Send?</h4>
            </div>
            <div class="modal-body">
                <table id="sendList" class="table">
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Confirm</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myTrashModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Confirmed To Delete?</h4>
            </div>
            <div class="modal-body">
                <table id="trashList" class="table">
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Confirm</button>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".tool").hide();
        // $(".tool-bar").css("visibility","hidden");
        // $(".tool-bar").hide();
        // $("#navbar").css("visibility","hidden");
        $("#contain").mouseover(function(){
            $("#footer").addClass("z-index-100");
        });
        $("#contain").mouseout(function(){
            $("#footer").removeClass("z-index-100");
        });
        $("#filter").click(function(){
            if($("#filterTool").css("visibility")!="hidden"){
                $("#filterTool").css("visibility","hidden");
            }else{
                $("#filterTool").css("visibility","visible");
            };
        });
        $("#search").click(function(){
            if($("#searchTool").css("visibility")!="hidden"){
                $("#searchTool").css("visibility","hidden");
            }else{
                $("#searchTool").css("visibility","visible");
            };
        });
        $("#random").click(function(){
            if($("#randomTool").css("visibility")!="hidden"){
                $("#randomTool").css("visibility","hidden");
            }else{
                $("#randomTool").css("visibility","visible");
            };
        });
        $("#add").click(function(){
            if($("#addTool").css("visibility")!="hidden"){
                $("#addTool").css("visibility","hidden");
            }else{
                $("#addTool").css("visibility","visible");
            };
        });
        $("#tool").click(function(){
            if($(".tool").css("display")!="none"){
                $("#tool").removeClass("rotate-tools");
                $("#tool").addClass("rotate-tool");
                $(".tool").removeClass("rotate-tools");
                $(".tool").addClass("rotate");
                setTimeout(function(){
                    $(".tool").removeClass("rotate");
                },500);
                $(".tool-bar").hide();
                $(".tool").slideUp(500);
            }else{
                $(".tool").addClass("rotate");
                setTimeout(function(){
                    $(".tool").removeClass("rotate");
                },800);
                $("#tool").removeClass("rotate-tool");
                $(".tool").slideDown(500);
                $(".tool-bar").show(500);
                setTimeout(function(){
                    $("#view").addClass("rotate-tools");
                },3000);
                setTimeout(function(){
                    $("#edit").addClass("rotate-tools");
                },5000);
                setTimeout(function(){
                    $("#trash").addClass("rotate-tools");
                },7000);
                setTimeout(function(){
                    $("#send").addClass("rotate-tools");
                },9000);
                setTimeout(function(){
                    $("#random").addClass("rotate-tools");
                },11000);
                setTimeout(function(){
                    $("#add").addClass("rotate-tools");
                },13000);
                setTimeout(function(){
                    $("#search").addClass("rotate-tools");
                },15000);
                setTimeout(function(){
                    $("#filter").addClass("rotate-tools");
                },17000);
                setTimeout(function(){
                    $("#tool").addClass("rotate-tools");
                },19000);
            };
        });
        $("#navbar").click(function(){
            $("#navbar").css("visibility","hidden");
            $("[name='navbar']").show();
            $("[name='navbar']").animate({width:'100%'},1000);
        });
        $(".chevron-left").click(function(){
            $("[name='navbar']").animate({width:'0%'},1000,function(){
                $("[name='navbar']").hide();
                $("#navbar").css("visibility","visible");
            });
        });
        $("#randomButton").click(function(){
            var amount = ($("#amount").val() == "")?1:$("#amount").val();
            var max = $("[name='record']").last().find(".panel").attr("name");
            var list;
            for (var i = amount - 1; i >= 0; i--) {
                $("[name='" +  Math.floor(Math.random()*max+1) + "']").removeClass("panel-default").addClass("panel-danger");
            };
        });
    });
</script>
<script type="text/javascript">
    $(function(){
        $("#edit").click(function(){
            if($("[name='record']").find("td").attr("contentEditable")!="true"){
                $("[name='record']").find("td").attr("contentEditable","true");
                $(".ok").fadeIn();
            }else{
                $("[name='record']").find("td").attr("contentEditable","false");
                $(".ok").fadeOut();
            };
        });
        $("#trash").click(function(){
            if($("#trashCan").css("display") == "none"){
                // $("[name='record']").attr("draggable","true");
                $(".remove").fadeIn();
                $("#trashCan").fadeIn();
            }else{
                // $("[name='record']").attr("draggable","false");
                $(".remove").fadeOut();
                $("#trashCan").fadeOut();
            };
        });
        $("#send").click(function(){
            if($("#sendCan").css("display") == "none"){
                // $("[name='record']").attr("draggable","true");
                $("#sendCan").fadeIn();
            }else{
                // $("[name='record']").attr("draggable","false");
                $("#sendCan").fadeOut();
            };
        });
        $("#view").click(function(){
            if($("#view").children("span").attr("name") == "col3"){
                $("#view").children("span").attr("name","col4");
                $("#view").children("span").removeClass("glyphicon-th");
                $("#view").children("span").addClass("glyphicon-th-list");
                $("[name='record']").removeClass("col-md-3");
                $("[name='record']").addClass("col-md-4");
                $(".detail").hide();
            }else if($("#view").children("span").attr("name") == "col4"){
                $("#view").children("span").attr("name","col6");
                $("#view").children("span").removeClass("glyphicon-th-list");
                $("#view").children("span").addClass("glyphicon-th-large");
                $("[name='record']").removeClass("col-md-4");
                $("[name='record']").addClass("col-md-6");
                $(".detail").show();
            }else if($("#view").children("span").attr("name") == "col6"){
                $("#view").children("span").attr("name","col12");
                $("#view").children("span").removeClass("glyphicon-th-large");
                $("#view").children("span").addClass("glyphicon-list");
                $("[name='record']").removeClass("col-md-6");
                $("[name='record']").addClass("col-md-12");
                $(".detail").show();
            }else if($("#view").children("span").attr("name") == "col12"){
                $("#view").children("span").attr("name","col3");
                $("#view").children("span").removeClass("glyphicon-list");
                $("#view").children("span").addClass("glyphicon-th");
                $("[name='record']").removeClass("col-md-12");
                $("[name='record']").addClass("col-md-3");
                $(".detail").hide();
            };
        });
        $("#empty").click(function(){
            var list = $("#trashCan").find("[name='record']");
            var data = "";
            for(i=0;i<list.length;i++){
                // alert($(list[i]).attr("id"));
                data = data + "<tr><th>ID</th><td>" + $(list[i]).attr("id") + "</td><th>Qno</th><td>" + $(list[i]).find("[name='qno']").find("td").text() + "</td></tr>";
            }
            $("#trashList").html(data);
        });
        $("#sendButton").click(function(){
            var list = $("#sendCan").find("[name='record']");
            var data = "";
            for(i=0;i<list.length;i++){
                // alert($(list[i]).attr("id"));
                data = data + "<tr><th>ID</th><td>" + $(list[i]).attr("id") + "</td><th>Qno</th><td>" + $(list[i]).find("[name='qno']").find("td").text() + "</td></tr>";
            }
            $("#sendList").html(data);
        });
        $("#subjectSelect").change(function(){
            $("#contain").load("/teacher/querybycondition #recordList",{
                subject:$("#subjectSelect option:selected").text(),
                type:$("#typeSelect option:selected").text(),
                difficulty:$("#difficultySelect option:selected").text(),
                keyword:$("#keyword").val()
            });
        });
        $("#typeSelect").change(function(){
            $("#subjectSelect").change();
        });
        $("#difficultySelect").change(function(){
            $("#subjectSelect").change();
        });
        $("#searchButton").click(function(){
            $("#subjectSelect").change();
        });
    });
</script>
<script type="text/javascript">
    function allowDrop(ev){
        ev.preventDefault();
    }
    function drag(ev){
        ev.dataTransfer.setData("Text",ev.target.id);
    }
    function dropTrashCan(ev){
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        document.getElementById(data).classList.add("scale");
        // ev.target.appendChild(document.getElementById(data));
        $(ev.target).closest("#trashCan").append(document.getElementById(data));
    }
    function dropSendCan(ev){
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        document.getElementById(data).classList.add("scale");
        // ev.target.appendChild(document.getElementById(data));
        $(ev.target).closest("#sendCan").append(document.getElementById(data));
        count();
    }
    function dropBody(ev){
        ev.preventDefault();
        var data=ev.dataTransfer.getData("Text");
        // alert(document.getElementById(data).id);
        document.getElementById(data).classList.remove("scale");
        $(document.getElementById(data)).hide();
        $(document.getElementById(data)).fadeIn();
        $(ev.target).closest("[name='record']").after(document.getElementById(data));
        count();
    }
    function count(){
        var list = $("#sendCan").find("[name='record']");
        var difficulty = 0;
        var score = 0;
        for(i=0; i<list.length; i++){
            difficulty = parseFloat(difficulty) + parseFloat($(list[i]).find("[name='difficulty']").find("td").text());
            score = parseFloat(score) + parseFloat($(list[i]).find("[name='point']").find("td").text());
        };
        $("#count").text(list.size());
        $("#difficulty").text(toDecimal2(difficulty/list.size()));
        $("#score").text(score);
    }
    function toDecimal2(x) {
        var f = Math.round(parseFloat(x)*100)/100;
        var s = f.toString();
        var rs = s.indexOf('.');
        if (rs < 0) {
            rs = s.length;
            s += '.';
        }
        while (s.length <= rs + 2) {
            s += '0';
        }
        return s;
    }
</script>
<script type="text/javascript">
    $(function(){
        $(".confirm-update").click(function(){
            $(this).popover({
                html:true,
                placement:'right',
                title:'Update?',
                content:'<button class="btn btn-danger btn-xs btn-block" onclick="confirmUpdate(this)">Confirm</button><button name="sd" class="btn btn-default btn-xs btn-block" onclick="colsePopover(this)">Cancel</button>'
            });
            $(this).popover("show");
        });
        $(".confirm-delete").click(function(){
            // $(this).popover({
            //   html:true,
            //   placement:'right',
            //   title:'Delete?',
            //   content:'<button class="btn btn-danger btn-xs btn-block" onclick="confirmDelete(this)">Confirm</button><button name="sd" class="btn btn-default btn-xs btn-block" onclick="colsePopover(this)">Cancel</button>'
            // });
            // $(this).popover("show");
            $("#trashCan").append($(this).closest("[name='record']").addClass("scale"));
        });
        $(window).scroll(function(){
            $(".chevron-left").click();
        });
    });
    function colsePopover(element){
        $(element).parent().parent().prev().popover("destroy");
    };
    function confirmUpdate(element){
        alert($(element).closest("[name='record']").text());
        colsePopover(element);
    };
    function confirmDelete(element){
        alert($(element).closest("[name='record']").text());
        colsePopover(element);
    };
</script>
</body>
</html>