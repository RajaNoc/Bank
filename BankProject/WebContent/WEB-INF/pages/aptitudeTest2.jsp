<!DOCTYPE html>
<html>
<head>
<title>Aptitude Test - ST Online Exam to Evaluate Knowledge</title>
<link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<script>
	function PrevSubmit() {
		document.getElementById("TestQuestionForm").submit();
	}
</script>
<script type="text/javascript">
	history.go(1);
	var secs
	var totalsecs
	var mins
	var timerID = null
	var timerRunning = false
	var delay = 1000

	function InitializeTimer() {
		count = 10;
		totalsecs = "1766";
		StopTheClock()
		StartTheTimer()
	}

	function StopTheClock() {
		if (timerRunning)
			clearTimeout(timerID)
		timerRunning = false
	}

	function StartTheTimer() {
		if (totalsecs == 0) {
			StopTheClock()
			alert("Time Over for the Exam. After clicking on OK button, Exam will be submitted. Thank you.")
			var frm = document.forms["TestQuestionForm"];
			frm.operation.value = "finish";
			frm.submit();
		} else {
			self.status = totalsecs
			totalsecs = totalsecs - 1
			mins = parseInt(totalsecs / 60);
			secs = totalsecs % 60;
			
			if(secs < 10 )
				secs = "0" + secs;
			if(mins < 10 )
				mins = "0" + mins;

			document.getElementById("timerId").innerHTML = ""
					+ mins + " : " + secs + "";
			timerRunning = true
			timerID = self.setTimeout("StartTheTimer()", delay)
		}
	}

	function NextSubmit() {
		var frm = document.forms["TestQuestionForm"];
		frm.operation.value = "next";
		frm.currentime.value = totalsecs;
		frm.submit();
	}
	function PrevSubmit() {
		var frm = document.forms["TestQuestionForm"];
		frm.operation.value = "prev";
		frm.currentime.value = totalsecs;
		frm.submit();
	}
	function FinishSubmit() {
		var frm = document.forms["TestQuestionForm"];
		frm.operation.value = "finish";
		if (confirm('This will end the Exam and you will not be able to recheck your questions.	\nDo you still want to end Exam?', 'Confirmation')) {
			frm.submit();
		}
	}
	function PreviewSubmit() {
		var frm = document.forms["TestQuestionForm"];
		frm.operation.value = "preview";
		frm.currentime.value = totalsecs;

		frm.submit();
	}
	function SaveSubmit() {
		var frm = document.forms["TestQuestionForm"];
		frm.operation.value = "previwsave";
		frm.currentime.value = totalsecs;
		frm.submit();
	}
</script>
	<style>
	.ui-progressbar .ui-progressbar-value { background-image: url(images/pbar-ani.gif); }
	.ui-progressbar { height:2em; text-align: left; overflow: hidden; }
	.ui-progressbar .ui-progressbar-value {margin: 0; height:100%; }
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
		
		<!--HEADER ENDS HERE-->
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
					
					
				<p class="timer" id="timerId">29 : 17</p>
				<div aria-valuenow="3.4482758620689653" aria-valuemax="100" aria-valuemin="0" role="progressbar" class="ui-progressbar ui-widget ui-widget-content ui-corner-all" id="progressbar"><div style="width: 3.44828%;" class="ui-progressbar-value ui-widget-header ui-corner-left"></div></div>
				</div>
				
				
			<div id="main">
					<h3>
						
							Aptitude Test
						
					</h3>
					<hr>
				<div id="test_start">
					
						<form name="TestQuestionForm" id="TestQuestionForm" method="post" action="/a/TestQuestionAction.do">
							<input name="position" value="" type="hidden">
							<div id="mainquestdiv">
								<div class="q">
								<table>
								<tbody><tr>
								
									<td style="border:0;important!" valign="top" width="20px;"><span>2)</span></td>
								
								<td style="border:0;important!" valign="top"><p style="margin-bottom: 0in;"><font size="2">5% income of A is equal to
15% income of B and 10% income of B is equal to 20% income of C. If
income of C is Rs.2000, then total income of A,B and C is</font></p>
</td>
								</tr>
								</tbody></table>
								</div>
								
								<ul class="ans">
									<li>
										
										
											
											<p class="custom-radio">
											</p><table>
												<tbody><tr>
													<td style="border:0;important!" valign="top" width="20px;">
													A)
													</td>
													<td style="border:0;important!" valign="top"> 
													<input name="multiselect" value="0" type="hidden">
													<div class="custom-radio"><input name="answer" value="A" id="optionA" type="radio"><label for="optionA" class="" style="text-align: left;"></label></div>
													Rs. 6000
													</td>
												</tr>
											</tbody></table>
											
											<p></p>
										
										</li>

									<li>
										
											<p class="custom-radio">
											</p><table>
												<tbody><tr>
													<td style="border:0;important!" valign="top" width="20px;">
													B)
													</td>
													<td style="border:0;important!" valign="top">
													<input name="multiselect" value="0" type="hidden">
													<div class="custom-radio"><input name="answer" value="B" id="optionB" type="radio"><label for="optionB" class="" style="text-align: left;"></label></div>
													Rs. 20000
													</td>
												</tr>
											</tbody></table>
											
											<p></p>
										
										
									


									</li><li>
											
												<p class="custom-radio">
												</p><table>
													<tbody><tr>
														<td style="border:0;important!" valign="top" width="20px;">
														C) 
														</td>
														<td style="border:0;important!" valign="top">
														<input name="multiselect" value="0" type="hidden">
														<div class="custom-radio"><input name="answer" value="C" id="optionC" type="radio"><label for="optionC" class="" style="text-align: left;"></label></div>
														Rs. 14000
														</td>
													</tr>
												</tbody></table>
												<p></p>
											
											
									</li>

									
									

									
									

										<li>
											
												<p class="custom-radio">
												</p><table>
													<tbody><tr>
														<td style="border:0;important!" valign="top" width="20px;">D)</td>
														<td style="border:0;important!" valign="top"> 
														<input name="multiselect" value="0" type="hidden">
														<div class="custom-radio"><input name="answer" value="D" id="optionD" type="radio"><label for="optionD" class="" style="text-align: left;"></label></div>
														Rs. 18000
														</td>
													</tr>
												</tbody></table>
												<p></p>
											
											</li>

									
									


									
									
									
									
									
																		
								</ul>
								
									
								
								
								
								
								

								

								<input name="operation" value="" type="hidden">
								<input name="currentime" value="1768" type="hidden">
								<input name="questid" value="136269" type="hidden">
							</div>

						</form>
						<script>
							history.go(1);
							
							var answer = "";

							
						</script>
					
				</div>
				<!--TEST START ENDS HERE-->
				
				<div class="test_btns">
									

									
										
											<button onclick="PrevSubmit();" class="btn_blue">Previous</button>
										

									
									
										
										
										
											<button onclick="NextSubmit();" class="btn_green"> Next</button>
										
									
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn_orange" onclick="PreviewSubmit()">View Attempted Questions</button>
								</div>
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