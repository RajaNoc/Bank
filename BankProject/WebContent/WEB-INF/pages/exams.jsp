<!DOCTYPE html>
<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>St Exam</title>

<link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">


	
<script type="text/javascript">	
function cancel(){
	$("#dialog").dialog('close');
}
function showContactusDialog(){
	$("#dialog").dialog();
}
function sendContactusMessage() {
	var message = document.getElementById("cprmsg").value;
	if(message ==""){
		alert("Please enter the message.");
	 	return;
	 }else{
		$.post("sendpcrequest.do?check", {
			msg : message,
			pid : "-1",
			opr : "req"
		}, function(data) {
			if (data == null) {
				message(container, "Error while sending request...");
			} else {			
				if(data == 'success'){
					alert("Your request has been send successfully.");
					$("#dialog").dialog('close');
				}
			}
		});
	 }
}	
	
</script>	
	
	
<style type="text/css">
a:hover,a:active {
	outline-style: none;
	outline-width: medium;
}
</style>
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
					<li><a href=".\exams.html" class="active">Question Paper</a></li>
					<li><a href=".\createQuestionPaper.htm">Create Question Paper</a></li>
					<li><a href=".\exams_SceduledExam.html">Scheduled Exam</a></li>
				</ul>
				<div class="sidebar_note message note">
				<p>Combine questions from different categories and complexities to create a complete Question Paper.</p>
				<p>
					1. Company ABC created a "First Round" question paper by selection 10 questions from aptitude, 10 from Analytical and 10 from Logical Categories each.
					Company ABC then schedules exams every time tehy have walk in  interviews.
					</p>
					<p>
					2. College XYZ have questions organized in categories "additions", "Multiplication" and "Division". Question paper "Maths" created using 25 questions from each of these categories and exam is scheduled every year using same question paper.
					</p>
					<p>
					Note: You can choose categories while creating Question papers. Actual questions are selected randomly at the time of actual exam. Hence each question paper is unique in terms of question and order of questions.	
					</p>
					</div>
					
			</div>

			<div id="main">
				<h3>Question Papers</h3>
				<hr>
				<div id="dialog" title="Customize Plan Request" style="display: none;">
					<p><label>Customize Plan Message:</label><textarea rows="5" cols="60" name="message" id="cprmsg"></textarea></p>
					<p style="text-align: right;">
							<input type="button" onclick="cancel();" value="Cancel" class="btn_green">&nbsp;
							<input type="button" onclick="sendContactusMessage();" value="Change Plan" class="btn_green">
					</p>
				</div>
				
				
				
				
				
				<div class="table_top">cre
				<a href=".\createQuestionPaper.htm" class="btn_green_sml">New Question Paper</a>
				</div>
	    		<div id="q_bank" class="filterdiv" style="float: right;">
					<form name="TestSearchForm" method="post" action="h"><input type="text" name="testname" value="" placeholder="Enter Question Paper Name"><input type="hidden" name="startPage" value=""><input type="hidden" name="operation" value=""><button class="btn_green_sml" onclick="doSubmit();"><span>search</span></button></form>
				</div>
				<form name="QuestionPaperForm" method="post" action="./exams_files/exams.html">
					
						<table class="display" id="example" style="margin-top: 40px;">
							<thead>
								<tr>
									<th scope="col">Sr.No.</th>
									<th scope="col">Question Paper</th>
									<th scope="col">Duration</th>
									<th scope="col">Questions</th>
									<th scope="col">Marks</th>
									<th scope="col">Option</th>									
									<th scope="col">Schedule</th>
								</tr>
							</thead>
							<tbody>
								
								
									<tr>
										<td>1</td>
										<td>Aptitude Test
										 
											&nbsp;<span class="highlight">(1 exam)</span> 
										 
										</td>
										<td>30&nbsp;Minutes</td>
										<td>29</td>
										<td>29</td>
										<td>
											
											<a href="javascript:showAlert();"><img style="opacity:0.6;" src="./exams_files/edit.png" title="Edit"></a>
											
										</td>
										<td><a href="exams_SceduledNewExam.html" class="btn_orange_sml">Schedule New
												Exam</a></td>
									</tr>
								
							</tbody>
						</table>
					
					<input type="hidden" name="startPage" value="1">
				</form>
				
				<table style="width:100%">						
					<tbody><tr>
					<td>
						
						<font color="red">Total: 1</font>
						
					</td>
					<td align="right">
					
	
		
		<!--  
					-->&nbsp;&nbsp;
		

		
		
			

		

		

		
	


	

					</td>
					</tr>
				</tbody></table>
			</div>
		</div>
	<script type="text/javascript" charset="utf-8">
		
	</script>

	<script>
		function dopage(page, op) {
			
			document.forms["QuestionPaperForm"].startPage.value = page;
			document.forms["QuestionPaperForm"].submit();
			
			
		}
	</script>



</div></body></html>