<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="win chrome chrome3 webkit webkit5">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>St Exam-Question List</title>

<!-- <link rel="stylesheet" href=".\css\style_blue.css" type="text/css"
	media="screen"> -->

<link href="css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css"
	media="screen">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">


<script type="text/javascript">
$(document).ready(function() { 
	$("#subject").select2({
		placeholder: "",
		allowClear: true
	});
	
	$("#topicList").select2({
		placeholder: "",
		allowClear: true
	});
});

var contextpath = '/a';
var complexity = 'null';
var subId = 'null';
var topicId = 'null';


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
				<h3>Questions</h3>
				<hr>



				<form name="QuestionForm" method="post"
					action="http://www. .com/a/callshowQuestion.do">
					<input type="hidden" name="startPage" value="1"> <input
						type="hidden" name="operation" value=""> <input
						type="hidden" name="question" value=""> <input
						type="hidden" name="optionA" value=""> <input
						type="hidden" name="optionB" value=""> <input
						type="hidden" name="optionC" value=""> <input
						type="hidden" name="optionD" value=""> <input
						type="hidden" name="optionE" value=""> <input
						type="hidden" name="optionF" value=""> <input
						type="hidden" name="optionG" value=""> <input
						type="hidden" name="answer" value=""> <input type="hidden"
						name="levelid" value="0"> <input type="hidden"
						name="questionid" value="0"> <input type="hidden"
						name="showAsMCQ" value="0"> <input type="hidden"
						name="questionHint" value=""> <input type="hidden"
						name="selectedsubjectid" value="" id="selectedsubjectid">
					<input type="hidden" name="selectedtopicid" value=""
						id="selectedtopicid"> <input type="hidden"
						name="selectedcomplexity" value="" id="selectedcomplexity">
					<div id="q_bank" class="filterdiv" style="padding: 10px 0;">

						<div class="table_top" style="margin-top: -21px;important!;">

							<div style="float: left">
								<div class="select2-container" id="s2id_subject"
									style="width: 200px">
									<a href="javascript:void(0)" onclick="return false;"
										class="select2-choice"> <span>All Categories</span>
										<div>
											<b></b>
										</div></a>
									<div class="select2-drop select2-offscreen">
										<div class="select2-search">
											<input type="text" autocomplete="off" class="select2-input"
												tabindex="0">
										</div>
										<ul class="select2-results">
										</ul>
									</div>
								</div>
								<select name="subjectId" onchange="getQuestionsByCategory();"
									id="subject" style="width: 200px; display: none;"><option
										value="0">All Categories</option>

									<option value="5136">Aptitude Questions</option></select>

							</div>
							<div style="float: left; margin: 0 0 0 10px;">

								<div class="select2-container" id="s2id_topicList"
									style="width: 200px">
									<a href="javascript:void(0)" onclick="return false;"
										class="select2-choice"> <span>All Sub-Categories</span>
										<div>
											<b></b>
										</div></a>
									<div class="select2-drop select2-offscreen">
										<div class="select2-search">
											<input type="text" autocomplete="off" class="select2-input"
												tabindex="0">
										</div>
										<ul class="select2-results">
										</ul>
									</div>
								</div>
								<select name="topicid" onchange="getQuestions();" id="topicList"
									style="width: 200px; display: none;"><option value="0">All
										Sub-Categories</option>


									<option value="2146">General Questions</option></select>

							</div>
							<a id="add_question" href="./addQuestion1.html"
								onclick="addQuestion();" class="btn_green_sml">Add Question</a>
						</div>
						<div class="table_top"
							style="margin-top: -21px; margin-left: 500px; important !; width: 41%">
							<div style="float: right; margin: 0 0 0 10px;">
								<input type="text" name="searchKeyword" size="100" value=""
									style="width: 200px;important!"> <a
									href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
									onclick="javascript:getQuestions();" class="btn_green_sml">Search</a>

							</div>

						</div>
						<script type="text/javascript">
							
								var list = document.getElementById('subject');
								for (var intI = 0; intI < list.options.length; intI++) {
						  			if (list.options[intI].value == 0) {
							    	list.options[intI].selected = true;
						  			}
								}							
							
							
							
								var list = document.getElementById('topicList');								
								for (var intI = 0; intI < list.options.length; intI++) {
						  			if (list.options[intI].value == 0) {
							    	list.options[intI].selected = true;
						  			}
								}
							
								
						</script>
					</div>
				</form>


				<table width="100%" style="float: left;" class="display">
					<thead>
						<tr>
							<th scope="col" width="5%">No.</th>
							<th scope="col" width="*" style="text-align: left">Question</th>
							<th scope="col" width="8%">Options</th>
						</tr>
					</thead>
					<tbody>


						<tr>
							<td valign="top">1</td>
							<td><input id="hiddenquest_156078" type="hidden"
								value="&lt;font size=&quot;2&quot;&gt;MANDATORY : OPTIONAL
	::&lt;/font&gt;


	&lt;meta http-equiv=&quot;CONTENT-TYPE&quot; content=&quot;text/html; charset=utf-8&quot;&gt;
	&lt;title&gt;&lt;/title&gt;
	&lt;meta name=&quot;GENERATOR&quot; content=&quot;OpenOffice.org 3.2  (Linux)&quot;&gt;
	&lt;style type=&quot;text/css&quot;&gt;
	&lt;!--
		@page { margin: 0.79in }
		P { margin-bottom: 0.08in }
	--&gt;
	&lt;/style&gt;


">
								<input id="hiddenhint_156078" type="hidden" value="">
								<div id="questdiv_0"></div> MANDATORY : OPTIONAL ::</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156078"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156078);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">2</td>
							<td><input id="hiddenquest_156079" type="hidden"
								value="&lt;font size=&quot;2&quot;&gt;GRACEFUL : MOVEMENT
	::&lt;/font&gt;


	&lt;meta http-equiv=&quot;CONTENT-TYPE&quot; content=&quot;text/html; charset=utf-8&quot;&gt;
	&lt;title&gt;&lt;/title&gt;
	&lt;meta name=&quot;GENERATOR&quot; content=&quot;OpenOffice.org 3.2  (Linux)&quot;&gt;
	&lt;style type=&quot;text/css&quot;&gt;
	&lt;!--
		@page { margin: 0.79in }
		P { margin-bottom: 0.08in }
	--&gt;
	&lt;/style&gt;


">
								<input id="hiddenhint_156079" type="hidden" value="">
								<div id="questdiv_1"></div> GRACEFUL : MOVEMENT ::</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156079"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156079);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">3</td>
							<td><input id="hiddenquest_156080" type="hidden"
								value="&lt;font size=&quot;2&quot;&gt;SEDULOUS :&lt;/font&gt;


	&lt;meta http-equiv=&quot;CONTENT-TYPE&quot; content=&quot;text/html; charset=utf-8&quot;&gt;
	&lt;title&gt;&lt;/title&gt;
	&lt;meta name=&quot;GENERATOR&quot; content=&quot;OpenOffice.org 3.2  (Linux)&quot;&gt;
	&lt;style type=&quot;text/css&quot;&gt;
	&lt;!--
		@page { margin: 0.79in }
		P { margin-bottom: 0.08in }
	--&gt;
	&lt;/style&gt;


">
								<input id="hiddenhint_156080" type="hidden" value="">
								<div id="questdiv_2"></div> SEDULOUS :</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156080"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156080);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">4</td>
							<td><input id="hiddenquest_156081" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;FETTER :&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156081" type="hidden" value="">
								<div id="questdiv_3"></div> FETTER :</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156081"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156081);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">5</td>
							<td><input id="hiddenquest_156082" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Bland : Piquant ::&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156082" type="hidden" value="">
								<div id="questdiv_4"></div> Bland : Piquant ::</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156082"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156082);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">6</td>
							<td><input id="hiddenquest_156083" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Question It may be useful
to think of character in fiction as a function of two ________
impulses: the impulse to individualize and the impulse to __________.&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156083" type="hidden" value="">
								<div id="questdiv_5"></div> Question It may be useful to think
								of character in fiction as a function of two ________ impulses:
								the impulse to...</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156083"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156083);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">7</td>
							<td><input id="hiddenquest_156084" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;In the closing days of the
civil War, President Abraham Lincoln was planning to graciously
welcome the defeated confederate states back into the Union. After
Lincoln was assassinated, however, the &quot;Radical Republicans&quot;
in Congress imposed martial law in the South, creating resentment
that caused problems well into this century. Had Lincoln lived, the
history of regional conflict in 20th century America would have been
considerably different. All of the following assumptions underline
the argument above EXCEPT&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156084" type="hidden" value="">
								<div id="questdiv_6"></div> In the closing days of the civil
								War, President Abraham Lincoln was planning to graciously
								welcome the defeated c...</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156084"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156084);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">8</td>
							<td><input id="hiddenquest_156085" type="hidden"
								value="&lt;font size=&quot;2&quot;&gt;Some cadets are not hard working balwant is a cadet which of the following inference
	definitely follows from these statements.&lt;/font&gt;


">
								<input id="hiddenhint_156085" type="hidden" value="">
								<div id="questdiv_7"></div> Some cadets are not hard working
								balwant is a cadet which of the following inference definitely
								follows from thes...</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156085"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156085);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">9</td>
							<td><input id="hiddenquest_156086" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Prof. Tembel told his
class that the method of student evaluation of teachers is not valid
measure of teaching quality. Students should fill out questionnaires
at the end of the semester when courses have been completed. Which of
the following, if true, provides support for Prof. Tembel`s proposal
?&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156086" type="hidden" value="">
								<div id="questdiv_8"></div> Prof. Tembel told his class that the
								method of student evaluation of teachers is not valid measure of
								teaching qu...</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156086"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156086);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


						<tr>
							<td valign="top">10</td>
							<td><input id="hiddenquest_156087" type="hidden"
								value="&lt;p style=&quot;margin-bottom: 0in;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Looking at a potrait, A
said &quot;her mother?s only son is my cousin`s father&quot;. My
cousin is the daughter of my maternal uncle who has an only sister.
whose potrait was &quot;A&quot; looking at?&lt;/font&gt;&lt;/p&gt;
">
								<input id="hiddenhint_156087" type="hidden" value="">
								<div id="questdiv_9"></div> Looking at a potrait, A said "her
								mother?s only son is my cousin`s father". My cousin is the
								daughter of my mater...</td>

							<td><a href="http://www. .com/a/editQuestion.do?qid=156087"><img
									src="./Question_files/edit.png" title="Edit"></a>&nbsp;&nbsp;
								<a
								href="http://www. .com/a/callshowQuestion.do?click=%27true%27#"
								onclick="return doQuestionDelete(156087);"><img
									src="./Question_files/delete.png" title="Delete"></a></td>
						</tr>


					</tbody>
				</table>
				<table style="width: 100%">
					<tbody>
						<tr>
							<td><font color="red">Total: 29</font></td>
							<td align="right">
								<!--  
					-->&nbsp;&nbsp; <!--  code for first(1) page  --> <font color="red"><b>1</b></font>&nbsp;

								<!--  code for remaining pages   --> <!--  code for first(1) page  -->

								<!--  code for remaining pages   --> <font color="#800000">
									<b> <a href="#" onclick="">2</a></b>
							</font>&nbsp; <!--  code for first(1) page  --> <!--  code for remaining pages   -->

								<font color="#800000"> <b><a href="#" onclick="">3</a></b>
							</font>&nbsp; <a href="#" onclick="#";">NEXT</a>



							</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<script type="text/javascript">
function getQuestions(){
	document.getElementById('selectedsubjectid').value = document.getElementById('subject').value;
	document.getElementById('selectedtopicid').value = document.getElementById('topicList').value;
	document.forms[0].submit();
}
function getQuestionsByCategory(){
	var list = document.getElementById('topicList');
	document.getElementById('selectedsubjectid').value = document.getElementById('subject').value;
	document.getElementById('selectedtopicid').value = list.options[0].value;
	list.options[0].selected = true;
	document.forms[0].submit();
}

function addQuestion(){
	
}


function dopage(page,op){	
	
	
		var frm=document.forms[0];
		frm.operation.value ="LIST";
	    frm.startPage.value = page;
	    frm.submit();
		
}

</script>
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
		 Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
	} );
</script>


</body>
</html>