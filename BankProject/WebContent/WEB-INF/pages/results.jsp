<!DOCTYPE html>

<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>ST Exam</title>


<link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">

</head>
<body>
	

	<div id="wrapper">
		
<div id="header">
      <h1><a href="#"><img src=".\images\logo.png" alt="ST Exam"></a></h1>
  	    
  <!-- top nav end -->
  <ul id="topnav">
  <li><a href="" id="settingsId">JAGNYA DATTA</a></li>
  <li><a href="#" id="upgradeId">Upgrade</a></li>
      <li><a href="#">Logout</a></li>
    </ul>
    <!-- topnav end -->
    
  <ul id="nav">
      <li class="active"><a href=".\dashboard.html" id="homeId">Dashboard</a></li>
      <li><a href=".\question.html" id="questionBankId">Questions</a></li>
      <li><a href=".\exams.html" id="testId">Exams</a></li>
      <li><a href=".\users.html" id="usersId">Users</a></li>
      
      <li><a href=".\certificates.html" id="certId">Certificates</a></li>
      
      <li><a href=".\settings.html" id="usersId">Settings  </a></li>
      <li><a href=".\results.html" id="reportsId">Results</a></li>
      </ul>
  
</div>
  <!-- header end -->
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li><a href="./results.html" class="active">Exam Wise Result</a></li>
					<li><a href="#callUserWiseResult.do">User
							Wise Result</a></li>					
				</ul>
				<div class="sidebar_note"><p class="message note">You may review Exam wise result with pass/fail.</p></div>
			</div>

			<div id="main">
				<h3>Exam Wise Result</h3>
				<hr>
				<div id="q_bank4" class="filterdiv table_top">
					<form name="ReportForm" method="post" action="http://www. .com/a/Report.do">
						
							<label>Exam: </label>
							<div class="select2-container" id="s2id_testID" style="width: 300px">    <a href="javascript:void(0)" onclick="return false;" class="select2-choice">   <span>All Exams</span>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" autocomplete="off" class="select2-input" tabindex="0">   </div>   <ul class="select2-results">   </ul></div></div><select name="testID" id="testID" style="width: 300px; display: none;"><option value="0">All Exams</option>
								
									<option value="3220~T2199">First Exam - Aptitude Test</option></select>
							&nbsp;
							<label>Filter By: </label>
							<select name="filterBy"><option value="0">All</option>
								<option value="PASS">Pass</option>
								<option value="FAIL">Fail</option></select>
							&nbsp;&nbsp;<label>Select Date</label> 
							<div class="select2-container" id="s2id_dateRange" style="width: 175px">    <a href="javascript:void(0)" onclick="return false;" class="select2-choice">   <span>All</span>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" autocomplete="off" class="select2-input" tabindex="0">   </div>   <ul class="select2-results">   </ul></div></div><select name="dateRange" onchange="showhidedates();" id="dateRange" style="width: 175px; display: none;"><option value="-1">All</option>
								<option value="0" selected="selected">Today</option>
								<option value="1">This Week</option>
								<option value="2">This Month</option>
								<option value="3">Last Week</option>
								<option value="4">Last Month</option>
								<option value="5">Custom Dates</option></select>
							<div style="text-align: center; margin-top: 10px;">
								<div id="customdate" style="display:none;float: left;">
								<label>Select Custom Dates</label>
								<input type="text" name="startDate" size="10" value="" id="sdate" class="hasDatepicker"><img class="ui-datepicker-trigger" src="./Results_files/cal.png" alt="..." title="...">
								<input type="text" name="endDate" size="10" value="" id="edate" class="hasDatepicker"><img class="ui-datepicker-trigger" src="./Results_files/cal.png" alt="..." title="...">
								</div>
								<input type="hidden" name="operation" value="test">
								<input type="button" value="Show Report" class="btn_green_sml" onclick="setiframenew();">
								<input type="button" value="Export To Excel" class="btn_green_sml" onclick="exportResult();">
							</div>
						
					</form>
				</div>
				<div id="iframe" style="margin-top:100px;"></div>
			</div>
		</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {		
		Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });		
	
		$("#testID").select2({
			placeholder: "",
			allowClear: true
		});
		$("#dateRange").select2().select2('val', '-1');
		$(function() {
			$("#sdate").datepicker({dateFormat: 'yy-m-dd',showOn: 'both', buttonImage: 'images/cal.png', buttonImageOnly: true,maxDate:-0});
		});
		$(function() {
			$("#edate").datepicker({dateFormat: 'yy-m-dd',showOn: 'both', buttonImage: 'images/cal.png', buttonImageOnly: true,maxDate:-0});
		});
	});
</script>



 <div id="select2-drop-mask" class="select2-drop-mask" style="display: none;"></div><div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-helper-hidden-accessible"></div></body></html>