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
        #body{
            padding-top: 80px;
        }
        .tool{
            display: none;
        }
        .answer{
            display: none;
        }
        body{
            /*background-image: url(../img/background.jpg);*/
        }
    </style>
</head>
<body>
<div id="body">
    <div class="container">
        <div class="row ">
            <div class="col-md-offset-2 col-md-8">
                <div class="row panel panel-default">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-1"><a href="/student/index" id="off" class="btn btn-link btn-block"><span class="glyphicon glyphicon-off"></span></a></div>
                </div>
            </div>
        </div>
    </div>
    <div id="contain" class="container">
        <div id="question" class="row" >
            <c:forEach var="questioninfo" items="${sessionScope.questionInfoList}">
                <div id="${questioninfo.id}" class="col-md-offset-2 col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading"><span class="glyphicon glyphicon-list-alt"></span> ${questioninfo.qno}</div>
                        <div class="panel-body">
                            <p>${questioninfo.question}</p>
                        </div>
                        <table class="table">
                            <c:if test="${questioninfo.type == '单选'}">
                                <tr name="A"><th> A</th><td>${questioninfo.optionA}</td></tr>
                                <tr name="B"><th> B</th><td>${questioninfo.optionB}</td></tr>
                                <tr name="C"><th> C</th><td>${questioninfo.optionC}</td></tr>
                                <tr name="D"><th> D</th><td>${questioninfo.optionD}</td></tr>
                                <tr style="visibility: hidden;"><th>&nbsp;</th><td>&nbsp;</td></tr>
                                <tr style="visibility: hidden;"><th>&nbsp;</th><td>&nbsp;</td></tr>
                                <input name="type" type="hidden" value="${questioninfo.type}">
                                <input name="H" type="hidden" value="${questioninfo.optionH}">
                            </c:if>
                            <c:if test="${questioninfo.type == '多选'}">
                                <tr name="A"><th> A</th><td>${questioninfo.optionA}</td></tr>
                                <tr name="B"><th> B</th><td>${questioninfo.optionB}</td></tr>
                                <tr name="C"><th> C</th><td>${questioninfo.optionC}</td></tr>
                                <tr name="D"><th> D</th><td>${questioninfo.optionD}</td></tr>
                                <tr name="E"><th> E</th><td>${questioninfo.optionE}</td></tr>
                                <tr style="visibility: hidden;"><th>&nbsp;</th><td>&nbsp;</td></tr>
                                <input name="type" type="hidden" value="${questioninfo.type}">
                                <input name="H" type="hidden" value="${questioninfo.optionH}">
                                <input name="I" type="hidden" value="${questioninfo.optionI}">
                                <input name="J" type="hidden" value="${questioninfo.optionJ}">
                                <input name="K" type="hidden" value="${questioninfo.optionK}">
                                <input name="L" type="hidden" value="${questioninfo.optionL}">
                            </c:if>
                            <c:if test="${questioninfo.type == '简答'}">
                                <tr><td><strong>1.</strong></td><td name="A" Contenteditable="true"></td><td class="answer"><c:if test="${questioninfo.optionH != null}"><strong>1.</strong></c:if></td><td name="H" class="answer" >${questioninfo.optionH}</td></tr>
                                <tr><td><strong>2.</strong></td><td name="B" Contenteditable="true"></td><td class="answer"><c:if test="${questioninfo.optionI != null}"><strong>2.</strong></c:if></td><td name="I" class="answer" >${questioninfo.optionI}</td></tr>
                                <tr><td><strong>3.</strong></td><td name="C" Contenteditable="true"></td><td class="answer"><c:if test="${questioninfo.optionJ != null}"><strong>3.</strong></c:if></td><td name="J" class="answer" >${questioninfo.optionJ}</td></tr>
                                <tr><td><strong>4.</strong></td><td name="D" Contenteditable="true"></td><td class="answer"><c:if test="${questioninfo.optionK != null}"><strong>4.</strong></c:if></td><td name="K" class="answer" >${questioninfo.optionK}</td></tr>
                                <tr><td><strong>5.</strong></td><td name="E" Contenteditable="true"></td><td class="answer"><c:if test="${questioninfo.optionL != null}"><strong>5.</strong></c:if></td><td name="L" class="answer" >${questioninfo.optionL}</td></tr>
                                <tr><td><strong>6.</strong></td><td name="F" Contenteditable="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="answer"><c:if test="${questioninfo.optionM != null}"><strong>6.</strong></c:if></td><td name="M" class="answer" >${questioninfo.optionM}</td></tr>
                                <input name="type" type="hidden" value="${questioninfo.type}">
                            </c:if>
                        </table>
                    </div>
                </div>
                <div class="col-md-2">
                    <a id="ok" class="btn btn-link btn-block" style="height:300px;"></a>
                    <a id="next" class="btn btn-link btn-block" style="height:300px;"></a>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="container">
        <div class="row ">
            <div class="col-md-offset-2 col-md-8">
                <div class="row panel panel-default">
                    <div class="col-md-1">
                        <a id="time" class="btn btn-link btn-block">12:00</a>
                    </div>
                    <div class="col-md-3">
                        <select id="subject" class="form-control tool">
                            <option value="">科目</option>
                            <option <c:if test="${sessionScope.subject == '马克思主义'}"> selected </c:if> value="马克思主义">马克思主义</option>
                            <option <c:if test="${sessionScope.subject == '思想道德修养'}"> selected </c:if> value="思想道德修养">思想道德修养</option>
                            <option <c:if test="${sessionScope.subject == '毛泽东思想'}"> selected </c:if> value="毛泽东思想">毛泽东思想</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select id="type" class="form-control tool">
                            <option value="">题型</option>
                            <option <c:if test="${sessionScope.type == '单选'}"> selected </c:if> value="单选">单选</option>
                            <option <c:if test="${sessionScope.type == '多选'}"> selected </c:if> value="多选">多选</option>
                            <option <c:if test="${sessionScope.type == '简答'}"> selected </c:if> value="简答">简答</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select id="difficulty" class="form-control tool">
                            <option value="">难度</option>
                            <option <c:if test="${sessionScope.difficulty == '6'}"> selected </c:if> value="6">06</option>
                            <option <c:if test="${sessionScope.difficulty == '7'}"> selected </c:if> value="7">07</option>
                            <option <c:if test="${sessionScope.difficulty == '8'}"> selected </c:if> value="8">08</option>
                            <option <c:if test="${sessionScope.difficulty == '9'}"> selected </c:if> value="9">09</option>
                            <option <c:if test="${sessionScope.difficulty == '10'}"> selected </c:if> value="10">10</option>
                        </select>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-1"><a id="cog" class="btn btn-link btn-block"><span class="glyphicon glyphicon-cog"></span></a></div>
                    <!-- <div class="col-md-1"><a id="ok" class="btn btn-link btn-block"><span class="glyphicon glyphicon-ok"></span></a></div> -->
                    <!-- <div class="col-md-1"><a id="next" class="btn btn-link btn-block"><span class="glyphicon glyphicon-chevron-right"></span></a></div> -->
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var start = new Date().getTime();
        // alert(start);
        count(start);
        $("#next").hide();
    });
    function count(start){
        var d = new Date();
        var t = d.getTime();
        // alert(start);
        $("#time").text(to4(Math.round((t - start)/1000)));
        setTimeout("count(" + start + ")",500);
    };
    function to4(x){
        if(x < 10){
            x = "00:0" + x;
        }else if(x < 60){
            x = "00:" + x;
        }else if(x/60 < 10 && x%60 < 10){
            x = "0" + Math.floor(x/60) + ":0" + x%60;
        }else if(x/60 < 10 && x%60 < 60){
            x = "0" + Math.floor(x/60) + ":" + x%60;
        }else if(x/60 > 10 && x%60 < 10){
            x =  Math.floor(x/60) + ":0" + x%60;
        }else if(x/60 > 10 && x%60 < 60){
            x =  Math.floor(x/60) + ":" + x%60;
        }
        return x;
    };
    $("#next").click(function(){
        $("#next").hide();
        $("#ok").show();
    });
    $("#cog").click(function(){
        $(".tool").slideToggle();
    });
    $("tr").click(function(){
        if($("[name='type']").val() == "单选"){
            $("tr").removeClass("warning");
            $(this).addClass("warning");
        }else if($("[name='type']").val() == "多选"){
            if($(this).hasClass("warning")){
                $(this).removeClass("warning");
            }else{
                $(this).addClass("warning");
            }
        }else{

        }
    });
    $("#next").click(function(){
        var url = "/student/practice";
        url = url + "?subject=" + $("#subject option:selected").val() + "&type=" + $("#type option:selected").val() + "&difficulty=" + $("#difficulty option:selected").val();
        window.location.href = url;
    });
    $("#ok").click(function(){
        if($("[name='type']").val() == "单选"){
            var answer = $("[name='H']").val();
            if($("[name='" + answer + "']").hasClass("warning")){
                $("[name='" + answer + "']").removeClass("warning");
                $("[name='" + answer + "']").addClass("success");
            }else{
                $("[name='" + answer + "']").addClass("danger");
            };
            $("#ok").hide();
            $("#next").show();
        }else if($("[name='type']").val() == "多选"){
            var list = new Array($("[name='H']").val(),$("[name='I']").val(),$("[name='J']").val(),$("[name='K']").val(),$("[name='L']").val());
            for (var i =  0; i < list.length; i++) {
                if($("[name='" + list[i] + "']").hasClass("warning")){
                    $("[name='" + list[i] + "']").removeClass("warning");
                    $("[name='" + list[i] + "']").addClass("success");
                }else{
                    $("[name='" + list[i] + "']").addClass("danger");
                };
            };
            $("#ok").hide();
            $("#next").show();
        }else{
            $(".answer").show();
            var answer = $("[name='A']").text() + $("[name='B']").text() + $("[name='C']").text() + $("[name='D']").text() + $("[name='E']").text() + $("[name='F']").text()
            if($("[name='H']").text() != "" ){
                if(answer.indexOf($("[name='H']").text()) != -1){
                    $("[name='H']").addClass("success");
                }else{
                    $("[name='H']").addClass("danger");
                }
            }
            if($("[name='I']").text() != "" ){
                if(answer.indexOf($("[name='I']").text()) != -1){
                    $("[name='I']").addClass("success");
                }else{
                    $("[name='I']").addClass("danger");
                }
            }
            if($("[name='J']").text() != "" ){
                if(answer.indexOf($("[name='J']").text()) != -1){
                    $("[name='J']").addClass("success");
                }else{
                    $("[name='J']").addClass("danger");
                }
            }
            if($("[name='K']").text() != "" ){
                if(answer.indexOf($("[name='K']").text()) != -1){
                    $("[name='K']").addClass("success");
                }else{
                    $("[name='K']").addClass("danger");
                }
            }
            if($("[name='L']").text() != "" ){
                if(answer.indexOf($("[name='L']").text()) != -1){
                    $("[name='L']").addClass("success");
                }else{
                    $("[name='L']").addClass("danger");
                }
            }
            if($("[name='M']").text() != "" ){
                if(answer.indexOf($("[name='M']").text()) != -1){
                    $("[name='M']").addClass("success");
                }else{
                    $("[name='M']").addClass("danger");
                }
            }
            $("#ok").hide();
            $("#next").show();
        }
    });
</script>
</body>
</html>