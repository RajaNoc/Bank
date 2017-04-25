<!DOCTYPE html>

<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>St Exam-Question List</title>

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
  <!-- nav end -->
  
</div>
  <!-- header end -->
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li><a href=".\question.html" class="active">Questions</a></li>		
						<li><a href=".\questionCategory.html">Question Category</a></li>
						<li><a href=".\question.loadCategoryDynamic">Question Sub-Category</a></li>
						<li><a href=".\questionComplexity.html">Complexity</a></li>
						<li><a href=".\importQuestion.html">Import Questions</a></li> 
						</ul>
				<div class="sidebar_note message note">
				<p>Step1: Prepare the Questions datafeed within the specific format, You can download the sample data feed file from here.</p>
				<p>Step2: Browse the Questions datafeed file by clicking on Choose file button provided here </p>
				<p>Step3: Select the delimiter if you are importing .TXT file or .CSV file, and ignore the delimiter part if you are importing via .XLS file format and Click on import button</p>
				<p>Step4: Map the fields and import the questions </p>	
				</div>
			</div>
			<div id="main">
				<div style="width: 100%;">
					
					
					
					
					<h3>Import Questions</h3>
					<hr>
					<p class="message info">
						Importing Questions From TXT or CSV or XLS files
						<!--  <br /> 1. Select a zip file having .txt or .csv file --> 
						<br>1. Click on Import Button <br>
						2. See the Field Mapping and click on Save to import Questions <br>
						3. See the sample file for more details about the File format <br>
						4. Answer Type: 0 = Single Choice &nbsp;&nbsp;&nbsp; 1 = Multi Choice <br>
					</p>
					<div class="import_q">
					<p>Download sample file for more details about the File format.</p>
					<a href="#" class="btn_green" target="_blank">download sample file</a>
					</div>
					<div id="q_bank4" class="import_q" style="width:400px;">
					<form name="ImportQuestionDataForm" method="post" action="#" enctype="multipart/form-data">
							 
							<input type="file" name="questionData" value="">
							<p><br>
							Delimiters (Valid for .txt and .csv formats)
							<br>
							<input type="radio" name="delimitorOther" value="TAB">TAB
							<input type="radio" name="delimitorOther" value="SEMICOLON">Semicolon
							<input type="radio" name="delimitorOther" value="COMMA">Comma
							<input type="radio" name="delimitorOther" value="SPACE">Space
							<br>
							<input type="radio" name="delimitorOther" value="OTHER">Other
							<input type="text" name="delimitor" maxlength="1" size="1" value="">
							&nbsp;&nbsp;&nbsp;
							Eg: ,&nbsp;&nbsp;|&nbsp;&nbsp;;&nbsp;&nbsp;\&nbsp;&nbsp;etc.
							<br><br> 
							<input type="submit" value="Import" class="btn_green">
<!-- 							<input type="submit" value="Import" class="btn_green" > -->
							</p>
					</form>
	 
					</div>
				</div>
			</div>
		</div>
	</div>
<img height="1" width="1" src="./ImportQuestion_files/hit.php">	
<link rel="stylesheet" href="./ImportQuestion_files/feedback.css" type="text/css" media="screen"> 	
<script type="text/javascript" src="./ImportQuestion_files/jquery.js"></script>
<script type="text/javascript" src="./ImportQuestion_files/feedback.js"></script>
<script type="text/javascript" src="./ImportQuestion_files/jquery.browser.min.js"></script>  
     
</script>
</body></html>x