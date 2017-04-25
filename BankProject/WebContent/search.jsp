<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0032)http://www. .com/a/group.do -->
<html lang="en" class="win chrome chrome3 webkit webkit5">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>STExams | Web-based online examination software</title>

<link href="css/style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css"
	media="screen">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

<script type="text/javascript">
	function showData(value) {

		xmlHttp = GetXmlHttpObject()
		var url = "groupnamesearch.spring";
		url = url + "?gname=" + value;
		xmlHttp.onreadystatechange = stateChanged
		xmlHttp.open("GET", url, true)
		xmlHttp.send(null)
	}
	function stateChanged() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			var showdata = xmlHttp.responseText;
			document.getElementById("Tbody").innerHTML = showdata;
		}
	}
	function GetXmlHttpObject() {
		var xmlHttp = null;
		try {
			xmlHttp = new XMLHttpRequest();
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
		return xmlHttp;
	}
</script>
</head>
<body>
	<div class="dataTables_filter" id="example_filter">
		<label>Search: <input type="text"
			onkeyup="showData(this.value);" aria-controls="example"></label>
	</div>
	<!-- 
form action
Search <input type="text" name="key">
<input type="submit" value="Search">
 -->
 <div id=Tbody>
						<table class="display dataTable" id="example"
							aria-describedby="example_info">
							<thead>
								<tr role="row">
									<th scope="col" class="sorting_asc" role="columnheader"
										tabindex="0" aria-controls="example" rowspan="1" colspan="1"
										aria-sort="ascending"
										aria-label="Group Name: activate to sort column descending"
										style="width: 921px;">Group Name</th>
									<th scope="col" align="center" class="sorting_asc"
										role="columnheader" tabindex="0" aria-controls="example"
										rowspan="1" colspan="1"
										aria-label="Options: activate to sort column ascending"
										style="width: 97px;">Options</th>
								</tr>
							</thead>
							<c:forEach var="e" items="${grouplist}">
								<tbody role="alert" aria-live="polite" aria-relevant="all">
									<tr class="odd">

										<td width="80%" class=" sorting_1"><span
											style="float: left;"> </span> ${e.getGroupname()}  (${e.getGroupCount()})</td>

										<td width="10%" align="center" class=" sorting_2"><a
											href="#" onclick="#"> <img src=" Users_files\edit.png"
												title="Edit">
										</a>&nbsp;<a
											href="groupnamedelete.spring?gname=${e.getGroupname()}"
											class="basicDelete" onclick="return doLevelDelete(1985);">
												<img src=" Users_files/delete.png" title="Delete">
										</a></td>
									</tr>
							</c:forEach>
							</tbody>
						</table>





						<div class="dataTables_info" id="example_info">
							Showing 1 to 5 of <b> ${param.pageNo} </b>entries
							<div style="position: absolute; top: left: 500px;">
								<h6>
									<a href="users.spring?operation=first">First</a> | &nbsp;
									<%--For displaying Previous link except for the 1st page --%>
									<c:if test="${param.pageNo> 1}">

										<td><a href="users.spring?pageNo=${param.pageNo-1}">Previous
												&nbsp;</a></td>
									</c:if>

									<c:forEach begin="1" end="${i}" var="j">
										<c:choose>
											<c:when test="${param.pageNo eq j}">
												<td>${j}</td>
											</c:when>
											<c:otherwise>
												<a href="users.spring?pageNo=${j}">${j} </a>&nbsp; 
									</c:otherwise>
										</c:choose>
									</c:forEach>

									<%--For displaying Next link --%>

									<c:if test="${param.pageNo lt i}">
										<td><a href="users.spring?pageNo=${param.pageNo+1}">Next
												&nbsp; </a></td>
									</c:if>

									| &nbsp;<a href="users.spring?operation=last">Last</a>
								</h6>
							</div>


						</div>
						<div class="dataTables_paginate paging_two_button"
							id="example_paginate">
							<c:if test="${param.pageNo> 1}">
								<a class="paginate_disabled_previous"
									href="users.spring?pageNo=${param.pageNo-1}" tabindex="0"
									role="button" id="example_previous" aria-controls="example"></a>
							</c:if>
							<c:if test="${param.pageNo lt i}">
								<a class="paginate_disabled_next"
									 href="users.spring?pageNo=${param.pageNo+1}" tabindex="0" role="button"
									id="example_next" aria-controls="example"></a>
							</c:if>
						</div>
					</div>
				</div>
 
 <div id="basic-modal-content">
					<div align="center">
						<table>

							<form name="GroupForm" method="post" action="#"></form>
							<input type="hidden" name="operation" value="">
							<tbody>
								<tr>
									<td><input type="hidden" name="groupid" value="0"></td>
								</tr>
								<tr>
									<td>Group:</td>
									<td><input type="text" name="groupname" value=""
										id="groupname"></td>
									<td><input type="hidden" name="startPage" value="1"></td>
								</tr>
								<tr>
									<td colspan="2">
										<center>
											<input type="submit" value="Ok"
												onclick="doSubmit();return false;">
										</center>
									</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
</body>
</html>