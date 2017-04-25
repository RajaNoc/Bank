<!DOCTYPE html>
<!-- saved from url=(0042)http://www. .com/a/ProfileRequired.do -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>User Profile -   - Online Exam To Evaluate Knowledge</title>
<link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">
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
				<li><a href="./settings.html" class="active">Email Templates</a></li>
					
					
					
						<li><a href="./setting_Messages.html">Messages</a></li>
						<li><a href="./setting_TransactionHistory.html">Transaction History</a></li>
					
					
					<li><a href="./setting_ShowResult.html">Show Result</a></li>
					<li><a href="./setting_UserProfileRequired.html">User Profile Required</a></li>
					</ul>
				<div class="sidebar_note"><p class="message note">Ask your candidates to fill his profile information by setting the status of User Profile Required to Yes.</p></div>
			</div>
			<div id="main">
			<h3>User Profile Required</h3>
			<hr>
				<div>
					<p class="message info">
						Change to "Yes" if you want to make Candidate to fill his
						Profile before giving the Exam.
					</p>
					
					<form name="CompanyForm" method="post" action="http://www. .com/a/UserProfileRequired.do">
						<div class="usr_pro_req">
							<p>
								<label>User Profile Required:</label>
								<select name="isprofile"><option value="1">Yes</option>
										<option value="0" selected="selected">No</option></select>
									<button class="btn_green" onclick="return doSubmit();">Submit</button>
							</p>
						</div>
							
					</form>
				</div>
			</div>
		</div></div>



</body></html>