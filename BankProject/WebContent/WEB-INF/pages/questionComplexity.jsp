<!DOCTYPE html>
<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>St Exam-Question Complexity</title>

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
		<!-- header end here -->
		<!-- CONTENT -->
			<div id="content">
				<div id="sidebar">
					<ul class="sidebar_nav">
						<ul class="sidebar_nav">
						<li><a href=".\question.html" class="active">Questions</a></li>		
						<li><a href=".\questionCategory.html">Question Category</a></li>
						<li><a href=".\question.loadCategoryDynamic">Question Sub-Category</a></li>
						<li><a href=".\questionComplexity.html">Complexity</a></li>
						<li><a href=".\importQuestion.html">Import Questions</a></li> 
					</ul>
					<div class="sidebar_note message note"><p>Arrange questions into categories, sub-categories and their complexities. makes it easy to group and find questions.</p>
				<p>Question paper can contain combination of questions from different categories and complexities giving you an ability to design much simpler to most complex exams you like.</p>
				</div>
				</div>
			<div id="main">
				<h3>Complexity</h3>
					<hr>
				
				
					<div class="table_top"><input type="button" value="Add Complexity" class="btn_green_sml" onclick="showDialog();"></div>
					<div id="dialog"></div>
					<div id="example_wrapper" class="dataTables_wrapper" role="grid"><div id="example_length" class="dataTables_length"><label>Show <select size="1" name="example_length" aria-controls="example"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div class="dataTables_filter" id="example_filter"><label>Search: <input type="text" aria-controls="example"></label></div><table class="display dataTable" id="example" aria-describedby="example_info">
						<thead>
							<tr role="row"><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Complexity: activate to sort column descending" style="width: 921px;">Complexity</th><th scope="col" align="center" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Options: activate to sort column ascending" style="width: 97px;">Options</th></tr>
						</thead>
						
							<tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd">

								<td width="80%" class=" sorting_1">Beginners &nbsp;
								
									
										&nbsp;<span class="highlight">(29 questions)</span>
									
								
								</td>

								<td width="10%" align="center" class=" sorting_2"><a href="http://www. .com/a/Level.do#" onclick="showEditDialog(4585,&#39;Beginners &#39;);">
										<img src="./QuestionComplexity_files/edit.png" title="Edit">
								</a>&nbsp;<a href="http://www. .com/a/Level.do#" class="basicDelete" onclick="return doLevelDelete(4585);"> <img src="./QuestionComplexity_files/delete.png" title="Delete">
								</a></td>
							</tr><tr class="even">

								<td width="80%" class=" sorting_1">Expert&nbsp;
								
									
								
								</td>

								<td width="10%" align="center" class=" sorting_2"><a href="http://www. .com/a/Level.do#" onclick="showEditDialog(4587,&#39;Expert&#39;);">
										<img src="./QuestionComplexity_files/edit.png" title="Edit">
								</a>&nbsp;<a href="http://www. .com/a/Level.do#" class="basicDelete" onclick="return doLevelDelete(4587);"> <img src="./QuestionComplexity_files/delete.png" title="Delete">
								</a></td>
							</tr><tr class="odd">

								<td width="80%" class=" sorting_1">Intermediate&nbsp;
								
									
								
								</td>

								<td width="10%" align="center" class=" sorting_2"><a href="http://www. .com/a/Level.do#" onclick="showEditDialog(4586,&#39;Intermediate&#39;);">
										<img src="./QuestionComplexity_files/edit.png" title="Edit">
								</a>&nbsp;<a href="http://www. .com/a/Level.do#" class="basicDelete" onclick="return doLevelDelete(4586);"> <img src="./QuestionComplexity_files/delete.png" title="Delete">
								</a></td>
							</tr></tbody></table><div class="dataTables_info" id="example_info">Showing 1 to 3 of 3 entries</div><div class="dataTables_paginate paging_two_button" id="example_paginate"><a class="paginate_disabled_previous" tabindex="0" role="button" id="example_previous" aria-controls="example"></a><a class="paginate_disabled_next" tabindex="0" role="button" id="example_next" aria-controls="example"></a></div></div>
					
					<div id="basic-modal-content">
						<div align="center">
							<table>
								
									<form name="LevelForm" method="post" action="./QuestionComplexity_files/QuestionComplexity.html" accept-charset="utf-8"></form>
										<input type="hidden" name="operation" value="">
										<tbody><tr>
											<td><input type="hidden" name="levelid" value="0"></td>
										</tr>
										<tr>
											<td>Complexity:</td>
											<td><input type="text" name="level" size="30" value="" id="levelName">
											</td>
											<td><input type="hidden" name="startPage" value="1"></td>
										</tr>
										<tr>
											<td colspan="2" align="right">
													<input type="submit" value="Save" onclick="doSubmit();return false;">
											</td>
										</tr>
									
								
							</tbody></table>
						</div>
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
				$('#example').dataTable( {
					"aaSorting": [ [0,'asc'], [1,'asc'] ],
					"aoColumnDefs": [
						{ "sType": 'string-case', "aTargets": [ 1 ] }
					]
				} );

				Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
			} );
	</script>


 </body></html>