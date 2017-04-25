<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="win chrome chrome3 webkit webkit5">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>St Exam-Question Category</title>

<!-- <link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">
 -->
<link href="css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css"
	media="screen">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

<script>

$(document).ready(function(){
$( "#hello" ).dialog({ autoOpen: false });
$( "#say_it" ).click(function() {
$( "#hello" ).dialog( "open" );
});
});

</script>


<script>
function addSubCategory(){
	showDialog('add');
	var frm=document.forms[0];
	//var frm1=document.forms[1];
	frm.operation.value="add";
	frm.topicName.value="";
	document.getElementById("category").style.display = '';
}
function showDialog(opr) {	
	var frm=document.forms[0];
	frm.operation.value=opr;
	document.getElementById("dialog").style.display='';
	document.getElementById("add_subcategory").style.display='none';
	
}
function cancelAddOpr(){
	var frm=document.forms[0];
	frm.operation.value="";
	document.getElementById("dialog").style.display='none';
	document.getElementById("add_subcategory").style.display='';
}
function submitSearch(){
	var keyword = document.getElementById("searchtext").value;
	var frm = document.forms[0];
	frm.searchKeyword.value = keyword;
	frm.operation.value="search";
	frm.submit();
}
$(document).ready(function() { 
	$("#subjectname").select2({
		placeholder: "",
		allowClear: true
	});
});
</script>
</head>
<body>



	<div id="wrapper">

		<div id="header">
			<h1>
				<a href="#"><img src=".\images\logo.png" alt="ST Exam"></a>
			</h1>

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

				<li><a href=".\settings.html" id="usersId">Settings </a></li>
				<li><a href=".\results.html" id="reportsId">Results</a></li>
			</ul>

		</div>
		<!-- header end -->
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<ul class="sidebar_nav">
						<li><a href=".\question.html" class="active">Questions</a></li>
						<li><a href=".\questionCategory.html">Question Category</a></li>
						<!-- <li><a href=".\questionSubCategory.html">Question
								Sub-Category</a></li> -->
						<li><a href=".\question.loadCategoryDynamic">Question
								Sub-Category</a></li>
						<li><a href=".\questionComplexity.html">Complexity</a></li>
						<li><a href=".\importQuestion.html">Import Questions</a></li>
					</ul>
					<div class="sidebar_note message note">
						<p>Arrange questions into categories, sub-categories and their
							complexities. makes it easy to group and find questions.</p>
						<p>Question paper can contain combination of questions from
							different categories and complexities giving you an ability to
							design much simpler to most complex exams you like.</p>
					</div>
			</div>
			<div id="main">
				<h3>Question Sub-Category</h3>
				<hr>



				<!-- <div align="center" style="width:50%;padding: 10px;">
				<div id="dialog" style="display: none;">
					
						
						
							
								<table width="100%" style="border: 1px solid;">
									<tbody><tr>
										<th class="boxtitle">
											Add Sub Category
										</th>										
									</tr>
									<tr>
										<td style="border:0;height: 15px;">
										&nbsp;
										</td>
									</tr>
									<tr>
										<td style="border:0;">
											<p id="category">
												
													<label>Category:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="select2-container" id="s2id_subjectname" style="width: 367px">    <a href="javascript:void(0)" onclick="return false;" class="select2-choice">   <span>Aptitude Questions</span>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" autocomplete="off" class="select2-input" tabindex="0">   </div>   <ul class="select2-results">   </ul></div></div><select id="subjectname" style="width: 367px; display: none;">
														
															<option value="5136">Aptitude Questions</option>
														
													</select>
												
												</p><p>
													<label>Sub Category:</label>
													<input type="text" size="30" id="topicname" onkeypress="return charsonly(event)">
												</p>
											<p></p>
										</td>
									</tr>
									<tr>
										<td style="border:0;height: 15px;">
											
											<p style="text-align: right;">
												<input type="button" onclick="#cancelAddOpr();" value="Cancel" class="btn_green">&nbsp;
												<input type="button" value="Save" onclick="#saveTopic();" class="btn_green">
											</p>
										</td>
									</tr>
								</tbody></table>
						
					
				</div>
			</div> -->


				<!-- <div class="table_top" style="position: relative;">
					<input type="button" id="add_subcategory" value="Add Sub Category" class="btn_green_sml" onclick="#addSubCategory();">
						
					<div style="float: right; margin: 0 0 0 10px;">
							<input type="text" id="searchtext" name="searchtext" size="100" style="width:200px;important!">
							<button type="submit" class="btn_green_sml" onclick="#submitSearch();">Search</button>
					</div> 
				</div> -->

				<div class="table_top">
					<input id="say_it" type="button" value="Add Sub Category"
						class="btn_green_sml" onclick="showDialog();">
				</div>
				<br> <br> <br> 
				<div id="hello" title="Add Sub Category"
					style="background-color: highlight;" width="100%">
					<form action="question.addSubCategory">
						 Category:
						<select id="subjectname" name="catName">
							<c:forEach items="${allCategories}" var="category">
								<option value="${category}">${category}</option>
							</c:forEach>
						</select> 
						<br> Sub Category: <input type="text" size="30"
							name="subCatName" onkeypress="return charsonly(event)"> <br>
						<input type="submit" value="SAVE" class="btn_green_sml">

						<!-- 						<table width="80%" style="border: 1px solid;">
							<tr>
								<td style="border: 0;"><label>Category:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td><select id="subjectname">

										<option value="5136">Aptitude Questions</option>

								</select></td>
							</tr>
							<tr>
								<td style="border: 0;"><label>Sub Category:</label></td>
								<td><input type="text" size="30" id="topicname"
									onkeypress="return charsonly(event)"></td>
							</tr>
						</table>
						<input type="submit" value="SAVE" class="btn_green_sml">
 -->

					</form>
				</div>


				<div id="q_bank" class="filterdiv" style="display: none;">

					<table align="center" width="400">
						<tbody>
							<tr>
								<td>Category:</td>
								<td><select id="subject" class="combo"
									onchange="return getTopic(&quot;&quot;);">
										<option value="0">Select Category</option>

										<option value="5136">Aptitude Questions</option>

								</select></td>

							</tr>
						</tbody>
					</table>

				</div>

				<form name="TopicForm" method="post"
					action="./QuestionSubCategory_files/QuestionSubCategory.html">
					<input type="hidden" name="searchKeyword" value="">
					<div id="dialog"></div>
					<table class="display" id="example">
						<thead>
							<tr>
								<th scope="col">Question Sub-category</th>
								<th scope="col">Question Category</th>
								<th scope="col" align="center">Options</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td width="40%">General Questions &nbsp;<span
									class="highlight">(29 questions) </span>

								</td>


								<td width="40%">Aptitude Questions</td>


								<td width="10%" align="center"><a
									href="http://www. .com/a/Topic.do#"
									onclick="#showEditDialog(2146,&#39;General Questions&#39;);">
										<img src="./QuestionSubCategory_files/edit.png" title="Edit">
								</a>&nbsp; <a href="http://www. .com/a/Topic.do#"
									class="basicDelete" onclick="#return doTopicDelete(2146);">
										<img src="./QuestionSubCategory_files/delete.png"
										title="Delete">
								</a></td>
							</tr>

						</tbody>
						<tfoot>
						</tfoot>
					</table>

					<script type="text/javascript">
							
						</script>

					<div id="basic-modal-content">
						<br>
						<div align="center">
							<table width="100%" id="box-table-a" style="padding-top: 20px;">

								<input type="hidden" id="caller" value="JSP">
								<input type="hidden" name="operation" value="">
								<input type="hidden" name="subjectId" value="0">
								<input type="hidden" name="topicId" value="0">
								<input type="hidden" name="questionRedirect" value="false">
								<tbody>
									<tr>
										<td>Sub Category:</td>
										<td><input type="text" name="topicName" size="30"
											value="" id="topicName"></td>
										<td><input type="hidden" name="startPage" value="1"></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="Save" onclick="#doSubmit();return false;"></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</form>

				<table style="width: 100%">
					<tbody>
						<tr>
							<td><font color="red">Total: 1</font></td>
							<td align="right">
								<!--  
					-->&nbsp;&nbsp;
















							</td>
						</tr>
					</tbody>
				</table>

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
		/* $('#example').dataTable( {
			"aaSorting": [ [0,'asc'], [1,'asc'] ],
			"aoColumnDefs": [
				{ "sType": 'string-case', "aTargets": [ 2 ] }
			]
		} ); */

		Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
	} ); 
</script>



	<div id="select2-drop-mask" class="select2-drop-mask"
		style="display: none;"></div>
</body>
</html>