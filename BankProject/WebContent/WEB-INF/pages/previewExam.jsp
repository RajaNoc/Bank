<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Preview - ST Online Exam to Evaluate Knowledge</title>
<link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<script>
history.go(1);
var secs
var totalsecs
var mins
var timerID = null
var timerRunning = false
var delay = 1000
function InitializeTimer()
{
    count=10;
    totalsecs ="1751";
    StopTheClock()
    StartTheTimer()
}
function StopTheClock()
{
    if(timerRunning)
        clearTimeout(timerID)
    timerRunning = false
}
function StartTheTimer()
{
    if (totalsecs==0)
    {
        StopTheClock()
        alert("You have to submit!")
        var frm=document.forms["TestQuestionForm"];
		frm.operation.value="finish";
		frm.submit();
    }
    else
    {
        self.status = totalsecs
        totalsecs = totalsecs - 1
       	mins=parseInt(totalsecs/60);
       	secs=totalsecs%60;
       	
       	if(secs < 10 )
			secs = "0" + secs;
		if(mins < 10 )
			mins = "0" + mins;
      
		document.getElementById("timerId").innerHTML=""+mins+" : "+secs+"";
        timerRunning = true
        timerID = self.setTimeout("StartTheTimer()", delay)
    }
}

function dosubmit(questionid)
{
	var frm=document.forms[1];
	frm.questid.value=questionid;
	frm.operation.value="previewone"	
	frm.currentime.value=totalsecs;
	frm.submit();
}
function doResume()
{
	var frm=document.forms[1];
	frm.operation.value="resumetest";
	frm.currentime.value=totalsecs;
	frm.submit();	
}

function FinishSubmit()
{
	var frm=document.forms[1];
	frm.operation.value="finish";
	frm.position.value="preview";
	if(confirm('Do you want to end test?','Confirmation')){
		frm.submit();
	}
}
function dopage(page,op){
	document.forms[1].operation.value ="preview";
    document.forms[1].startPage.value = page;
    document.forms[1].submit();
}
</script>
<style>
.ui-progressbar .ui-progressbar-value {
	background-image: url(images/pbar-ani.gif);
}

.ui-progressbar {
	height: 2em;
	text-align: left;
	overflow: hidden;
}

.ui-progressbar .ui-progressbar-value {
	margin: 0;
	height: 100%;
}
</style>
</head>

<body onload="InitializeTimer();">
	<div id="wrapper">
		<div id="header">
    <h1><a href="#"><img src="./images/logo.png" alt="STExams"></a></h1>
		<ul id="nav">
			<li>
				 
				
			</li>
			<li><a href="#" title="Logout">Logout</a></li>
		</ul>
</div>
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li>Total Questions <span> 
								29
							
					</span>
					</li>
					<li>Attempted Questions <span> 
								1
							
					</span>
					</li>
					<li>Remaining Questions <span> 
								28
							
					</span>
					</li>
				</ul>
				<p class="timer" id="timerId">29 : 00</p>
				<div aria-valuenow="3.4482758620689653" aria-valuemax="100" aria-valuemin="0" role="progressbar" class="ui-progressbar ui-widget ui-widget-content ui-corner-all" id="progressbar"><div style="width: 3.44828%;" class="ui-progressbar-value ui-widget-header ui-corner-left"></div></div>
				<p class="align"><br><br>
				</p>
			</div>
			<div id="main">
				<h3>
					
						Aptitude Test
					
				</h3>
				<hr>
				<div id="view_test">
					<div id="mainquestdiv">
						<table>
						
							
								<tbody><tr>
									<td valign="top">
										<div class="q">
											<span style="vertical-align: top:!impratant;"> 1 )
											</span>
											<p style="margin-bottom: 0in;"><font size="2">For every novel in the
school library there are two science books, for each science book
there are seven economics books. Express the ratio of economics books
to science books to novels in the school library as a triple ratio</font></p>

										</div>
									</td>
									<td>
										<form name="QuestionPreviewForm" method="post" action="/a/previewall.do">
											<input name="questid" value="0" type="hidden">
											<input name="currenttime" value="0" type="hidden">
											<div style="float: left;">
												<a href="#" id="widget" class="btn_orange_sml" onclick="dosubmit(136279);return false;">Preview</a>
											</div>
										</form>
									</td>
									<td>
										
											
											
												<span class="given">Given</span>
											
										
										
									</td>
								</tr>
								<form name="TestQuestionForm" method="post" action="/a/TestQuestionAction.do"></form>
									<input name="questid" value="136269" type="hidden">
									<input name="operation" value="" type="hidden">
									<input name="currentime" value="1751" type="hidden">
									<input name="startPage" value="1" type="hidden">
									<input name="position" value="" type="hidden">
								
							
								<tr>
									<td valign="top">
										<div class="q">
											<span style="vertical-align: top:!impratant;"> 2 )
											</span>
											<p style="margin-bottom: 0in;"><font size="2">5% income of A is equal to
15% income of B and 10% income of B is equal to 20% income of C. If
income of C is Rs.2000, then total income of A,B and C is</font></p>

										</div>
									</td>
									<td>
										<form name="QuestionPreviewForm" method="post" action="/a/previewall.do">
											<input name="questid" value="0" type="hidden">
											<input name="currenttime" value="0" type="hidden">
											<div style="float: left;">
												<a href="#" id="widget" class="btn_orange_sml" onclick="dosubmit(136269);return false;">Preview</a>
											</div>
										</form>
									</td>
									<td>
										
										
											<span class="notgiven"> Not Given </span>
										
									</td>
								</tr>
								<form name="TestQuestionForm" method="post" action="/a/TestQuestionAction.do"></form>
									<input name="questid" value="136269" type="hidden">
									<input name="operation" value="" type="hidden">
									<input name="currentime" value="1751" type="hidden">
									<input name="startPage" value="1" type="hidden">
									<input name="position" value="" type="hidden">
								
							
						
						</tbody></table>
					</div>
					<!--Main Div ENDS HERE-->
				</div>
				<div class="paging">
					
	
		
		<!--  
					-->&nbsp;&nbsp;
		

		
		
			

		

		

		
	


	

				</div>
				<p class="align">
					<button class="btn_green" onclick="doResume();return false;">Resume Exam</button>
				</p>
			</div>
		</div>
	</div>
<script>
$(function() {
	var aq = '1';
	var tq = '29';
	var progress = (aq/tq)*100;
	$("#progressbar").progressbar({
		value: progress
	});
});
</script>



</body></html>