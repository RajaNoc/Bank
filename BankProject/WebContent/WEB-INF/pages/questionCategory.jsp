<!DOCTYPE html>
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




<script type="text/javascript" charset="utf-8">
function savesubject() {	
	var sub=document.getElementById("subName").value;

	if(sub==""){
			alert('Enter category name!');
			return false;
	}else if(sub[0]==" "){
			alert('Do not enter space at beginning!');
			return false;
	}else {
		$.post("Subject.do", {
			check : "checksubject",
			subname : sub
		},
				function(data) {
					if (data == 'Found') {
						alert('Category already exists');
					} else {
						var frm=document.forms[1];
						//frm.operation.value="add";
						frm.subjectName.value=sub;			
						frm.topicRedirect.value=false;
						frm.submit();
					}
				});
	}
}
function dopage(page,op){
    
    
    	document.forms[1].operation.value ="LIST";
    	document.forms[1].startPage.value = page;
    	document.forms[1].submit();
    
}
function doSubmit(){
	var frm=document.forms[1];
	frm.submit();
}

function doSubjectAdd(){	
	document.getElementById("subName").value="";	
}
function charsonly(e){
	var unicode=e.charCode? e.charCode : e.keyCode
	if (unicode!=8 && unicode!=43 && unicode!=35 && unicode!=32 && unicode!=37 && unicode!=38 && unicode!=39 && unicode!=40 &&  unicode!=127 && unicode!=46 && (unicode<65||unicode>90) && (unicode<97 || unicode>122)){ //if the key isn't the backspace key (which we should allow)
		return false // disable key press
	}
}
function showDialog(opr) {
		var frm=document.forms[0];
		frm.operation.value=opr;
		document.getElementById("dialog").style.display='';
		document.getElementById("add_category").style.display= 'none';
}

function cancelAddOpr(){
	var frm=document.forms[0];
	frm.operation.value="";
	document.getElementById("dialog").style.display='none';
	document.getElementById("add_category").style.display= '';
}

function addCategory(){
	showDialog('add');
	var frm=document.forms[0];
	var frm1=document.forms[1];
	frm1.operation.value="add";
	frm.subjectName.value="";
	
}

function showEditDialog(subid,subName) {
	showDialog('edit');
	var frm=document.forms[0];
	var frm1=document.forms[1];
	frm.subjectName.value=subName;
	//frm.operation.value="edit";
	
	frm.subjectId.value=subid;
	
	frm1.subjectId.value=subid;
	frm1.operation.value="edit";
	
	/*$(document).ready(function() {
		$("#editdialog").dialog({ autoOpen: true, height: 'auto', width: 'auto', modal: true, closeOnEscape:false });
	    $("#editdialog").dialog('option', 'title', "Question Category");
		$("#editdialog").dialog('option', 'show', 'drop');
	    $("#editdialog").dialog('option', 'resizable', true)
		$("#editdialog").dialog('open');
	} );*/
}

	
	
	
function doSubjectDelete(subid,subName,formno)	{
		document.getElementById("subName").value=subName;
		if(formno== "1"){
		var frm1=document.forms[1];
		frm1.subjectId.value=subid;
		frm1.operation.value="delete";
		if(confirm('Do you want to delete this Question Category?')){
			doSubmit();
		}}
		else{
			//alert("wrong form");
			if(formno== "2"){
		var frm2=document.forms[2];
		frm2.subjectId.value=subid;
		frm2.operation.value="delete";
		if(confirm('Do you want to delete this Question Category?')){
			doSubmit();
			}}
	}}

function editsubject()	{
	var sub=document.getElementById("newsubjectname").value;
	if(sub==""){
		alert('Category can not be blank!');
		return false;
	}else if(sub==" "){
		alert('Do not enter space at beginning!');
		return false;
	}else {
		$.post("Subject.do", {
			check : "checksubject",
			subname : sub
		},
			function(data) {
				if (data == 'Found') {
					alert('Category already exists');
				} else {
					var frm=document.forms[1];		
					frm.operation.value="edit";
					frm.submit();
				}
			});
	}
}	

function submitSearch(){
	var keyword = document.getElementById("searchtext").value;
	var frm = document.forms[2];
	frm.searchKeyword.value = keyword;
	frm.submit();
}
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
			<!-- nav end -->

		</div>
		<!-- header end -->

		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li><a href=".\question.html" class="active">Questions</a></li>
					<li><a href=".\questionCategory.html">Question Category</a></li>
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
			<!--RIGHT SECTION ENDS HERE-->
			<div id="main">
				<h3>Question Category</h3>
				<hr>



				<!-- <div align="center" style="width: 50%; padding: 10px;">
					<div id="dialog" style="display: none;">
						<form name="SubjectForm" method="post"
							action="./QuestionCategory_files/QuestionCategory.html">


							<input type="hidden" name="operation" value=""> <input
								type="hidden" name="topicRedirect" value="false"> <input
								type="hidden" name="subjectId" value="0"> <input
								type="hidden" name="startPage" value="1">
							<table width="100%" style="border: 1px solid;">
								<tbody>
									<tr>
										<th class="boxtitle">Add Category</th>
									</tr>
									<tr>
										<td style="border: 0; height: 15px;">&nbsp;</td>
									</tr>
									<tr>
										<td style="border: 0;">Category: <input type="text"
											name="subjectName" size="30" value="" id="subName">
										</td>
									</tr>
									<tr>
										<td align="right" style="border: 0"><input type="button"
											onclick="" value="Cancel" class="btn_green">&nbsp; <input
											type="button" onclick=" value=" Save" class="btn_green">
										</td>
									</tr>
								</tbody>
							</table>

						</form>
					</div>
				</div> -->

				<div class="table_top">
					<input id="say_it" type="button" value="Add New Category"
						class="btn_green_sml" onclick="showDialog();">
				</div>
				<br>
				<br>
				<br>

				<div id="hello" title="Add New Category"
					style="background-color: highlight;">
					<form action="question.addCategory">

						Name: <input type="text" name="categoryname"><br> <br>
						<input type="submit" value="SAVE" class="btn_green_sml">

					</form>
				</div>


				<table class="display" id="example">
					<thead>
						<tr>
							<th scope="col">Question Category</th>
							<th scope="col" align="center">Options</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>Aptitude Questions (29 questions)</td>
							<td width="10%" align="center"><a
								href="http://www. .com/a/Subject.do#" onclick="#"> <img
									src="./QuestionCategory_files/edit.png" title="Edit">
							</a>&nbsp;<a href="#" class="basicDelete" onclick=""> <img
									src="./QuestionCategory_files/delete.png" title="Delete">
							</a></td>
						</tr>

					</tbody>
				</table>


				<div id="editdialog" style="display: none;">
					<form name="SubjectForm" method="post"
						action="./QuestionCategory_files/QuestionCategory.html">
						<input type="hidden" name="startPage" value="1"> <input
							type="hidden" name="operation" value=""> <input
							type="hidden" name="topicRedirect" value="false"> <input
							type="hidden" name="subjectId" value="0">

						<p>
							Category: <input type="text" name="subjectName" size="30"
								value="" id="newsubjectname">
						</p>
						<p style="text-align: right;">
							<input type="button" onclick="#" value= "Save" class="btn_green">
						</p>


					</form>
				</div>

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

	<form name="SubjectForm" method="post"
		action="./QuestionCategory_files/QuestionCategory.html">
		<input type="hidden" name="searchKeyword" value="">
	</form>
	<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });			
	} );
</script>


</body>
</html>