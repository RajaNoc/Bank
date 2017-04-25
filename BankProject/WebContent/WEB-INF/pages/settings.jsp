<!DOCTYPE html>
<!-- saved from url=(0040)http://www. .com/a/emailtemplate.do -->
<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Email Templates -   The Knowledge Evaluator</title>
 <link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">
 
       
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
					
				</ul>
				<div class="sidebar_note">
					<p class="message note">Manage your email templates.</p>
					<p class="message note">In the message template tokens enclosed with $$ will get replaced with real values while sending email.</p>
				</div>
			</div>
			<div id="main">
				<h3>Email Templates</h3>
				<hr>
				
				
					<div id="dialog"></div>
					<div class="table_top">
						
					    

					</div>
					<div id="example_wrapper" class="dataTables_wrapper" role="grid"><div id="example_length" class="dataTables_length"><label>Show <select size="1" name="example_length" aria-controls="example"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div class="dataTables_filter" id="example_filter"><label>Search: <input type="text" aria-controls="example"></label></div><table class="display dataTable" id="example" aria-describedby="example_info">
						<thead>
							<tr role="row"><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Email Type: activate to sort column descending" style="width: 234px;">Email Type</th><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="From: activate to sort column ascending" style="width: 302px;">From</th><th scope="col" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Subject: activate to sort column ascending" style="width: 383px;">Subject</th><th scope="col" class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Edit: activate to sort column ascending" style="width: 76px;">Edit</th></tr>
						</thead>
						
							<tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd">
								<td class=" sorting_1">Candidate Exam Result</td>
								<td class=" sorting_2">  &lt;support@ .com&gt;</td>
								<td class=" ">[ ] Result: [ $$EXAMENAME$$ ] : </td>

								<td class=" ">
									<textarea id="txt_954" style="display:none;">										&lt;html&gt;
&lt;head&gt;&lt;/head&gt;
&lt;body&gt;
&lt;div style="width: 98%;font-family: verdana;font-size: 14px;"&gt;
&lt;div style="height: 60px;"&gt;
    &lt;h1 style="font-size: 16px;color: #000;"&gt;&lt;a href="http://www. .com/a/"&gt;&lt;img src="http://www. .com/a/images/logo-blue.png" alt="  Open Source Web-based online examination software" border="0"&gt;&lt;/a&gt;Online Examination Software&lt;/h1&gt;
&lt;/div&gt;
&lt;div style="width: 96%;float: left;display:block;padding: 15px 25px;background: white;"&gt;
&lt;p&gt;&lt;label&gt;Hello $$CANDIDATENAME$$,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  would like to inform you that you have finished the Exam.&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Your Exam Result is as below&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Exam Name:&lt;/b&gt;&amp;nbsp;$$EXAMENAME$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Total Questions:&lt;/b&gt;&amp;nbsp;$$TOTALQUESTIONS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Correct Answers:&lt;/b&gt;&amp;nbsp;$$CURRECTANSER$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Marks Obtained:&lt;/b&gt;&amp;nbsp;$$TOTALMARKS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Result:&lt;/b&gt;&amp;nbsp;$$RESULT$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Feel free to visit &lt;a href="http://www. .com/"&gt; our site&lt;/a&gt; for more detail&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Regards,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  Support Team&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Support: &lt;a href="http://help. .com/"&gt;Help&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Documentation: &lt;a href="http://help. .com/faq/"&gt;FAQ&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Phone: +1 (303) 500-8025 (USA) &lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Skype:  .Support&lt;/label&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
										&lt;div style="border-bottom: 1px solid #4D5B76;background: #6C7A95;position: relative;padding: 10px 0;font-size: 12px;color: white;bottom: 0;text-align: center;clear: both;"&gt;
&amp;copy; Copyright 2014&amp;nbsp;&lt;a href="http://www. .com" target="_blank" style="color: white;"&gt; .com&lt;/a&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
									</textarea>
									
									<a href="http://www. .com/a/newemailtemplate.do?eid=954">
									<img src="./Settings_files/edit.png" title="Edit"></a>
									<a href="javaScript:getPreview(954);"><img src="./Settings_files/view_choose.png" title="Preview"></a>
								</td>
							</tr><tr class="even">
								<td class=" sorting_1">Public Exam Result</td>
								<td class=" sorting_2">  &lt;support@ .com&gt;</td>
								<td class=" ">[ ] Result: [ $$EXAMENAME$$ ] : </td>

								<td class=" ">
									<textarea id="txt_953" style="display:none;">										&lt;html&gt;
&lt;head&gt;&lt;/head&gt;
&lt;body&gt;
&lt;div style="width: 98%;font-family: verdana;font-size: 14px;"&gt;
&lt;div style="height: 60px;"&gt;
    &lt;h1 style="font-size: 16px;color: #000;"&gt;&lt;a href="http://www. .com/a/"&gt;&lt;img src="http://www. .com/a/images/logo-blue.png" alt="  Open Source Web-based online examination software" border="0"&gt;&lt;/a&gt;Online Examination Software&lt;/h1&gt;
&lt;/div&gt;
&lt;div style="width: 96%;float: left;display:block;padding: 15px 25px;background: white;"&gt;
&lt;p&gt;&lt;label&gt;Hello $$CANDIDATENAME$$,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  would like to inform you that you have finished the Exam.&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Your Exam Result is as below&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Exam Name:&lt;/b&gt;&amp;nbsp;$$EXAMENAME$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Total Questions:&lt;/b&gt;&amp;nbsp;$$TOTALQUESTIONS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Correct Answers:&lt;/b&gt;&amp;nbsp;$$CURRECTANSER$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Result:&lt;/b&gt;&amp;nbsp;$$RESULT$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Feel free to visit &lt;a href="http://www. .com/"&gt; our site&lt;/a&gt; for more detail&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Regards,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  Support Team&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Support: &lt;a href="http://help. .com/"&gt;Help&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Documentation: &lt;a href="http://help. .com/faq/"&gt;FAQ&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Phone: +1 (303) 500-8025 (USA) &lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Skype:  .Support&lt;/label&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
										&lt;div style="border-bottom: 1px solid #4D5B76;background: #6C7A95;position: relative;padding: 10px 0;font-size: 12px;color: white;bottom: 0;text-align: center;clear: both;"&gt;
&amp;copy; Copyright 2014&amp;nbsp;&lt;a href="http://www. .com" target="_blank" style="color: white;"&gt; .com&lt;/a&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
									</textarea>
									
									<a href="http://www. .com/a/newemailtemplate.do?eid=953">
									<img src="./Settings_files/edit.png" title="Edit"></a>
									<a href="javaScript:getPreview(953);"><img src="./Settings_files/view_choose.png" title="Preview"></a>
								</td>
							</tr><tr class="odd">
								<td class=" sorting_1">Scheduled Exam</td>
								<td class=" sorting_2">  &lt;support@ .com&gt;</td>
								<td class=" ">Scheduled Exam at  </td>

								<td class=" ">
									<textarea id="txt_952" style="display:none;">										&lt;html&gt;
&lt;head&gt;&lt;/head&gt;
&lt;body&gt;
&lt;div style="width: 98%;font-family: verdana;font-size: 14px;"&gt;
&lt;div style="height: 60px;"&gt;
    &lt;h1 style="font-size: 16px;color: #000;"&gt;&lt;a href="http://www. .com/a/"&gt;&lt;img src="http://www. .com/a/images/logo-blue.png" alt="  Open Source Web-based online examination software" border="0"&gt;&lt;/a&gt;Online Examination Software&lt;/h1&gt;
&lt;/div&gt;
&lt;div style="width: 96%;float: left;display:block;padding: 15px 25px;background: white;"&gt;
&lt;p&gt;&lt;label&gt;Hello Candidate,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  would like to inform you that there is exam scheduled for you&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Your Scheduled Exam Information is as below&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Exam Name:&lt;/b&gt;&amp;nbsp;$$EXAMENAME$$ (login $$URL$$  to give the Exam)&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Start Date:&lt;/b&gt;&amp;nbsp;$$STARTDATE$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;End Date:&lt;/b&gt;&amp;nbsp;$$ENDDATE$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Email:&lt;/b&gt;&amp;nbsp;$$USERNAME$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Password:&lt;/b&gt;&amp;nbsp;$$PASSWORD$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Additional Comments:&lt;/b&gt;&amp;nbsp;$$COMMENTS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Feel free to visit &lt;a href="http://www. .com/"&gt; our site&lt;/a&gt; for more detail&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Regards,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  Support Team&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Support: &lt;a href="http://help. .com/"&gt;Help&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Documentation: &lt;a href="http://help. .com/faq/"&gt;FAQ&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Phone: +1 (303) 500-8025 (USA) &lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Skype:  .Support&lt;/label&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
										&lt;div style="border-bottom: 1px solid #4D5B76;background: #6C7A95;position: relative;padding: 10px 0;font-size: 12px;color: white;bottom: 0;text-align: center;clear: both;"&gt;
&amp;copy; Copyright 2014&amp;nbsp;&lt;a href="http://www. .com" target="_blank" style="color: white;"&gt; .com&lt;/a&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
									</textarea>
									
									<a href="http://www. .com/a/newemailtemplate.do?eid=952">
									<img src="./Settings_files/edit.png" title="Edit"></a>
									<a href="javaScript:getPreview(952);"><img src="./Settings_files/view_choose.png" title="Preview"></a>
								</td>
							</tr><tr class="even">
								<td class=" sorting_1">Test Result</td>
								<td class=" sorting_2">  &lt;support@ .com&gt;</td>
								<td class=" ">[ ] Result: [ $$EXAMENAME$$ ] : </td>

								<td class=" ">
									<textarea id="txt_951" style="display:none;">										&lt;html&gt;
&lt;head&gt;&lt;/head&gt;
&lt;body&gt;
&lt;div style="width: 98%;font-family: verdana;font-size: 14px;"&gt;
&lt;div style="height: 60px;"&gt;
    &lt;h1 style="font-size: 16px;color: #000;"&gt;&lt;a href="http://www. .com/a/"&gt;&lt;img src="http://www. .com/a/images/logo-blue.png" alt="  Open Source Web-based online examination software" border="0"&gt;&lt;/a&gt;Online Examination Software&lt;/h1&gt;
&lt;/div&gt;
&lt;div style="width: 96%;float: left;display:block;padding: 15px 25px;background: white;"&gt;
&lt;p&gt;&lt;label&gt;Hello $$USERFULLNAME$$,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  would like to inform you that candidate has finished the scheduled Exam. Below is the exam result.&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Your Exam Information is as below&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Candidate Name:&lt;/b&gt;&amp;nbsp;$$CANDIDATENAME$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Candidate Email:&lt;/b&gt;&amp;nbsp;$$CANDIDATEEMAIL$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Exam Name:&lt;/b&gt;&amp;nbsp;$$EXAMENAME$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Total Questions:&lt;/b&gt;&amp;nbsp;$$TOTALQUESTIONS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Correct Answers:&lt;/b&gt;&amp;nbsp;$$CURRECTANSER$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Marks Obtained:&lt;/b&gt;&amp;nbsp;$$TOTALMARKS$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&lt;b&gt;Result:&lt;/b&gt;&amp;nbsp;$$RESULT$$&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Feel free to visit &lt;a href="http://www. .com/"&gt; our site&lt;/a&gt; for more detail&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;&amp;nbsp;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Regards,&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;  Support Team&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Support: &lt;a href="http://help. .com/"&gt;Help&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Documentation: &lt;a href="http://help. .com/faq/"&gt;FAQ&lt;/a&gt;&lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Phone: +1 (303) 500-8025 (USA) &lt;/label&gt;&lt;/p&gt;
&lt;p&gt;&lt;label&gt;Skype:  .Support&lt;/label&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;/div&gt;
										&lt;div style="border-bottom: 1px solid #4D5B76;background: #6C7A95;position: relative;padding: 10px 0;font-size: 12px;color: white;bottom: 0;text-align: center;clear: both;"&gt;
&amp;copy; Copyright 2014&amp;nbsp;&lt;a href="http://www. .com" target="_blank" style="color: white;"&gt; .com&lt;/a&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
									</textarea>
									
									<a href="http://www. .com/a/newemailtemplate.do?eid=951">
									<img src="./Settings_files/edit.png" title="Edit"></a>
									<a href="javaScript:getPreview(951);"><img src="./Settings_files/view_choose.png" title="Preview"></a>
								</td>
							</tr></tbody></table><div class="dataTables_info" id="example_info">Showing 1 to 4 of 4 entries</div><div class="dataTables_paginate paging_two_button" id="example_paginate"><a class="paginate_disabled_previous" tabindex="0" role="button" id="example_previous" aria-controls="example"></a><a class="paginate_disabled_next" tabindex="0" role="button" id="example_next" aria-controls="example"></a></div></div>
				
			</div>
		</div>
		<iframe class="privew" id="preview" style="position: absolute; top: 170px; right: 150px; height: 300px; display: none; border: 1px solid #AAA; background-color: #FFF; border-radius: 5px; width: 750px;"></iframe>
	</div>
	<script type="text/javascript" charset="utf-8">

			/* Define two custom functions (asc and desc) for string sorting */
			jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
				return ((x < y) ? -1 : ((x > y) ?  1 : 0));
			};
			
			jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
				return ((x < y) ?  1 : ((x > y) ? -1 : 0));
			};
			
			$(document).ready(function() {
				$(document).click(function(e){
					$(".privew").hide();	
				})
				
				/* Build the DataTable with third column using our custom sort functions */
				$('#example').dataTable( {
					"aaSorting": [ [0,'asc'], [1,'asc'] ],
					"aoColumnDefs": [
						{ "sType": 'string-case', "aTargets": [ 2 ] }
					]
				} );

				  Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
			} );
			getPreview = function(id) {
				//$(".privew").hide();
				//var offset = $('#txt_' + id).position();
				//alert(offset.top);
				//$('#preview').css({"top":offset.top});
				$('#preview').contents().find('body').html($('#txt_' + id).val());
				$('#preview').show();
			}
		</script>

<!-- PAGE TIMING STATISTICS :  REQUEST TIMESTAMP | 2014-08-14_03.51.39 PROCESSING TIME | 2 ms  -->		
</body></html>