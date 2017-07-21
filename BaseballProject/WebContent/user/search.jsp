<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="project.baseball.dto.StadiumBallDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Bare - Start Bootstrap Template </title>

    <!-- Bootstrap Core CSS -->
    <link href="./css/bootstrapSearch.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
    body {
        padding-top: 70px;
        /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
    }
    #bs-example-navbar-collapse-11{position : absolute; top : 10px; left : 750px; z-index:1;}
    #section { position : absolute; top : 15px; left : 1500px;}
    img { position : absolute; top :1px; left :1000px;}
    </style>
    
	<script src="../js/jquery-3.2.1.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<% List<StadiumBallDTO> sbd = (List<StadiumBallDTO>)request.getAttribute("list"); %>
    <!-- 그래프 -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Stadium', 'AmountHomeRunBall per Section'],
          ['<%=sbd.get(0).getbSeatCode()%>', <%=sbd.get(0).getCountBallSeatCode()%>],
          ['<%=sbd.get(1).getbSeatCode()%>', <%=sbd.get(1).getCountBallSeatCode()%>],
          ['<%=sbd.get(2).getbSeatCode()%>', <%=sbd.get(2).getCountBallSeatCode()%>],
          ['<%=sbd.get(3).getbSeatCode()%>', <%=sbd.get(3).getCountBallSeatCode()%>],
          ['<%=sbd.get(4).getbSeatCode()%>', <%=sbd.get(4).getCountBallSeatCode()%>],
          ['<%=sbd.get(5).getbSeatCode()%>', <%=sbd.get(5).getCountBallSeatCode()%>],
        ]);

        var options = {
          'title' : '좌석별 홈런 갯수'
        };

        chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
        
        google.visualization.events.addListener(chart, 'select', myClickHandler);

      }
      
      function myClickHandler(){
    	  var selection = chart.getSelection();
    	  //var message = '';
		  var seat  = ''; 
		  
    	  for (var i = 0; i < selection.length; i++) {
    	    var item = selection[i];
    	    if (item.row != null && item.column != null) {
    	      //message += '{row:' + item.row + ',column:' + item.column + '}';
    	    } else if (item.row != null) {
    	      //message += '{row:' + item.row + '}';
    	      //seat = item.row;
    	      
    	      
    	      
    	    } else if (item.column != null) {
    	      //message += '{column:' + item.column + '}';
    	    }
    	    
    	    
    	  }
    	  if (seat == '') {
    		  seat = '0';
    	  } 
    	  // alert('You selected ' + message);
    	  
    	  console.log(seat);
    	  
    	  if(seat == '0')
    	     $("#seat").attr("src", "./seatInfo/b.png")
    	  else if(seat == '1')
    	     $("#seat").attr("src", "./seatInfo/c.png")
    	     
    	     
    	     
    	 /*     $("#seat").attr("src", "./seatInfo/"+ seat +".png") */
    	     
    	     
    	  
    	}
    </script>
<style>
body{
background : url('./searchimg/back2.jpg');
background-repeat : no-repeat;
background-size : cover;
};

</style>
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="링크걸어야함"> NAJURA </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#"> 구단 정보 </a>
                    </li>
                    <li>
                        <a href="#"> 경기 정보 </a>
                    </li>
                    <li>
                        <a href="#"> 홈런 기록 </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
        <div class="row">
            <div class="col-lg-12">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-11">
		    <ul class="nav navbar-nav">
		    <li>
			<a href="링크연결 해야함"> 홈런 </a>
                    </li>
                    <li>
			<a href="링크연결 해야함"> 파울 </a>
                    </li>
                </ul>
            </div>
    <div class="container">
        <div class="row">
	<div id="donutchart" style="width: 500px; height: 500px;"></div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
<img src = "seatInfo/a.png" width = 500px height = 500px id="seat">

<select id="section">

    <option value=""> 전체 구장 </option>
    <option value=""> 잠실 </option>
    <option value=""> C section </option>
    <option value=""> D section </option>
    <option value=""> E section </option>
    <option value=""> F section </option>
    <option value=""> G section </option>
    <option value=""> H section </option>
    <option value=""> I section </option>
    <option value=""> J section </option>
    
</select>


    <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>