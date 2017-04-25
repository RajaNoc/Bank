<!DOCTYPE html>

<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>ST Exam</title>


<link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">

        
<script>
function deleteTemplate(id){
	document.getElementById("id").value = id;
	document.getElementById("operation").value = "DELETE";
	if(confirm('Are you sure you want to delete the Certificate Template?'))
		document.forms["CertificateTemplateForm"].submit();
}
function getPreview(id){
	window.open("previewcert.do?eid="+id, "Preview Certificate", "width=700px, height=600px,scrollbars=yes, center:yes");
}
</script>
</head>
<body>
	
	<div id="wrapper">
	
			
<div id="header">
 <h1><a href="#"><img src=".\images\logo.png" alt="ST Exam"></a></h1>
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
					<li><a  class="active">Listing</a></li>
			    	<li><a href="">Add New</a></li> 
				</ul>
				<div class="sidebar_note">
					<p class="message note">Manage your Certificate templates.</p>
					<p class="message note">In the Certificate template tokens enclosed with $$ will get replaced with real values when Certificate is generated.</p>
				</div>
			</div>
			<div id="main">
				<h3>Certificate Templates</h3>
				<hr>
				
				
					<div id="example_wrapper" class="dataTables_wrapper" role="grid"><div id="example_length" class="dataTables_length"><label>Show <select size="1" name="example_length" aria-controls="example"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div class="dataTables_filter" id="example_filter"><label>Search: <input type="text" aria-controls="example"></label></div><table class="display dataTable" id="example" aria-describedby="example_info">
						<thead>
							<tr role="row"><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Certificate Name: activate to sort column descending" style="width: 719px;">Certificate Name</th><th scope="col" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Edit: activate to sort column ascending" style="width: 299px;">Edit</th></tr>
						</thead>
						
							<tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd">
								<td class=" sorting_1">Certificate of Achievement</td>
								<td class=" sorting_2">
									<a href="">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2158);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227644.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="even">
								<td class=" sorting_1">Certificate of Appreciation</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2164">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2164);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227881.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="odd">
								<td class=" sorting_1">Certificate of Completion</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2160">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2160);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227777.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="even">
								<td class=" sorting_1">Certificate of Completion 2</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2163">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2163);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227853.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="odd">
								<td class=" sorting_1">Certificate of Excellence</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2159">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2159);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227722.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="even">
								<td class=" sorting_1">Certificate of Participation</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2162">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2162);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227845.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr><tr class="odd">
								<td class=" sorting_1">Certificate of Training</td>
								<td class=" sorting_2">
									<a href="http://www. .com/a/newcertificatetemplate.do?eid=2161">
									<img src="./Certificate_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
									<a href="javaScript:deleteTemplate(2161);">
									<img src="./Certificate_files/delete.png" title="Delete"></a>&nbsp;&nbsp;
									
									
									<a target="kpdf" title="Preview PDF" href="http://www. .com/a/certpdfs/1408013227818.pdf"><img src="./Certificate_files/pdf.png"></a>
									
								</td>
							</tr></tbody></table><div class="dataTables_info" id="example_info">Showing 1 to 7 of 7 entries</div><div class="dataTables_paginate paging_two_button" id="example_paginate"><a class="paginate_disabled_previous" tabindex="0" role="button" id="example_previous" aria-controls="example"></a><a class="paginate_disabled_next" tabindex="0" role="button" id="example_next" aria-controls="example"></a></div></div>
					<form name="CertificateTemplateForm" method="post" action="./Certificate_files/Certificate.html">
						<input type="hidden" name="id" value="0" id="id">
						<input type="hidden" name="operation" value="" id="operation">
					</form>
				
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
						{ "sType": 'string-case', "aTargets": [ 0 ] }
					]
				} );

				  Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
			} );
		</script>

<!-- PAGE TIMING STATISTICS :  REQUEST TIMESTAMP | 2014-08-14_03.47.07 PROCESSING TIME | 2 ms  -->		

</body></html>