<!DOCTYPE html>
<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>ST Exam</title>
      <link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">

<script type="text/javascript" charset="utf-8"> 
	/* Define two custom functions (asc and desc) for string sorting */
	jQuery.fn.dataTableExt.oSort['string-case-asc'] = function(x, y) {
		return ((x < y) ? -1 : ((x > y) ? 1 : 0));
	};

	jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x, y) {
		return ((x < y) ? 1 : ((x > y) ? -1 : 0));
	};

	$(document).ready(function() {
		/* Build the DataTable with third column using our custom sort functions */
		$('#example').dataTable({
			"aaSorting" : [ [ 0, 'asc' ], [ 1, 'asc' ] ],
			"aoColumnDefs" : [ {
				"sType" : 'string-case',
				"aTargets" : [ 2 ]
			} ]
		});

		 Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
		
	});

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
					<li><a href=".\exams.htm" class="active">Question Paper</a></li>
					<li><a href=".\createQuestionPaper.htm">Create Question Paper</a></li>
					<li><a href=".\exams_SceduledExam.html">Scheduled Exam</a></li>
					</ul>
					<div class="sidebar_note"><p class="message note">Schedule Exams by selecting employees/candidates for any of the Question Papers you created.
					
					</p></div>
				</div>
			<div id="main">
				<h3>Scheduled Exams</h3>
					<hr>
					
				<div id="dialog" title="Customize Plan Request" style="display: none;">
					<p><label>Customize Plan Message:</label><textarea rows="5" name="message" id="cprmsg"></textarea></p>
					<p style="text-align: right;">
							<input type="button" onclick="cancel();" value="Cancel" class="btn_green">&nbsp;
							<input type="button" onclick="sendContactusMessage();" value="Change Plan" class="btn_green">
					</p>
				</div>	
					
				
					
				<form name="ScheduleTestForm" method="post" action="http://www. .com/a/schdultestlist.do">
					<input type="hidden" name="startPage" value="1">
					<input type="hidden" name="operation" value="">
					<input type="hidden" name="testId" value="0">
					<input type="hidden" name="examID" value="0">
					
					<div class="table_top">				
						<div style="float: left">						
							<select name="groupBy" onchange="dopage();" id="group"><option value="0">All Groups</option>
								
									
										<option value="1985">Default Group</option></select>
						</div>						
						<div style="float: left; margin: 0 0 0 10px;">
							<select name="statusBy" onchange="dopage()" id="status"><option value="0">All Status</option>								
								<option value="completed">Completed</option>
								<option value="current">Current</option>
								<option value="coming">Coming</option></select>
						</div>					
						<a href="./exams_SceduledNewExam.html" class="btn_green_sml">Schedule New Exam</a>
					</div>
				</form>
				<form name="ScheduleDetailForm" method="post" action="http://www. .com/a/DetailSchduleTestAction.do">
					<input type="hidden" name="testId" value="">
					<input type="hidden" name="startDate" value="">
					<input type="hidden" name="endDate" value="">
					
					
					
					
						<div id="example_wrapper" class="dataTables_wrapper" role="grid"><div id="example_length" class="dataTables_length"><label>Show <select size="1" name="example_length" aria-controls="example"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div class="dataTables_filter" id="example_filter"><label>Search: <input type="text" aria-controls="example"></label></div><table cellpadding="0" cellspacing="0" border="0" class="display dataTable" id="example" aria-describedby="example_info">
							<thead>
								<tr role="row"><th width="4%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Sr.No.: activate to sort column descending" style="width: 50px;">Sr.No.</th><th width="25%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Exam Name: activate to sort column ascending" style="width: 271px;">Exam Name</th><th width="15%" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Question Paper: activate to sort column ascending" style="width: 154px;">Question Paper</th><th width="10%" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Start Date: activate to sort column ascending" style="width: 96px;">Start Date</th><th width="10%" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="End Date: activate to sort column ascending" style="width: 96px;">End Date</th><th width="5%" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Edit: activate to sort column ascending" style="width: 37px;">Edit</th><th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Announce Exam: activate to sort column ascending" style="width: 214px;">Announce Exam</th></tr>
							</thead>
							
						<tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd">
										<td class=" sorting_1">1</td>
										<td class=" sorting_2">First Exam
										
										</td>
										<td class=" ">Aptitude Test</td>
										<td class=" ">23-Apr-2012</td>
										<td class=" ">30-Apr-2012</td>
										<td class=" "><a href="http://www. .com/a/schdultestlist.do?operation=LIST#" onclick="edit(&#39;3220&#39;,&#39;T2199&#39;);">
												<img src="./exams_SceduledExam_files/edit.png" title="Edit">	</a></td>										
										<td class=" ">										
										
										
											Completed
										
										</td>
									</tr></tbody></table><div class="dataTables_info" id="example_info">Showing 1 to 1 of 1 entries</div><div class="dataTables_paginate paging_two_button" id="example_paginate"><a class="paginate_disabled_previous" tabindex="0" role="button" id="example_previous" aria-controls="example"></a><a class="paginate_disabled_next" tabindex="0" role="button" id="example_next" aria-controls="example"></a></div></div>
					
				</form>
				
				<form name="SendMailForm" method="post" action="http://www. .com/a/sendmail.do">
					<input type="hidden" name="testdId" value="">
					<input type="hidden" name="operation" value="">
					<input type="hidden" name="startPage" value="1">
				</form>
			</div></div>
		<script>
			function dopage() {
				document.forms["ScheduleTestForm"].operation.value = "LIST";				
				document.forms["ScheduleTestForm"].submit();
			}
			function edit(examID, testID) {
				document.forms["ScheduleTestForm"].operation.value = "VIEW";	
				document.forms["ScheduleTestForm"].testId.value = testID;
				document.forms["ScheduleTestForm"].examID.value = examID;	
				document.forms["ScheduleTestForm"].action = "ScheduleTest.do";
				document.forms["ScheduleTestForm"].submit();
			}
			function announce(testid) {
				var frm = document.forms["SendMailForm"];
				frm.operation.value = "edit";
				frm.testdId.value = testid
				frm.submit();
			}
			
		</script>
<img height="1" width="1" src="./exams_SceduledExam_files/hit.php">		



</div><button class="feedback-btn feedback-bottom-right" data-html2canvas-ignore="true">Send Feedback</button></body></html>