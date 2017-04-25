<!DOCTYPE html>

<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Setting -   Online Exam to Evaluate Knowledge</title>
      <link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">
    
<script type="text/javascript">

function dosubmit(){
	var frm = document.forms[0];
	frm.operation.value = "save";
	frm.submit();
}

function showsummaryDetails(){
	var frm = document.forms[0];
	if(frm.showCandidateResult.value == 1){
		document.getElementById("details").style.display = '';	
	}else if(frm.showCandidateResult.value == 0){
		document.getElementById("details").style.display = 'none';
	}
}
</script>
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
					<li><a href="./settings.html" class="active">Email Templates</a></li>
					
					
					
						<li><a href="./setting_Messages.html">Messages</a></li>
						<li><a href="./setting_TransactionHistory.html">Transaction History</a></li>
					
					
					<li><a href="./setting_ShowResult.html">Show Result</a></li>
					<li><a href="./setting_UserProfileRequired.html">User Profile Required</a></li>
					<div class="sidebar_note"><p class="message note">Set Show Results To Candidate to 'Yes' , if you want your candidates to view their results after finishing examination</p></div>
			</div>
			<form name="settingForm" method="post" action="./Setting_ShowResult_files/Setting_ShowResult.html">
				<div id="main">
					<div class="regilogin_box">
					
						<h3>Show Result to Candidate</h3>
						<hr>
						<p class="message info">
						Set Show Results To Candidate to 'Yes' , if you want your candidates to view their results after finishing examination
						</p>
						<input type="hidden" name="operation" value="">
						
						<p>
                             <label style="width: 180px;">Show Result to Candidate: </label>                                 
                             <select name="showCandidateResult" onchange="showsummaryDetails();" id="showCandidateResult"><option value="1">Yes</option>
								<option value="0" selected="selected">No</option></select>                                 
                        </p>
                        
	                        <p id="details" style="display: none;">
	                             <label style="width: 180px;">Summary/Details: </label>                                 
	                             <select name="summaryDetails" id="summaryDetails"><option value="0" selected="selected">Summary</option>
									<option value="1">Details</option></select>                                 
	                        </p>
                        
						
						<button class="btn_green" type="button" onclick="dosubmit();">Save</button>						
					</div>
				</div>
			</form>
			</div>
</div>
<img height="1" width="1" src="./Setting_ShowResult_files/hit.php">
<script type="text/javascript">
   $(document).ready(function() {
     Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
   });
</script>


</body></html>