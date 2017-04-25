
<!DOCTYPE html>
<html lang="en" class="win chrome chrome3 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>ST Exam</title>
<link rel="stylesheet" href=".\css\style_blue.css" type="text/css" media="screen">


<script type="text/javascript">
	function doPageSubmit()
	{
		var frm=document.forms["ScheduleTestForm"];
		frm.perpageRecord.value=document.getElementById("perpageRecord").value;
		frm.operation.value="SEARCH";
		
		frm.submit();

	}
	
	function getAjaxUserResponse(){
		var oTable = $('#example').dataTable( {
				"aLengthMenu": [
								[20, 50, 100, 200, -1],
				                [20, 50, 100, 200, "All"]
				            ],
			    "iDisplayLength": 20,
				//"aaSorting": [ [0,'asc'], [1,'asc'] ],
				//"aoColumnDefs": [
				//	{ "sType": 'string-case', "aTargets": [ 2 ] }
				//],
				 "bProcessing": true,
				 "bDestroy": true, 
			     "bServerSide": true,
			     "sAjaxSource": contextPath+"/ScheduleTest.do?fromAjax=1&search=1&examId="+document.forms["ScheduleTestForm"].examID.value+"&testId="+document.forms["ScheduleTestForm"].testId.value+"&groupId="+document.forms["ScheduleTestForm"].groupid.value,
		         "aoColumnDefs": [
									{
 									 aTargets: [0],    // Column number which needs to be modified
 									 mRender: function (data,userId) {   // o, v contains the object and value for the column
    										  return '<input type="checkbox" id="userId" name="userId" value="'+data+'"/>';
  								},
  								sClass: 'tableCell'    // Optional - class to be applied to this table cell
					}],
				    "bSort": false,
            	    "bStateSave":false,
            	    "bSearchable":true,
            	    "bRegex":true
			});
		
		$('#example_filter input').unbind();
		$('#example_filter input').bind('keyup', function(e) {
		      /* if(e.keyCode == 13) {*/
		        oTable.fnFilter(this.value);   
		   /* }*/
		  }); 
	}
	
	function getTestDetails(type)
	{	
		var frm = document.forms["ScheduleTestForm"];
		if(document.forms["ScheduleTestForm"].examName.value=='' && type == 'test'){
			alert("Enter exam name!");
			document.forms["ScheduleTestForm"].testId.value = "0";
			document.forms["ScheduleTestForm"].examName.focus();
			return false;
		}else{		
			/*frm.operation.value="SEARCH";
			frm.submit();
			return false;*/
			getAjaxUserResponse();
		}
	}
	 function dopage(page,op){
	     document.forms["ScheduleTestForm"].operation.value ="SEARCH";
         document.forms["ScheduleTestForm"].startPage.value = page;
         document.forms["ScheduleTestForm"].perpageRecord.value=document.getElementById("perpageRecord").value;
         document.forms["ScheduleTestForm"].submit();
     }

	 function doSearch(){
		 document.forms["ScheduleTestForm"].operation.value ="SEARCHVALUE";
         document.forms["ScheduleTestForm"].perpageRecord.value=document.getElementById("perpageRecord").value;
         document.forms["ScheduleTestForm"].submit();
	 }
		function doSubmit(val)
		{
		
			if(document.forms["ScheduleTestForm"].examName.value==''){
				alert("Enter exam name!");
				document.forms["ScheduleTestForm"].examName.focus();
			}
			else if(document.getElementById("selectTest").value==0){
				alert("Select question paper!");
			}else if(document.forms["ScheduleTestForm"].timezoneId.value == ''){
				alert("Select Timezone!");
			}
			else{
			var startdate=document.getElementById("tdate").value;
			stdate=startdate.split("-");
			
			var enddate=document.getElementById("edate").value;
			endate= enddate.split("-");

			var flag=0;

			if(document.forms["ScheduleTestForm"].userId && document.forms["ScheduleTestForm"].userId.checked)
				flag=1;
			else{
				if(document.forms["ScheduleTestForm"].userId){
					 for(var i=0;i<document.forms["ScheduleTestForm"].userId.length;i++)
					 {
						 if(document.forms["ScheduleTestForm"].userId[i].checked)
							 flag=1;
					 }
				}
			}
			
			if(flag==0 && val!='true' && document.forms["ScheduleTestForm"].publicURL.value=='')
			{
				alert("Select at least one user for exam!.");
				return false;
			}
			if(stdate=='' || endate=='')
			{
				alert("Select valid start & end date!");
				return false;
			}else{
				frm=document.forms["ScheduleTestForm"];

				if(val=='true'){
					frm.operation.value="edit";}
				else{
					frm.operation.value="add";}
				
				frm.submit();
			}
					
		}
	}
 function selectEmail(){
		if(document.forms["ScheduleTestForm"].selectemail.checked){
		
		     for(var i=0;i<document.forms["ScheduleTestForm"].userId.length;i++)
		    	 document.forms["ScheduleTestForm"].userId[i].checked=true;
		     document.forms["ScheduleTestForm"].userId.checked=true;
	   	}
		else{
			 for(var i=0;i<document.forms["ScheduleTestForm"].userId.length;i++)
		    	 document.forms["ScheduleTestForm"].userId[i].checked=false;
			 document.forms["ScheduleTestForm"].userId.checked=false;
		}
	}
 function hidemessage(){
		document.getElementById("messagep").style.display="none";
	}	

 function checkExamURL(urlval) {	
	 	if(urlval==""){
		 	return;
		 }else{
			$.post("callCreateQuestionPaper.do?check", {
				exmURL : urlval,
				op : "checkurl"
			}, function(data) {
				if (data == null) {
					message(container, "Data Not Found...");
				} else {			
					if(data != 'available'){
						alert("The entered public exam url is not available. Please use different keyword.");
						document.forms["QuestionPaperForm"].exmURL.value="";
					}
				}
			});

		 }

	}
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
<script type="text/javascript" charset="utf-8">
var contextPath = '/a';

			/* Define two custom functions (asc and desc) for string sorting */
			/*jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
				return ((x < y) ? -1 : ((x > y) ?  1 : 0));
			};
			
			jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
				return ((x < y) ?  1 : ((x > y) ? -1 : 0));
			};*/
			
			$(document).ready(function() {
				/* Build the DataTable with third column using our custom sort functions */
				    if(document.forms["ScheduleTestForm"].operation.value == 'VIEW'){
						getAjaxUserResponse();
					}else{
						var oTable = $('#example').dataTable({
								"aLengthMenu": [
												[20, 50, 100 ,200, -1],
								                [20, 50, 100 ,200, "All"]
								            ],
							     "iDisplayLength": 20,
								 "bProcessing": true,
							     "bServerSide": true,
							     "bDestroy": true, 
							     "sAjaxSource": contextPath+"/ScheduleTest.do?check",
				                 "aoColumnDefs": [{ 
			   									 aTargets: [0],    // Column number which needs to be modified
			   									 mRender: function (data, userId) {   // o, v contains the object and value for the column
			      										  return '<input type="checkbox" id="userId" name="userId" value="'+data+'"/>';
			    								},
			    								sClass: 'tableCell'// Optional - class to be applied to this table cell
								}],
		                	    "bSort": false,
		                	    "bStateSave":false,
		                	    "bSearchable":true,
		                	    "bRegex":true
		   					});
						
						$('#example_filter input').unbind();
						$('#example_filter input').bind('keyup', function(e) {
						       /*if(e.keyCode == 13) {*/
						        oTable.fnFilter(this.value);   
						   /* }*/
						}); 
				}
			    $("#example_previous").click( function() { document.forms["ScheduleTestForm"].selectemail.checked=false; });
			    $("#example_next").click( function() { document.forms["ScheduleTestForm"].selectemail.checked=false; });
				Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });
				
			});
			
			
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
		<!--	CONTENT -->
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li><a href=".\exams.html" class="active">Question Paper</a></li>
					<li><a href=".\createQuestionPaper.htm">Create Question Paper</a></li>
					<li><a href=".\exams_SceduledExam.html">Scheduled Exam</a></li>
			</ul>
				<div class="sidebar_note"><p class="message note">Schedule Exams by selecting employees/candidates for any of the Question Papers you created.</p></div>
			</div>
			<div id="main">
				<h3>Schedule a Exam</h3>
				<hr>
				<div id="dialog" title="Customize Plan Request" style="display: none;">
					<p><label>Customize Plan Message:</label><textarea rows="5" cols="60" name="message" id="cprmsg"></textarea></p>
					<p style="text-align: right;">
							<input type="button" onclick="cancel();" value="Cancel" class="btn_green">&nbsp;
							<input type="button" onclick="sendContactusMessage();" value="Change Plan" class="btn_green">
					</p>
				</div>
				
				
				
				
				<div class="schedule">
					<form name="ScheduleTestForm" method="post" action="http://www. .com/a/ScheduleTest.do">
						
						

						<input type="hidden" name="startPage" value="">
						<input type="hidden" name="examID" value="0">
						<input type="hidden" name="operation" value="LIST">
						<div class="schedule_exm">
							<p>
								<label>Exam Name:</label>
								<input type="text" name="examName" maxlength="45" size="20" value="">
								<select name="testId" onchange="return getTestDetails(&#39;test&#39;);" id="selectTest"><option value="0" selected="selected">Select Question Paper</option>
							
								
									<option value="T2199">Aptitude Test</option></select>
							&nbsp;&nbsp;<a href="http://help. .com/faq/content/19/129/en/question-paper-%26-exam-schedule.html" target="_new"><img src="./exams_SceduledNewExam_files/help_on.gif" title="Help on Exam Name"></a>
							</p>	
							<p>
							<label>Exam Start Date:</label>
							<input type="text" name="startDate" size="12" value="" id="tdate">
							
							<label>Exam End Date:</label>
							<input type="text" name="endDate" size="13" value="" id="edate">
							&nbsp;&nbsp;<a href="http://help. .com/faq/content/28/176/en/start-exam-date-and-end-exam-date.html" target="_new"><img src="./exams_SceduledNewExam_files/help_on.gif" title="Help on Dates"></a>
							</p>	
							<p>
                                  <label>Public Exam URL:</label>          
                                  	
                                      http://www. .com/a/exam/
                                          <input type="text" name="publicURL" value="" onblur="checkExamURL(this.value);" style="width:80px;">
                             &nbsp;&nbsp;<a href="http://help. .com/faq/content/21/138/en/schedule-public-exam-by-url.html" target="_new"><img src="./exams_SceduledNewExam_files/help_on.gif" title="Help on Public Exam URL"></a>
                                          <small class="more_info">Please use this URL if you want exam can be given publicly without registration.</small>                                 
                             </p>
                             
                             
                             
                             <p>
                                  <label>Questions for Exam:</label>                                 
                                  <select name="quesSequence" id="selectquesSequence"><option value="1">Randomize</option>
										<option value="0">Sequential</option></select>                                 
                             &nbsp;&nbsp;<a href="http://help. .com/faq/content/19/131/en/sequence-of-questions-in-exam.html" target="_new"><img src="./exams_SceduledNewExam_files/help_on.gif" title="Help on Questions in Exam"></a>
                             </p>
                             
                             
							<p>
								<label>Timezone:</label>
								<select name="timezoneId" id="selectTimezoneId"><option value="1">(GMT -11:00) Pacific/Midway</option>
										
											<option value="2">(GMT -11:00) Pacific/Niue</option>
										
											<option value="3">(GMT -11:00) Pacific/Pago_Pago</option>
										
											<option value="4">(GMT -11:00) US/Samoa</option>
										
											<option value="5">(GMT -10:00) America/Adak</option>
										
											<option value="6">(GMT -10:00) Pacific/Honolulu</option>
										
											<option value="7">(GMT -10:00) Pacific/Johnston</option>
										
											<option value="8">(GMT -10:00) Pacific/Rarotonga</option>
										
											<option value="9">(GMT -10:00) Pacific/Tahiti</option>
										
											<option value="10">(GMT -10:00) US/Aleutian</option>
										
											<option value="11">(GMT -10:00) US/Hawaii</option>
										
											<option value="12">(GMT -09:30) Pacific/Marquesas</option>
										
											<option value="13">(GMT -09:00) America/Anchorage</option>
										
											<option value="14">(GMT -09:00) America/Juneau</option>
										
											<option value="15">(GMT -09:00) America/Nome</option>
										
											<option value="16">(GMT -09:00) America/Sitka</option>
										
											<option value="17">(GMT -09:00) America/Yakutat</option>
										
											<option value="18">(GMT -09:00) Pacific/Gambier</option>
										
											<option value="19">(GMT -09:00) US/Alaska</option>
										
											<option value="20">(GMT -08:00) America/Dawson</option>
										
											<option value="21">(GMT -08:00) America/Los_Angeles</option>
										
											<option value="22">(GMT -08:00) America/Metlakatla</option>
										
											<option value="23">(GMT -08:00) America/Santa_Isabel</option>
										
											<option value="24">(GMT -08:00) America/Tijuana</option>
										
											<option value="25">(GMT -08:00) America/Vancouver</option>
										
											<option value="26">(GMT -08:00) America/Whitehorse</option>
										
											<option value="27">(GMT -08:00) Pacific/Pitcairn</option>
										
											<option value="28">(GMT -08:00) US/Pacific</option>
										
											<option value="29">(GMT -07:00) America/Boise</option>
										
											<option value="30">(GMT -07:00) America/Cambridge_Bay</option>
										
											<option value="31">(GMT -07:00) America/Chihuahua</option>
										
											<option value="32">(GMT -07:00) America/Creston</option>
										
											<option value="33">(GMT -07:00) America/Dawson_Creek</option>
										
											<option value="34">(GMT -07:00) America/Denver</option>
										
											<option value="35" selected="selected">(GMT +05:30) Asia/Calcutta</option>
										
											<option value="36">(GMT +05:30) Asia/Colombo</option>
										
											<option value="37">(GMT +05:30) Asia/Kolkata</option>
										
											<option value="38">(GMT -07:00) America/Edmonton</option>
										
											<option value="39">(GMT -07:00) America/Hermosillo</option>
										
											<option value="40">(GMT -07:00) America/Inuvik</option>
										
											<option value="41">(GMT -07:00) America/Mazatlan</option>
										
											<option value="42">(GMT -07:00) America/Ojinaga</option>
										
											<option value="43">(GMT -07:00) America/Phoenix</option>
										
											<option value="44">(GMT -07:00) America/Shiprock</option>
										
											<option value="45">(GMT -07:00) America/Yellowknife</option>
										
											<option value="46">(GMT -07:00) US/Arizona</option>
										
											<option value="47">(GMT -07:00) US/Mountain</option>
										
											<option value="48">(GMT -06:00) America/Bahia_Banderas</option>
										
											<option value="49">(GMT -06:00) America/Belize</option>
										
											<option value="50">(GMT -06:00) America/Cancun</option>
										
											<option value="51">(GMT -06:00) America/Chicago</option>
										
											<option value="52">(GMT -06:00) America/Costa_Rica</option>
										
											<option value="53">(GMT -06:00) America/El_Salvador</option>
										
											<option value="54">(GMT -06:00) America/Guatemala</option>
										
											<option value="55">(GMT -06:00) America/Indiana/Knox</option>
										
											<option value="56">(GMT -06:00) America/Indiana/Tell_City</option>
										
											<option value="57">(GMT -06:00) America/Managua</option>
										
											<option value="58">(GMT -06:00) America/Matamoros</option>
										
											<option value="59">(GMT -06:00) America/Menominee</option>
										
											<option value="60">(GMT -06:00) America/Merida</option>
										
											<option value="61">(GMT -06:00) America/Mexico_City</option>
										
											<option value="62">(GMT -06:00) America/Monterrey</option>
										
											<option value="63">(GMT -06:00) America/North_Dakota/Beulah</option>
										
											<option value="64">(GMT -06:00) America/North_Dakota/Center</option>
										
											<option value="65">(GMT -06:00) America/North_Dakota/New_Salem</option>
										
											<option value="66">(GMT -06:00) America/Rainy_River</option>
										
											<option value="67">(GMT -06:00) America/Rankin_Inlet</option>
										
											<option value="68">(GMT -06:00) America/Regina</option>
										
											<option value="69">(GMT -06:00) America/Resolute</option>
										
											<option value="70">(GMT -06:00) America/Swift_Current</option>
										
											<option value="71">(GMT -06:00) America/Tegucigalpa</option>
										
											<option value="72">(GMT -06:00) America/Winnipeg</option>
										
											<option value="73">(GMT -06:00) Pacific/Easter</option>
										
											<option value="74">(GMT -06:00) Pacific/Galapagos</option>
										
											<option value="75">(GMT -06:00) US/Central</option>
										
											<option value="76">(GMT -06:00) US/Indiana-Starke</option>
										
											<option value="77">(GMT -05:00) America/Atikokan</option>
										
											<option value="78">(GMT -05:00) America/Bogota</option>
										
											<option value="79">(GMT -05:00) America/Cayman</option>
										
											<option value="80">(GMT -05:00) America/Coral_Harbour</option>
										
											<option value="81">(GMT -05:00) America/Detroit</option>
										
											<option value="82">(GMT -05:00) America/Grand_Turk</option>
										
											<option value="83">(GMT -05:00) America/Guayaquil</option>
										
											<option value="84">(GMT -05:00) America/Havana</option>
										
											<option value="85">(GMT -05:00) America/Indiana/Indianapolis</option>
										
											<option value="86">(GMT -05:00) America/Indiana/Marengo</option>
										
											<option value="87">(GMT -05:00) America/Indiana/Petersburg</option>
										
											<option value="88">(GMT -05:00) America/Indiana/Vevay</option>
										
											<option value="89">(GMT -05:00) America/Indiana/Vincennes</option>
										
											<option value="90">(GMT -05:00) America/Indiana/Winamac</option>
										
											<option value="91">(GMT -05:00) America/Indianapolis</option>
										
											<option value="92">(GMT -05:00) America/Iqaluit</option>
										
											<option value="93">(GMT -05:00) America/Jamaica</option>
										
											<option value="94">(GMT -05:00) America/Kentucky/Louisville</option>
										
											<option value="95">(GMT -05:00) America/Kentucky/Monticello</option>
										
											<option value="96">(GMT -05:00) America/Lima</option>
										
											<option value="97">(GMT -05:00) America/Louisville</option>
										
											<option value="98">(GMT -05:00) America/Montreal</option>
										
											<option value="99">(GMT -05:00) America/Nassau</option>
										
											<option value="100">(GMT -05:00) America/New_York</option>
										
											<option value="101">(GMT -05:00) America/Nipigon</option>
										
											<option value="102">(GMT -05:00) America/Panama</option>
										
											<option value="103">(GMT -05:00) America/Pangnirtung</option>
										
											<option value="104">(GMT -05:00) America/Port-au-Prince</option>
										
											<option value="105">(GMT -05:00) America/Thunder_Bay</option>
										
											<option value="106">(GMT -05:00) America/Toronto</option>
										
											<option value="107">(GMT -05:00) US/East-Indiana</option>
										
											<option value="108">(GMT -05:00) US/Eastern</option>
										
											<option value="109">(GMT -05:00) US/Michigan</option>
										
											<option value="110">(GMT -04:30) America/Caracas</option>
										
											<option value="111">(GMT -04:00) America/Anguilla</option>
										
											<option value="112">(GMT -04:00) America/Antigua</option>
										
											<option value="113">(GMT -04:00) America/Argentina/San_Luis</option>
										
											<option value="114">(GMT -04:00) America/Aruba</option>
										
											<option value="115">(GMT -04:00) America/Asuncion</option>
										
											<option value="116">(GMT -04:00) America/Barbados</option>
										
											<option value="117">(GMT -04:00) America/Blanc-Sablon</option>
										
											<option value="118">(GMT -04:00) America/Boa_Vista</option>
										
											<option value="119">(GMT -04:00) America/Campo_Grande</option>
										
											<option value="120">(GMT -04:00) America/Cuiaba</option>
										
											<option value="121">(GMT -04:00) America/Curacao</option>
										
											<option value="122">(GMT -04:00) America/Dominica</option>
										
											<option value="123">(GMT -04:00) America/Eirunepe</option>
										
											<option value="124">(GMT -04:00) America/Glace_Bay</option>
										
											<option value="125">(GMT -04:00) America/Goose_Bay</option>
										
											<option value="126">(GMT -04:00) America/Grenada</option>
										
											<option value="127">(GMT -04:00) America/Guadeloupe</option>
										
											<option value="128">(GMT -04:00) America/Guyana</option>
										
											<option value="129">(GMT -04:00) America/Halifax</option>
										
											<option value="130">(GMT -04:00) America/Kralendijk</option>
										
											<option value="131">(GMT -04:00) America/La_Paz</option>
										
											<option value="132">(GMT -04:00) America/Lower_Princes</option>
										
											<option value="133">(GMT -04:00) America/Manaus</option>
										
											<option value="134">(GMT -04:00) America/Marigot</option>
										
											<option value="135">(GMT -04:00) America/Martinique</option>
										
											<option value="136">(GMT -04:00) America/Moncton</option>
										
											<option value="137">(GMT -04:00) America/Montserrat</option>
										
											<option value="138">(GMT -04:00) America/Port_of_Spain</option>
										
											<option value="139">(GMT -04:00) America/Porto_Velho</option>
										
											<option value="140">(GMT -04:00) America/Puerto_Rico</option>
										
											<option value="141">(GMT -04:00) America/Rio_Branco</option>
										
											<option value="142">(GMT -04:00) America/Santiago</option>
										
											<option value="143">(GMT -04:00) America/Santo_Domingo</option>
										
											<option value="144">(GMT -04:00) America/St_Barthelemy</option>
										
											<option value="145">(GMT -04:00) America/St_Kitts</option>
										
											<option value="146">(GMT -04:00) America/St_Lucia</option>
										
											<option value="147">(GMT -04:00) America/St_Thomas</option>
										
											<option value="148">(GMT -04:00) America/St_Vincent</option>
										
											<option value="149">(GMT -04:00) America/Thule</option>
										
											<option value="150">(GMT -04:00) America/Tortola</option>
										
											<option value="151">(GMT -04:00) Antarctica/Palmer</option>
										
											<option value="152">(GMT -04:00) Atlantic/Bermuda</option>
										
											<option value="153">(GMT -03:30) America/St_Johns</option>
										
											<option value="154">(GMT -03:00) America/Araguaina</option>
										
											<option value="155">(GMT -03:00) America/Argentina/Buenos_Aires</option>
										
											<option value="156">(GMT -03:00) America/Argentina/Catamarca</option>
										
											<option value="157">(GMT -03:00) America/Argentina/ComodRivadavia</option>
										
											<option value="158">(GMT -03:00) America/Argentina/Cordoba</option>
										
											<option value="159">(GMT -03:00) America/Argentina/Jujuy</option>
										
											<option value="160">(GMT -03:00) America/Argentina/La_Rioja</option>
										
											<option value="161">(GMT -03:00) America/Argentina/Mendoza</option>
										
											<option value="162">(GMT -03:00) America/Argentina/Rio_Gallegos</option>
										
											<option value="163">(GMT -03:00) America/Argentina/Salta</option>
										
											<option value="164">(GMT -03:00) America/Argentina/San_Juan</option>
										
											<option value="165">(GMT -03:00) America/Argentina/Tucuman</option>
										
											<option value="166">(GMT -03:00) America/Argentina/Ushuaia</option>
										
											<option value="167">(GMT -03:00) America/Bahia</option>
										
											<option value="168">(GMT -03:00) America/Belem</option>
										
											<option value="169">(GMT -03:00) America/Buenos_Aires</option>
										
											<option value="170">(GMT -03:00) America/Catamarca</option>
										
											<option value="171">(GMT -03:00) America/Cayenne</option>
										
											<option value="172">(GMT -03:00) America/Cordoba</option>
										
											<option value="173">(GMT -03:00) America/Fortaleza</option>
										
											<option value="174">(GMT -03:00) America/Godthab</option>
										
											<option value="175">(GMT -03:00) America/Jujuy</option>
										
											<option value="176">(GMT -03:00) America/Maceio</option>
										
											<option value="177">(GMT -03:00) America/Mendoza</option>
										
											<option value="178">(GMT -03:00) America/Miquelon</option>
										
											<option value="179">(GMT -03:00) America/Montevideo</option>
										
											<option value="180">(GMT -03:00) America/Paramaribo</option>
										
											<option value="181">(GMT -03:00) America/Recife</option>
										
											<option value="182">(GMT -03:00) America/Santarem</option>
										
											<option value="183">(GMT -03:00) America/Sao_Paulo</option>
										
											<option value="184">(GMT -03:00) Antarctica/Rothera</option>
										
											<option value="185">(GMT -03:00) Atlantic/Stanley</option>
										
											<option value="186">(GMT -02:00) America/Noronha</option>
										
											<option value="187">(GMT -02:00) Atlantic/South_Georgia</option>
										
											<option value="188">(GMT -01:00) America/Scoresbysund</option>
										
											<option value="189">(GMT -01:00) Atlantic/Azores</option>
										
											<option value="190">(GMT -01:00) Atlantic/Cape_Verde</option>
										
											<option value="191">(GMT +01:00) Africa/Algiers</option>
										
											<option value="192">(GMT +01:00) Africa/Bangui</option>
										
											<option value="193">(GMT +01:00) Africa/Brazzaville</option>
										
											<option value="194">(GMT +01:00) Africa/Ceuta</option>
										
											<option value="195">(GMT +01:00) Africa/Douala</option>
										
											<option value="196">(GMT +01:00) Africa/Kinshasa</option>
										
											<option value="197">(GMT +01:00) Africa/Lagos</option>
										
											<option value="198">(GMT +01:00) Africa/Libreville</option>
										
											<option value="199">(GMT +01:00) Africa/Luanda</option>
										
											<option value="200">(GMT +01:00) Africa/Malabo</option>
										
											<option value="201">(GMT +01:00) Africa/Ndjamena</option>
										
											<option value="202">(GMT +01:00) Africa/Niamey</option>
										
											<option value="203">(GMT +01:00) Africa/Porto-Novo</option>
										
											<option value="204">(GMT +01:00) Africa/Tunis</option>
										
											</select></p></div></form></div></div></div></div></body></html>