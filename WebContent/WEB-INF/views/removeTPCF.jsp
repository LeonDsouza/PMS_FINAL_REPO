<!-- author: Pankaj sankpal , @author Adarsh\\\\\
description: contain field for removing the student tpc -->
<!-- -------------------------------------------------------------------------------------------------------- -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remove Student TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		<link rel="stylesheet" href="assets/css/datepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />



</head>

	<body>
<jsp:directive.include file="Header.jsp" />

<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<!-- <ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">More Pages</a>
							</li>
							<li class="active">User Profile</li>
						</ul>/.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="on" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								Logged in as
								<core:out value="${loginForm.userName}" />
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="widget-box">
								<div class="widget-body">
								 <div class="widget-main" align="center">
									<h2>Remove Student TPC</h2>
										<form:form method="POST" action="SubmitRemoveTPCF">
											<table>
												<tr>
													<td><form:label path="userName">User name:</form:label></td>
													<td><form:input path="userName" /></td>
													<td><form:errors path="userName" cssClass="error" /></td>
												</tr>
												<tr>
													<td colspan="2"><input class="btn btn-sm  btn-primary" type="submit" value="Submit" /></td>
												</tr>
											</table>
										</form:form>
								  </div>
								 </div>
								</div>  
						
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					
					</div><!-- /.page-content -->
				</div>
			
</div>
<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
	
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a person to input Username of the User to be removed as STPC

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Student TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2>Remove Student TPC</h2>
	<form:form method="POST" action="SubmitRemoveTPCF">
		<table>
			<tr>
				<td><form:label path="userName">User name:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	<tr>
		<td><a href="FTPCHome">Home</a></td>
	</tr>
	
</body>
</html>
 --%>