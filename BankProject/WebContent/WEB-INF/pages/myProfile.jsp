<!DOCTYPE html>
<!-- saved from url=(0047)http://www. .com/a/callCandidateProfile.do -->
<html lang="en" class="win chrome chrome2 webkit webkit5"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>My Profile -   Online Exam to Evaluate Knowledge</title>

<link href="./css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/feedback.css" type="text/css" media="screen">
<script type="text/javascript">
var rt_tabOptions = {manualStartup:true};
</script>
<script type="text/javascript">
/* Optional: Temporarily hide the "tabber" class so it does not "flash"
   on the page as plain HTML. After tabber runs, the class is changed
   to "tabberlive" and it will appear. */

document.write('<style type="text/css">.tabber{display:none;}<\/style>');

function showEditDialog1(academicId,qualification,university,passingyear,percentage) {	 
	var frm=document.forms["AcademicInfoForm"];
	frm.qualification.value=qualification;
	frm.university.value=university;
	frm.otherUniversityValue.value="";
	if(university != 'Other')
	frm.otherUniversityValue.value = university;

	if(frm.university.value=='0' || frm.otherUniversityValue.value!=='')
		frm.university.value='Other';
	
	frm.passingYear.value=passingyear;
	frm.percentage.value=percentage;
	frm.academicId.value=academicId;
	frm.operation.value="edit";
	setOtherOption();
	$("#editdialog1").dialog({ autoOpen: true, height: 'auto', width: 'auto', modal: true, closeOnEscape:false });
    $("#editdialog1").dialog('option', 'title', "Edit Academics Details");
	$("#editdialog1").dialog('option', 'show', 'drop');
    $("#editdialog1").dialog('option', 'resizable', true)
	$("#editdialog1").dialog('open');
	   
}

function doAcademicDelete(academicId) {
	var frm=document.forms["AcademicInfoForm"];
	frm.academicId.value=academicId;
	frm.operation.value="delete";
	if(confirm('Do you want to delete this Academics Info?')) {
		frm.submit();
	}
}
function addacademics() {
	 
	var frm=document.forms["AcademicInfoForm"];
	frm.qualification.value="";
	frm.university.value="";
	frm.passingYear.value=null;
	frm.percentage.value=null;
	frm.academicId.value=null;
	frm.operation.value="add";
	
	$("#editdialog1").dialog({ autoOpen: true, height: 'auto', width: 'auto', modal: true, closeOnEscape:false });
    $("#editdialog1").dialog('option', 'title', "Enter Academics Details");
	$("#editdialog1").dialog('option', 'show', 'drop');
    $("#editdialog1").dialog('option', 'resizable', true)
	$("#editdialog1").dialog('open');
}
function showEditDialog2(experienceId,companyName,description,fromDate,toDate) {
	 
	var frm=document.forms["ExperienceInfoForm"];
	frm.companyName.value=companyName;
	frm.description.value=description;
	frm.fromDate.value=fromDate;
	frm.toDate.value=toDate;
	frm.experienceId.value=experienceId;
	frm.operation.value="edit";
	
	document.getElementById("editdialog2").style.display="";
}

function doExperienceDelete(experienceId) {
	var frm=document.forms["ExperienceInfoForm"];
	frm.experienceId.value=experienceId;
	frm.operation.value="delete";
	if(confirm('Do you want to delete this Experience Info?'))	{
		frm.submit();
	}
}


function addexperience() {
	 
	var frm=document.forms["ExperienceInfoForm"];
	frm.companyName.value="";
	frm.description.value="";
	frm.fromDate.value="";
	frm.toDate.value="";
	frm.experienceId.value=null;
	frm.operation.value="add";
    document.getElementById("editdialog2").style.display="";
    if(document.getElementById("info") != null)
      document.getElementById("info").style.display="none";
}


function savePersonal(personalId) {
	if(validatePersonal()){
		var frm=document.forms["PersonalInfoForm"];
		frm.personalId.value=personalId;
		frm.submit();
	}else{
		return false;
	}
}


function validateAcademics() {
	var acValidation = document.getElementById('acdemic');
	
	 if(acValidation.qualification.value.toString()=="0") {
		alert("Select your qualification.");
		acValidation.qualification.focus();
		return false;
    }
	else if(acValidation.university.value.toString()=="0") {
		alert("Select University/Board.");
		acValidation.university.focus();
		return false;
    }else if(acValidation.university.value.toString()=="Other" && acValidation.otherUniversityValue.value.toString()=="") {
		alert("Enter Other University/Board.");
		acValidation.otherUniversityValue.focus();
		return false;
    }
	else if(acValidation.passingYear.value.toString()=="0")	{
		alert("Select passing year.");
		acValidation.passingYear.focus();
		return false;
    }else if(checkEmpty(acValidation.percentage)) {
		alert("Percentage must not be empty.");
		acValidation.percentage.focus();
		return false;
		}
	else if(isNumeric(acValidation.percentage)) {
		alert("Please Enter valid Percentage.");
		acValidation.percentage.focus();
		return false;
	}else if(acValidation.percentage.value>100){
		alert("Please Enter valid Percentage");
		acValidation.percentage.focus();
		return false;
	}
		
	else
	return true;
}
function checkEmpty(object){
 	if(object.value == ""){
  		return true;
  	}
  	return false;
}
function isNumeric(object) {
	if(isNaN(object.value.trim())) {
	    return true;
	}
	else
	return false; 
}
function dateChk(date){
	var regExpre=/^\(?([0-9]{4})\)?[-]?([0-9]{2})[-]?([0-9]{2})$/;
	if(!regExpre.test(date)){
		return true;
	}	
	return false;
}
function dateCmp(from,to){
	/*var str1 = from;
    var str2 = to;
    var yr1  = parseInt(str1.substring(0,4),10);
    var mon1 = parseInt(str1.substring(5,7),10);
    var dt1  = parseInt(str1.substring(8,10),10);
    var date1 = new Date(yr1, mon1-1, dt1);
    var yr2  = parseInt(str2.substring(0,4),10);
    var mon2 = parseInt(str2.substring(5,7),10);
    var dt2  = parseInt(str2.substring(8,10),10);
    var date2 = new Date(yr2, mon2-1, dt2);*/
    var fromDateSplitArr = from.split('-');
    var dt1  = fromDateSplitArr[0];
    var mon1 = fromDateSplitArr[1];
    var yr1  = fromDateSplitArr[2];

    var toDateSplitArr = to.split('-');
    var dt2  = toDateSplitArr[0];
    var mon2 = toDateSplitArr[1];
    var yr2  = toDateSplitArr[2];
    
    var fromDate = new Date(yr1,getMonthFromString(mon1),dt1);  
    var toDate = new Date(yr2,getMonthFromString(mon2),dt2);  
    var result; 
    if(fromDate < toDate) {
    	result = true;
    }
    else {
    	result = false;
    } 
    return result;
}

function getMonthFromString(mon){
	   return new Date(Date.parse(mon +" 1, 2012")).getMonth();
	}

function validateExperience() {
	var expValidation = document.getElementById('experience');

	if(checkEmpty(expValidation.companyName)||
		checkEmpty(expValidation.description)||
		expValidation.fromDate.value==""||
		expValidation.toDate.value=="")
		{
			alert("All fields must be filled.");			
			return false;
		}

	if(!dateCmp(expValidation.fromDate.value,expValidation.toDate.value)){
        alert("To date can not less than from date");
		return false;
	 }

	 return true;
	/*else if(isAlpha(expValidation.companyName)) {
					alert("Company name must be valid.");			
					return false;
			}
	else if(isAlpha(expValidation.description)) {
					alert("Designation must be valid.");				
					return false;
			}
	else  if(dateChk(expValidation.fromDate.value)){
					alert("From date must be valid.");
					return false;
			}
	else if(dateChk(expValidation.toDate.value)){
		    var d = new Date(expValidation.toDate.value);
                    alert(d);
					alert("To date must be valid.");
					return false;
			}
	else if(dateCmp(expValidation.fromDate.value,expValidation.toDate.value)){
		         alert("To date can not less than from date");
					return false;
			 }
	else*/
}



function isAlpha(object)
 {
	var Alphabet = "^[a-zA-Z]+$";				
	var name = object.value;
	name.trim();
	if (name.search(Alphabet) != 0)
	{					
	   	return true;
	    }
	  return false; 
}

function validEmail(object){
	  var emailRegEx = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	  if(object.value.match(emailRegEx)){
			return false;
	  } else {
			return true;
	 }
}	

function validatePersonal() {
	var perValidation = document.getElementById('personal');
	if(checkEmpty(perValidation.firstName) || perValidation.firstName.value.trim() == '') {
			alert("First name must be valid.");
			perValidation.firstName.focus();
			return false;
	}else if(checkEmpty(perValidation.lastName)|| perValidation.lastName.value.trim() == '') {
		alert("Last name must be valid.");
		perValidation.lastName.focus();
		return false;
	}else if(checkEmpty(perValidation.emailId) || validEmail(perValidation.emailId)) {
		alert("Please enter valid email.");
		perValidation.emailId.focus();
		return false;
	}/*else if(!checkEmpty(perValidation.mobileNumber)){
		if(isNumeric(perValidation.mobileNumber)) {
			alert("Mobile number must be valid.");
			perValidation.mobileNumber.focus();
			return false;
		}else
			return true;
	}else if(!checkEmpty(perValidation.phoneNumber)){
		if(isNumeric(perValidation.phoneNumber)) {
			alert("Phone number must be valid.");
			perValidation.phoneNumber.focus();
			return false;
		}else
			return true;
	}*/else {
		return true;
	}
}


var state;
 
             state = "0";
            

           
window.onload=function tabshow()
 { 
   var div = document.getElementById('mytab1');
         rt_tabAutomatic(div);

        if(state=="0" )
       {            
	     document.getElementById('mytab1').rt_tab.tabShow(0);
       }
       else
       {
    	   document.getElementById('mytab1').rt_tab.tabShow(state); 
        }	 
}

function setState(stateId){
	var frm = document.forms["PersonalInfoForm"]; 
	var countryId = frm.country.value;
	$.post("showstate.do", {
		companyId : countryId,
		stateId  : stateId
	}, function(data) {
		if (data == null) {
			message(container, "User haven't added their details");
		} else {
			//
			document.getElementById("state").innerHTML =data;
		}
	});
}

function setOtherOption(){	
	var acValidation = document.getElementById('acdemic');	
	if(acValidation.university.value.toString()=='Other'){
		document.getElementById("otherValueID").style.display="";
	}else{
		document.getElementById("otherValueID").style.display="none";
	}
}
</script><style type="text/css">.tabber{display:none;}</style>
<style type="text/css">
.back {
	background-color: red;
}

.ui-datepicker {
	width: 17em;
	padding: .2em .2em 0;
	z-index: 9999 !important;
}
</style>
</head>
<body>
	

	<div id="wrapper">
		<div id="header">
    <h1><a href="http://www. .com/a/userhome.do"><img src="./My Profile -   Online Exam to Evaluate Knowledge_files/logo-blue.png" alt=" "></a></h1>
		<ul id="nav">
			<li>
				 
				
			</li>
			<li><a href="http://www. .com/a/logout.do" title="Logout">Logout</a></li>
		</ul>
</div>
		<!--HEADER ENDS HERE-->
		<div id="content">
			<div id="sidebar">
				<ul class="sidebar_nav">
					<li><a href="./scheduledExam1.html" class="active">Scheduled Exams</a></li>
					<li><a href="./givenExam.htm">Given Exams</a></li>
					<li><a href="./myProfile.htm">My Profile</a></li>
					<li><a href="./changePassword.htm">Change Password</a></li>
				<div class="sidebar_note message note"><p>You may add, edit/update your Personal, Academics and Experience details for your profile.</p></div>
			</div>
				
				
			<div id="main">
			<h3>My Profile</h3>
			<hr>
				<div id="basic-modal-content">
					<div align="center">

						<div id="editdialog1" style="display: none;">
							<form name="AcademicInfoForm" id="acdemic" method="post" action="http://www. .com/a/academicInfo.do">

								<table>
									<tbody><tr>
										<td><label>Qualification: </label></td>
										<td><select name="qualification" id="qualificationId"><option value="0">Select</option>

<option value="Class 10">Class 10</option>

<option value="Class 12">Class 12</option>
					
<option value="B.A">B.A</option>

<option value="B.Arch">B.Arch</option>

<option value="B.B.A">B.B.A</option>

<option value="BCA">BCA</option>

<option value="B.Com">B.Com</option>

<option value="BDS">BDS</option>

<option value="B.E/B.Tech">B.E/B.Tech</option>

<option value="B.Ed">B.Ed</option>

<option value="BHM">BHM</option>

<option value="BL/LLB">BL/LLB</option>

<option value="B.Pharm">B.Pharm</option>

<option value="B.Sc">B.Sc</option>

<option value="Diploma/ITI">Diploma/ITI</option>

<option value="MBBS">MBBS</option>

<option value="MBA">MBA</option>

<option value="MD/MS">MD/MS</option>

<option value="CA">CA</option>

<option value="CS">CS</option>

<option value="ICWA">ICWA</option>

<option value="MVSC">MVSC</option>

<option value="Software Engineering">Software Engineering</option>

<option value="BJ(MC)">BJ(MC)</option>

<option value="PGDJMC">PGDJMC</option>

<option value="BISc">BISc</option>

<option value="GNM">GNM</option>

<option value="ANM">ANM</option>

<option value="M.A">M.A</option>

<option value="M.Arch">M.Arch</option>

<option value="MCA">MCA</option>

<option value="M.Com">M.Com</option>

<option value="M.Ed">M.Ed</option>

<option value="M.E/M.Tech/MS">M.E/M.Tech/MS</option>

<option value="ML/LLM">ML/LLM</option>

<option value="M.Pharm">M.Pharm</option>

<option value="Mphil">Mphil</option>

<option value="M.Sc">M.Sc</option>

<option value="Integrated PG">Integrated PG</option>


<option value="MCM">MCM</option>

<option value="PGDCA">PGDCA</option>

<option value="PG Diploma">PG Diploma</option>

<option value="PGDM">PGDM</option>

<option value="Ph.D/Doctorate">Ph.D/Doctorate</option>

<option value="MFA">MFA</option>

<option value="Other">Other</option></select></td>
									</tr>
									<tr>
										<td><label> University/Board:</label></td>
										<td><select name="university" onchange="setOtherOption();"><option value="0">Select</option>
												
												<optgroup label="Other"></optgroup>
												<option value="Other">Other</option></select></td>
									</tr>
									<tr id="otherValueID" style="display: none;">
										<td><label> Other:</label></td>
										<td><input type="text" name="otherUniversityValue" value=""></td>
									</tr>
									<tr>
										<td><label> Yearing of Passing:</label></td>
										<td><select name="passingYear"><option value="0">Year</option>
												
												<option value="1960">1960</option>
												
												<option value="1961">1961</option>
												
												<option value="1962">1962</option>
												
												<option value="1963">1963</option>
												
												<option value="1964">1964</option>
												
												<option value="1965">1965</option>
												
												<option value="1966">1966</option>
												
												<option value="1967">1967</option>
												
												<option value="1968">1968</option>
												
												<option value="1969">1969</option>
												
												<option value="1970">1970</option>
												
												<option value="1971">1971</option>
												
												<option value="1972">1972</option>
												
												<option value="1973">1973</option>
												
												<option value="1974">1974</option>
												
												<option value="1975">1975</option>
												
												<option value="1976">1976</option>
												
												<option value="1977">1977</option>
												
												<option value="1978">1978</option>
												
												<option value="1979">1979</option>
												
												<option value="1980">1980</option>
												
												<option value="1981">1981</option>
												
												<option value="1982">1982</option>
												
												<option value="1983">1983</option>
												
												<option value="1984">1984</option>
												
												<option value="1985">1985</option>
												
												<option value="1986">1986</option>
												
												<option value="1987">1987</option>
												
												<option value="1988">1988</option>
												
												<option value="1989">1989</option>
												
												<option value="1990">1990</option>
												
												<option value="1991">1991</option>
												
												<option value="1992">1992</option>
												
												<option value="1993">1993</option>
												
												<option value="1994">1994</option>
												
												<option value="1995">1995</option>
												
												<option value="1996">1996</option>
												
												<option value="1997">1997</option>
												
												<option value="1998">1998</option>
												
												<option value="1999">1999</option>
												
												<option value="2000">2000</option>
												
												<option value="2001">2001</option>
												
												<option value="2002">2002</option>
												
												<option value="2003">2003</option>
												
												<option value="2004">2004</option>
												
												<option value="2005">2005</option>
												
												<option value="2006">2006</option>
												
												<option value="2007">2007</option>
												
												<option value="2008">2008</option>
												
												<option value="2009">2009</option>
												
												<option value="2010">2010</option>
												
												<option value="2011">2011</option>
												
												<option value="2012">2012</option>
												
												<option value="2013">2013</option>
												
												<option value="2014">2014</option></select></td>
									</tr>
									<tr>
										<td><label> Percentage:</label></td>
										<td><input type="text" name="percentage" value="" onkeypress="return isNumberKey(event);"> <input type="hidden" name="operation" value=""> <input type="hidden" name="academicId" value="0"></td>
									</tr>
									<tr>
										<td colspan="2" align="right"><input type="submit" value="Save" onclick="return validateAcademics();" class="btn_green"></td>
									</tr>
								</tbody></table>
							</form>
						</div>

						

						<div id="editdialog3" style="display: none;">
							<form name="TechInfoForm" id="tech" method="post" action="http://www. .com/a/techInfo.do">
								<table>
									<tbody><tr>
										<td><label> Technology:</label></td>
										<td><select name="technology"><option>Select</option>
												
													
														<option value="Java">Java</option>
													
														<option value="J2EE">J2EE</option>
													
														<option value="Struts">Struts</option></select></td>
									</tr>
									<tr>
										<td><label>Skills:</label></td>
										<td><select name="skills"><option value="Select">Select</option>
												<option value="Basic">Basic</option>
												<option value="Intermediate">Intermediate</option>
												<option value="Expert">Expert</option></select></td>
									</tr>
									<tr>
										<td colspan="2" align="right"><input type="hidden" name="operation" value=""> <input type="hidden" name="techId" value="0">
										<input type="submit" value="Save" onclick="return validateTechnology();" class="btn_green"></td>
									</tr>
								</tbody></table>
							</form>
						</div>

						<div id="editdialog4" style="display: none;">
							<form name="TechInfoForm" id="tech1" method="post" action="http://www. .com/a/techInfo.do">
								
									<table>
										<tbody><tr>
											<td><label> Technology:</label></td>
											<td><select name="technology"><option>Select</option>
													
														
															<option value="Java">Java</option>
														
															<option value="J2EE">J2EE</option>
														
															<option value="Struts">Struts</option></select></td>
										</tr>
										<tr>
											<td><label>Skills:</label></td>
											<td><select name="skills"><option value="Select">Select</option>
													<option value="Basic">Basic</option>
													<option value="Intermediate">Intermediate</option>
													<option value="Expert">Expert</option></select></td>
										</tr>
										<tr>
											<td><input type="hidden" name="operation" value=""> <input type="hidden" name="techId" value="0"></td>
											<td><input type="submit" value="Save" onclick="return editValidateTechnology();" class="btn_green"></td>
										</tr>
									</tbody></table>

								</form>
							
						</div>

					</div>
				</div>


				<div class="rt_tablive" id="mytab1"><ul class="rt_tabnav"><li class="rt_tabactive"><a href="javascript:void(null);" title="Personal">Personal</a></li><li class=""><a href="javascript:void(null);" title="Academics">Academics</a></li><li class=""><a href="javascript:void(null);" title="Experience">Experience</a></li></ul>
					<div class="rt_tabtab  " title="">
						<div id="fill_info">
							<h2>Personal</h2>
							<form name="PersonalInfoForm" id="personal" method="post" action="http://www. .com/a/personalInfo.do">
								

								<p class="message invalid">No Record Present.</p> 
            						<h3>fill your details</h3>
									<table class="display">
										<thead>
											<tr>
												<th colspan="4" scope="col">Personal Details</th>
												<!--<th scope="col">Page Actions</th>-->
											</tr>
										</thead>

										<tbody>
											<tr>
												<td><label>first name:</label></td>
												<td colspan="3">
													<select name="title"><option value="Mr.">Mr.</option>
														<option value="Mrs.">Mrs.</option>
														<option value="Miss.">Miss.</option></select>
													<input type="text" name="firstName" value="" placeholder="First Name">
												 	<input type="text" name="lastName" value="" placeholder="Last Name"><span class="mandatory">*</span>
												</td>
											</tr>
											<tr>
												<td><label>address 1:</label></td>
												<td><input type="text" name="address1" value=""> 
												</td>

												<td><label>address 2:</label></td>
												<td><input type="text" name="address2" value=""> 
												</td>

											</tr>
											<tr>
												<td><label>Country:</label></td>
												<td>
														<select name="country" onchange="setState(&#39;&#39;)" style="width : 193px;"><option value="1">Afghanistan</option>
															
																<option value="2">Albania</option>
															
																<option value="3">Algeria</option>
															
																<option value="4">American Samoa</option>
															
																<option value="5">Angola</option>
															
																<option value="6">Anguilla</option>
															
																<option value="7">Antartica</option>
															
																<option value="8">Antigua and Barbuda</option>
															
																<option value="9">Argentina</option>
															
																<option value="10">Armenia</option>
															
																<option value="11">Aruba</option>
															
																<option value="12">Ashmore and Cartier Island</option>
															
																<option value="13">Australia</option>
															
																<option value="14">Austria</option>
															
																<option value="15">Azerbaijan</option>
															
																<option value="16">Bahamas</option>
															
																<option value="17">Bahrain</option>
															
																<option value="18">Bangladesh</option>
															
																<option value="19">Barbados</option>
															
																<option value="20">Belarus</option>
															
																<option value="21">Belgium</option>
															
																<option value="22">Belize</option>
															
																<option value="23">Benin</option>
															
																<option value="24">Bermuda</option>
															
																<option value="25">Bhutan</option>
															
																<option value="26">Bolivia</option>
															
																<option value="27">Bosnia and Herzegovina</option>
															
																<option value="28">Botswana</option>
															
																<option value="29">Brazil</option>
															
																<option value="30">British Virgin Islands</option>
															
																<option value="31">Brunei</option>
															
																<option value="32">Bulgaria</option>
															
																<option value="33">Burkina Faso</option>
															
																<option value="34">Burma</option>
															
																<option value="35">Burundi</option>
															
																<option value="36">Cambodia</option>
															
																<option value="37">Cameroon</option>
															
																<option value="38">Canada</option>
															
																<option value="39">Cape Verde</option>
															
																<option value="40">Cayman Islands</option>
															
																<option value="41">Central African Republic</option>
															
																<option value="42">Chad</option>
															
																<option value="43">Chile</option>
															
																<option value="44">China</option>
															
																<option value="45">Christmas Island</option>
															
																<option value="46">Clipperton Island</option>
															
																<option value="47">Cocos (Keeling) Islands</option>
															
																<option value="48">Colombia</option>
															
																<option value="49">Comoros</option>
															
																<option value="50">Congo, Democratic Republic of the</option>
															
																<option value="51">Congo, Republic of the</option>
															
																<option value="52">Cook Islands</option>
															
																<option value="53">Costa Rica</option>
															
																<option value="54">Cote d Ivoire</option>
															
																<option value="55">Croatia</option>
															
																<option value="56">Cuba</option>
															
																<option value="57">Cyprus</option>
															
																<option value="58">Czeck Republic</option>
															
																<option value="59">Denmark</option>
															
																<option value="60">Djibouti</option>
															
																<option value="61">Dominica</option>
															
																<option value="62">Dominican Republic</option>
															
																<option value="63">Ecuador</option>
															
																<option value="64">Egypt</option>
															
																<option value="65">El Salvador</option>
															
																<option value="66">Equatorial Guinea</option>
															
																<option value="67">Eritrea</option>
															
																<option value="68">Estonia</option>
															
																<option value="69">Ethiopia</option>
															
																<option value="70">Europa Island</option>
															
																<option value="71">Falkland Islands (Islas Malvinas)</option>
															
																<option value="72">Faroe Islands</option>
															
																<option value="73">Fiji</option>
															
																<option value="74">Finland</option>
															
																<option value="75">France</option>
															
																<option value="76">French Guiana</option>
															
																<option value="77">French Polynesia</option>
															
																<option value="78">French Southern and Antarctic Lands</option>
															
																<option value="79">Gabon</option>
															
																<option value="80">Gambia, The</option>
															
																<option value="81">Gaza Strip</option>
															
																<option value="82">Georgia</option>
															
																<option value="83">Germany</option>
															
																<option value="84">Ghana</option>
															
																<option value="85">Gibraltar</option>
															
																<option value="86">Glorioso Islands</option>
															
																<option value="87">Greece</option>
															
																<option value="88">Greenland</option>
															
																<option value="89">Grenada</option>
															
																<option value="90">Guadeloupe</option>
															
																<option value="91">Guam</option>
															
																<option value="92">Guatemala</option>
															
																<option value="93">Guernsey</option>
															
																<option value="94">Guinea</option>
															
																<option value="95">Guinea-Bissau</option>
															
																<option value="96">Guyana</option>
															
																<option value="97">Haiti</option>
															
																<option value="98">Heard Island and McDonald Islands</option>
															
																<option value="99">Holy See (Vatican City)</option>
															
																<option value="100">Honduras</option>
															
																<option value="101">Hong Kong</option>
															
																<option value="102">Howland Island</option>
															
																<option value="103">Hungary</option>
															
																<option value="104">Iceland</option>
															
																<option value="105">India</option>
															
																<option value="106">Indonesia</option>
															
																<option value="107">Iran</option>
															
																<option value="108">Iraq</option>
															
																<option value="109">Ireland</option>
															
																<option value="110">Ireland, Northern</option>
															
																<option value="111">Israel</option>
															
																<option value="112">Italy</option>
															
																<option value="113">Jamaica</option>
															
																<option value="114">Jan Mayen</option>
															
																<option value="115">Japan</option>
															
																<option value="116">Jarvis Island</option>
															
																<option value="117">Jersey</option>
															
																<option value="118">Johnston Atoll</option>
															
																<option value="119">Jordan</option>
															
																<option value="120">Juan de Nova Island</option>
															
																<option value="121">Kazakhstan</option>
															
																<option value="122">Kenya</option>
															
																<option value="123">Kiribati</option>
															
																<option value="124">Korea, North</option>
															
																<option value="125">Korea, South</option>
															
																<option value="126">Kuwait</option>
															
																<option value="127">Kyrgyzstan</option>
															
																<option value="128">Laos</option>
															
																<option value="129">Latvia</option>
															
																<option value="130">Lebanon</option>
															
																<option value="131">Lesotho</option>
															
																<option value="132">Liberia</option>
															
																<option value="133">Libya</option>
															
																<option value="134">Liechtenstein</option>
															
																<option value="135">Lithuania</option>
															
																<option value="136">Luxembourg</option>
															
																<option value="137">Macau</option>
															
																<option value="138">Macedonia, The Former Yugoslav Republic of</option>
															
																<option value="139">Madagascar</option>
															
																<option value="140">Malawi</option>
															
																<option value="141">Malaysia</option>
															
																<option value="142">Maldives</option>
															
																<option value="143">Mali</option>
															
																<option value="144">Malta</option>
															
																<option value="145">Man, Isle of</option>
															
																<option value="146">Marshall Islands</option>
															
																<option value="147">Martinique</option>
															
																<option value="148">Mauritania</option>
															
																<option value="149">Mauritius</option>
															
																<option value="150">Mayotte</option>
															
																<option value="151">Mexico</option>
															
																<option value="152">Micronesia, Federated States of</option>
															
																<option value="153">Midway Islands</option>
															
																<option value="154">Moldova</option>
															
																<option value="155">Monaco</option>
															
																<option value="156">Mongolia</option>
															
																<option value="157">Montserrat</option>
															
																<option value="158">Morocco</option>
															
																<option value="159">Mozambique</option>
															
																<option value="160">Namibia</option>
															
																<option value="161">Nauru</option>
															
																<option value="162">Nepal</option>
															
																<option value="163">Netherlands</option>
															
																<option value="164">Netherlands Antilles</option>
															
																<option value="165">New Caledonia</option>
															
																<option value="166">New Zealand</option>
															
																<option value="167">Nicaragua</option>
															
																<option value="168">Niger</option>
															
																<option value="169">Nigeria</option>
															
																<option value="170">Niue</option>
															
																<option value="171">Norfolk Island</option>
															
																<option value="172">Northern Mariana Islands</option>
															
																<option value="173">Norway</option>
															
																<option value="174">Oman</option>
															
																<option value="175">Pakistan</option>
															
																<option value="176">Palau</option>
															
																<option value="177">Panama</option>
															
																<option value="178">Papua New Guinea</option>
															
																<option value="179">Paraguay</option>
															
																<option value="180">Peru</option>
															
																<option value="181">Philippines</option>
															
																<option value="182">Pitcaim Islands</option>
															
																<option value="183">Poland</option>
															
																<option value="184">Portugal</option>
															
																<option value="185">Puerto Rico</option>
															
																<option value="186">Qatar</option>
															
																<option value="187">Reunion</option>
															
																<option value="188">Romainia</option>
															
																<option value="189">Russia</option>
															
																<option value="190">Rwanda</option>
															
																<option value="191">Saint Helena</option>
															
																<option value="192">Saint Kitts and Nevis</option>
															
																<option value="193">Saint Lucia</option>
															
																<option value="194">Saint Pierre and Miquelon</option>
															
																<option value="195">Saint Vincent and the Grenadines</option>
															
																<option value="196">Samoa</option>
															
																<option value="197">San Marino</option>
															
																<option value="198">Sao Tome and Principe</option>
															
																<option value="199">Saudi Arabia</option>
															
																<option value="200">Scotland</option>
															
																<option value="201">Senegal</option>
															
																<option value="202">Seychelles</option>
															
																<option value="203">Sierra Leone</option>
															
																<option value="204">Singapore</option>
															
																<option value="205">Slovakia</option>
															
																<option value="206">Slovenia</option>
															
																<option value="207">Solomon Islands</option>
															
																<option value="208">Somalia</option>
															
																<option value="209">South Africa</option>
															
																<option value="210">South Georgia and the South Sandwich Islandss</option>
															
																<option value="211">Spain</option>
															
																<option value="212">Spratly Islands</option>
															
																<option value="213">Sri Lanka</option>
															
																<option value="214">Sudan</option>
															
																<option value="215">Suriname</option>
															
																<option value="216">Svalbard</option>
															
																<option value="217">Swaziland</option>
															
																<option value="218">Sweden</option>
															
																<option value="219">Switzerland</option>
															
																<option value="220">Syria</option>
															
																<option value="221">Taiwan</option>
															
																<option value="222">Tajikistan</option>
															
																<option value="223">Tanzania</option>
															
																<option value="224">Thailand</option>
															
																<option value="225">Tobago</option>
															
																<option value="226">Toga</option>
															
																<option value="227">Tokelau</option>
															
																<option value="228">Tonga</option>
															
																<option value="229">Trinidad</option>
															
																<option value="230">Tunisia</option>
															
																<option value="231">Turkey</option>
															
																<option value="232">Turkmenistan</option>
															
																<option value="233">Tuvalu</option>
															
																<option value="234">Uganda</option>
															
																<option value="235">Ukraine</option>
															
																<option value="236">United Arab Emirates</option>
															
																<option value="237">United Kingdom</option>
															
																<option value="238">Uruguay</option>
															
																<option value="239" selected="selected">USA</option>
															
																<option value="240">Uzbekistan</option>
															
																<option value="241">Vanuatu</option>
															
																<option value="242">Venezuela</option>
															
																<option value="243">Vietnam</option>
															
																<option value="244">Virgin Islands</option>
															
																<option value="245">Wales</option>
															
																<option value="246">Wallis and Futuna</option>
															
																<option value="247">West Bank</option>
															
																<option value="248">Western Sahara</option>
															
																<option value="249">Yemen</option>
															
																<option value="250">Yugoslavia</option>
															
																<option value="251">Zambia</option>
															
																<option value="252">Zimbabwe</option></select>
													 
												</td>

												<td><label>State:</label></td>

												<td>
													<span id="state"><select property="state" name="state"><option value="4164">Alabama</option><option value="4165">Alaska</option><option value="4166">Arizona</option><option value="4167">Arkansas</option><option value="4168">California</option><option value="4169">Colorado</option><option value="4170">Connecticut</option><option value="4171">Delaware</option><option value="4172">District of Columbia</option><option value="4173">Florida</option><option value="4174">Georgia</option><option value="4175">Hawaii</option><option value="4176">Idaho</option><option value="4177">Illinois</option><option value="4178">Indiana</option><option value="4179">Iowa</option><option value="4180">Kansas</option><option value="4181">Kentucky</option><option value="4182">Louisiana</option><option value="4183">Maine</option><option value="4184">Maryland</option><option value="4185">Massachusetts</option><option value="4186">Michigan</option><option value="4187">Minnesota</option><option value="4188">Mississippi</option><option value="4189">Missouri</option><option value="4190">Montana</option><option value="4191">Nebraska</option><option value="4192">Nevada</option><option value="4193">New Hampshire</option><option value="4194">New Jersey</option><option value="4195">New Mexico</option><option value="4196">New York</option><option value="4197">North Carolina</option><option value="4198">North Dakota</option><option value="4199">Ohio</option><option value="4200">Oklahoma</option><option value="4201">Oregon</option><option value="4202">Pennsylvania</option><option value="4203">Rhode Island</option><option value="4204">South Carolina</option><option value="4205">South Dakota</option><option value="4206">Tennessee</option><option value="4207">Texas</option><option value="4208">Utah</option><option value="4209">Vermont</option><option value="4210">Virginia</option><option value="4211">Washington</option><option value="4212">West Virginia</option><option value="4213">Wisconsin</option><option value="4214">Wyoming</option></select></span>
												</td>
											</tr>
											<script type="text/javascript">setState(0);</script>
											<tr>
												<td><label>city:</label></td>
												<td><input type="text" name="city" value=""> 
												</td>
												<td><label>Email ID:</label></td>
												<td><input type="text" name="emailId" value="jai.mail67@gmail.com" readonly="readonly"> <span class="mandatory">*</span>
												</td>

											</tr>
											<tr>
												<td><label>Mobile number:</label></td>
												<td><input type="text" name="mobileNumber" value=""> 
												</td>

												<td><label>birth date:</label></td>
												<td><input type="text" name="birthdate" value="" readonly="readonly" id="bdate" class="hasDatepicker"><img class="ui-datepicker-trigger" src="./My Profile -   Online Exam to Evaluate Knowledge_files/cal.png" alt="..." title="..."> <script type="text/javascript">
							$(document).ready(function() {										
							$("#bdate").datepicker({dateFormat: 'dd-M-yy',showOn: 'both', buttonImage: 'images/cal.png',changeMonth: true , buttonImageOnly: true,changeYear: true,yearRange: '1950:2021'});										
							});
							</script> <input type="hidden" name="operation" value="add"> <input type="hidden" name="personalId" value="0"> </td>


											</tr>
											<tr>
												<td><label>Telephone No:</label></td>
												<td><input type="text" name="phoneNumber" value="">
												</td>

												<td></td>
												<td></td>
											</tr>
										</tbody>

									</table>
								<p style="text-align: center;">
								<button class="btn_green" onclick="return savePersonal();">Save</button>
										<!--<input type="submit" value="Save" onclick="return savePersonal();" class="btn_green">-->
									</p>
								
							</form>
						</div>
						<!-- INFO ENDS HERE -->
					</div>

					<div class="rt_tabtab rt_tabtabhide" title="">
						<div id="fill_info">
							<h2>Academics</h2>
							
							<p class="message invalid">No Record Present.</p> 
         						 <center>
									<button class="btn_green" onclick="addacademics();">
										<span>Add</span>
									</button>
								</center>
							
						</div>
					</div>
					<!-- TAB TABBER 1 ENDS HERE-->

					<div class="rt_tabtab rt_tabtabhide" title="">
						<div id="fill_info">
							<h2>Experience</h2>
							
							<div id="editdialog2" style="display: none;">
							<form name="ExperienceInfoForm" id="experience" method="post" action="http://www. .com/a/experienceInfo.do">
								<table class="display">
									<tbody><tr>
										<td><label>Company Name: </label></td>
										<td><input type="text" name="companyName" value=""></td>
										<td><label> Designation: </label></td>
										<td><input type="text" name="description" value=""></td>
									</tr>
									<tr>
										<td><label> From Date:</label></td>
										<td><input type="text" name="fromDate" value="" readonly="readonly" id="fromdate" class="hasDatepicker"><img class="ui-datepicker-trigger" src="./My Profile -   Online Exam to Evaluate Knowledge_files/cal.png" alt="..." title="..."> <script type="text/javascript">
							$(document).ready(function() {										
							$("#fromdate").datepicker({dateFormat: 'dd-M-yy',showOn: 'both', buttonImage: 'images/cal.png',changeMonth: true , buttonImageOnly: true,changeYear: true,yearRange: '1950:2021'});										
							});
							</script></td>
										<td><label>To Date:</label></td>
										<td><input type="text" name="toDate" value="" readonly="readonly" id="todate" class="hasDatepicker"><img class="ui-datepicker-trigger" src="./My Profile -   Online Exam to Evaluate Knowledge_files/cal.png" alt="..." title="..."> <script type="text/javascript">
							$(document).ready(function() {										
							$("#todate").datepicker({dateFormat: 'dd-M-yy',showOn: 'both', buttonImage: 'images/cal.png',changeMonth: true , buttonImageOnly: true,changeYear: true,yearRange: '1950:2021'});										
							});
							</script></td>
									</tr>
									<tr>
										<td colspan="4" align="right"><input type="hidden" name="operation" value=""> <input type="hidden" name="experienceId" value="0">
										<input type="submit" value="Save" onclick="return validateExperience();" class="btn_green"></td>
									</tr>
								</tbody></table>
							</form>
						</div>
							

							
							<p id="info" class="message invalid">No Record Present.</p>
          						<center>
									<button class="btn_green" onclick="addexperience();">
										<span>Add</span>
									</button>
								</center>
							
						</div>
					</div>
					<!-- TAB TABBER 2 ENDS HERE-->

					<!-- TAB TABBER 3 ENDS HERE -->

					
					<!-- TAB TABBER 4 ENDS HERE-->
				</div>
				<!--RT_TABBER SECTION ENDS HERE-->
			</div>
		</div>
</div>
<script>
setOtherOption();
</script>
<script type="text/javascript" charset="utf-8">				
	$(document).ready(function() {			
		Feedback({h2cPath: '/a' +  '/js/feedback/html2canvas.js' , url:'/a' +'/feedback' });			
	} );
</script>


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-helper-hidden-accessible"></div> </body></html>