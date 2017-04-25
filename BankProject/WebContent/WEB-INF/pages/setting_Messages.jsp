<!DOCTYPE html>

<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Plan Contact Response Messages</title>
     <link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">
   
<style>
#comments ol { list-style: none; list-style-type: none; }
.commentInfo, .commentDateStamp { display: inline-block; vertical-align: top; margin: 0; padding: 0; line-height: 18px; width: 140px; }
.adminComment .comment { background: #d7e4ed; }
.comment { position: relative; display: inline-block; width: 700px; vertical-align: top; padding: 10px 10px; background: #eee; margin-bottom: 15px; margin-left: 0;
box-sizing: border-box; }
.comment:after { content: ""; position: absolute; top: 5px; left: -15px; border-style: solid; border-width: 10px 15px 10px 0; border-color: transparent #eee; display: block; width: 0; z-index: 1; }
.adminComment .comment:after { border-color: transparent #d7e4ed; }
</style>
<script>
var pid = "-1";
function showContactusDialog(parentid){
	pid = parentid;
	$("#dialog").dialog();
}
function cancel(){
	$("#dialog").dialog('close');
}
function sendContactusMessage() {
	var message = document.getElementById("cprmsg").value;
	if(message ==""){
		alert("Please enter the message.");
	 	return;
	 }else{
		$.post("sendpcrequest.do?check", {
			msg : message,
			pid : pid,
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
					
						<li><a href="./Settings_files/settings.html" class="active">Email Templates</a></li>
					
					
					
						<li><a href="./setting_Messages.html">Messages</a></li>
						<li><a href="./setting_TransactionHistory.html">Transaction History</a></li>
					
					
					<li><a href="./setting_ShowResult.html">Show Result</a></li>
					<li><a href="./setting_UserProfileRequired.html">User Profile Required</a></li>
					
					
					</ul>
				<div class="sidebar_note message note"><p>Responses to the request for plan Customizations</p></div>
			</div>
			<div id="main">
				<h3>Plan Contact Response Messages</h3>
				<hr>
				<div id="dialog" title="Customize Plan Request" style="display: none;">
					<p><label>Customize Plan Message:</label><textarea rows="7" name="message" id="cprmsg"></textarea></p>
					<p style="text-align: right;">
							<input type="button" onclick="cancel();" value="Cancel" class="btn_green">&nbsp;
							<input type="button" onclick="sendContactusMessage();" value="Send Message" class="btn_green">
					</p>
				</div>
				<div>
					
					
						<div class="message note"><a href="javascript:showContactusDialog(-1);">Contact us</a> for customized plan or to change your current exam limits</div>
					
				</div>						
			</div>
		</div>
	</div>

<!-- PAGE TIMING STATISTICS :  REQUEST TIMESTAMP | 2014-08-14_03.51.58 PROCESSING TIME | 0 ms  -->		

</body></html>