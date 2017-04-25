<!DOCTYPE html>
<!-- saved from url=(0035)http://www. .com/a/loadtest.do -->
<html lang="en" class="win chrome chrome2 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Given Exams -   Online Exam to Evaluate Knowledge</title>

<link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">       
<script type="text/javascript" src="./Given Exams -   Online Exam to Evaluate Knowledge_files/UserHome.js"></script>
<script type="text/javascript">
	function setiframe(resultid) {
		var str = "<iframe height='500' width='730' src='' name='report' id='testiframe' style='min-height: 410px;border:2px;border-color: orange;border-style: solid;height:auto;'></iframe>";
		document.getElementById("iframe").innerHTML = str;
		document.getElementById("testiframe").src = "detailresult.do?resultid="
				+ resultid;
	}
</script>

</head>
<body>
	<div id="wrapper">
		<div id="header">
   <h1><a href="#"><img src="./images/logo.png" alt="stexams"></a></h1>	<ul id="nav">
			<li>
				 
				
			</li>
			<li><a href="http://www. .com/a/logout.do" title="Logout">Logout</a></li>
		</ul>
</div>
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
<li><a href="./scheduledExam1.html" class="active">Scheduled Exams</a></li>
					<li><a href="./givenExam.htm">Given Exams</a></li>
					<li><a href="./myProfile.htm">My Profile</a></li>
					<li><a href="./changePassword.htm">Change Password</a></li>
				</ul>
				<div class="sidebar_note message note"><p>All attempted exam details.</p></div>
			</div>
			<div id="main">
				<div id="test">
					<h3>Given Exams Details</h3>
						<hr>
						
						<div id="giventestdetails_wrapper" class="dataTables_wrapper" role="grid"><div id="giventestdetails_length" class="dataTables_length"><label>Show <select size="1" name="giventestdetails_length" aria-controls="giventestdetails"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div class="dataTables_filter" id="giventestdetails_filter"><label>Search: <input type="text" aria-controls="giventestdetails"></label></div><table id="giventestdetails" class="display dataTable" aria-describedby="giventestdetails_info">
							<thead>
								<tr role="row"><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="giventestdetails" rowspan="1" colspan="1" style="width: 173px;" aria-sort="ascending" aria-label="SR. No: activate to sort column descending">SR. No</th><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="giventestdetails" rowspan="1" colspan="1" style="width: 300px;" aria-label="Exams Name: activate to sort column ascending">Exams Name</th><th scope="col" class="sorting" role="columnheader" tabindex="0" aria-controls="giventestdetails" rowspan="1" colspan="1" style="width: 244px;" aria-label="Start Date: activate to sort column ascending">Start Date</th><th scope="col" class="sorting" role="columnheader" tabindex="0" aria-controls="giventestdetails" rowspan="1" colspan="1" style="width: 221px;" aria-label="End Date: activate to sort column ascending">End Date</th><th scope="col" class="sorting" role="columnheader" tabindex="0" aria-controls="giventestdetails" rowspan="1" colspan="1" style="width: 37px;" aria-label=": activate to sort column ascending"></th></tr>
							</thead>
														
								
							
						<tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="5" class="dataTables_empty">No data available in table</td></tr></tbody></table><div class="dataTables_info" id="giventestdetails_info">Showing 0 to 0 of 0 entries</div><div class="dataTables_paginate paging_two_button" id="giventestdetails_paginate"><a class="paginate_disabled_previous" tabindex="0" role="button" id="giventestdetails_previous" aria-controls="giventestdetails"></a><a class="paginate_disabled_next" tabindex="0" role="button" id="giventestdetails_next" aria-controls="giventestdetails"></a></div></div>
					
					<div id="test_details">
						
					</div>
					
								
								
								
					<center>
						<div id="iframe"></div>
					</center>
				</div>
			</div>
		</div>
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
			/* Build the DataTable with third column using our custom sort functions */
			$('#giventestdetails').dataTable( {
				"sLengthMenu":'10',
				"aaSorting": [ [0,'asc'], [1,'asc'] ],
				"aoColumnDefs": [
					{ "sType": 'string-case', "aTargets": [ 2 ] }
				]
			} );	

			Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });			
		} );
	</script>


</body></html>