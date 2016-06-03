<!-- author: Pankaj sankpal
description: contains text fields to add details of student manually->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add Students Manually </title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />



<!-- text fonts -->
<link rel="stylesheet" href="../assets/fonts/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="../assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />





<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="../assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>
<body 	onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
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
								<div class="clearfix">
								
										<div class="row">
										<div class="col-xs-12 ">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div>
											
											<form:form method="POST"  modelAttribute="studentBean" action="registerStudent">
											<h2 align="center"><u>Add Student</u></h2>
											<table align="center" style="margin-top: 10px; padding-right: 10px">
												<tr>
													<td>Roll no :</td>
													<td><form:input path="rollno" /></td>
												</tr>
												<tr>
													<td>Name :</td>
													<td><form:input path="name" /></td>
												</tr>
												<tr>
													<td>Branch :</td>
													<td><form:select path="branch">
															<form:option value="0" label="Select" />
															<form:option value="Computer Engineering"  label="Computer" />
															<form:option value="IT Engineering" label="IT" />
															<form:option value="Electronics Engineering" label="Electronics" />
															<form:option value="Production Engineering" label="Production" />
														</form:select></td>
												</tr>
												
												<tr>
													<td>Year of passing :</td>
													<td><form:input path="year" /></td>
												</tr>
												<tr>
													<td>Gender :</td>
													<td><form:radiobutton path="gender" value="MALE" label="Male" />
														<form:radiobutton path="gender" value="FEMALE" label="Female" /></td>
												</tr>
												<tr>
													<td>Date of birth :</td>
													<td><form:input path="dob" /></td>
												</tr>
												<tr>
													<td>Mobile no :</td>
													<td><form:input path="mobile" /></td>
												</tr>
												<tr>
													<td>Email ID :</td>
													<td><form:input path="email" /></td>
												</tr>
												<tr><td></td></tr>
												<tr>
													<td><b><u>Qualification:</u></b></td>
												</tr>
												<tr><td></td></tr>
												<tr>
													<td>SSC percentage :</td>
													<td><form:input path="ssc_per" /></td>
												</tr>
												<tr>
													<td>HSC or Diploma :</td>
													<td><form:select path="hsc_or_dip">
															<form:option value="0" label="Select" />
															<form:option value="HSC" label="HSC" />
															<form:option value="Diploma" label="Diploma" />
									
														</form:select></td>
												</tr>
												<tr>
													<td>HSC or Diploma percentage :</td>
													<td><form:input path="hsc_or_dip_per" /></td>
												</tr>
												<tr>
													<td>Sem1 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s1_marks" /></td>
													<td><form:input path="s1_max" /></td>
													<td><form:input path="s1_percentage" /></td>
													<td><form:select path="s1_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s1_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem2 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s2_marks" /></td>
													<td><form:input path="s2_max" /></td>
													<td><form:input path="s2_percentage" /></td>
													<td><form:select path="s2_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s2_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem3 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s3_marks" /></td>
													<td><form:input path="s3_max" /></td>
													<td><form:input path="s3_percentage" /></td>
													<td><form:select path="s3_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s3_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem4 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s4_marks" /></td>
													<td><form:input path="s4_max" /></td>
													<td><form:input path="s4_percentage" /></td>
													<td><form:select path="s4_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s4_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem5 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s5_marks" /></td>
													<td><form:input path="s5_max" /></td>
													<td><form:input path="s5_percentage" /></td>
													<td><form:select path="s5_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s5_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem6 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s6_marks" /></td>
													<td><form:input path="s6_max" /></td>
													<td><form:input path="s6_percentage" /></td>
													<td><form:select path="s6_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s6_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem7 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s7_marks" /></td>
													<td><form:input path="s7_max" /></td>
													<td><form:input path="s7_percentage" /></td>
													<td><form:select path="s7_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s7_kt" /></td>
												</tr>
									
												<tr>
													<td>Sem8 :</td>
												</tr>
												<tr>
													<td>Marks Obtained</td>
													<td>Maximum marks</td>
													<td>Percentage</td>
													<td>Result</td>
													<td>No. of KTs</td>
												</tr>
												<tr>
													<td><form:input path="s8_marks" /></td>
													<td><form:input path="s8_max" /></td>
													<td><form:input path="s8_percentage" /></td>
													<td><form:select path="s8_result">
															<form:option value="0" label="Select" />
															<form:option value="P" label="Pass" />
															<form:option value="F" label="Fail" />
									
														</form:select></td>
													<td><form:input path="s8_kt" /></td>
												</tr>
												
												<tr>
													<td>Degree percentage :</td>
													<td><form:input path="degree_percentage" /></td>
												</tr>
												
												<tr>
													<td>Total no of KTs :</td>
													<td><form:input path="degree_kt" /></td>
												</tr>
												
												<tr>
													<td>Drops :</td>
													<td><form:input path="drops" /></td>
												</tr>
												<tr></tr><tr></tr>
												<tr>
												
													<td colspan="2" style="padding-top: 10px"><input  class="btn btn-md btn-block btn-success" type="submit" value="Add Student"></td>
												</tr>
											</table>
												
										</form:form>
												<br><br>
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>

										
									</div>
										
								
								
								</div>
							</div>
						</div>
					</div>
				</div>
												


	
		<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />
	
	
		<!-- /.main-container -->

</div>
	
	


</body>
</html>






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<form:form method="POST"  modelAttribute="studentBean" action="registerStudent">
	<h2><u>Add Student</u></h2>
		<table>
			<tr>
				<td>Roll no :</td>
				<td><form:input path="rollno" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Branch :</td>
				<td><form:select path="branch">
						<form:option value="0" label="Select" />
						<form:option value="Computer Engineering"  label="Computer" />
						<form:option value="IT Engineering" label="IT" />
						<form:option value="Electronics Engineering" label="Electronics" />
						<form:option value="Production Engineering" label="Production" />
					</form:select></td>
			</tr>
			
			<tr>
				<td>Year of passing :</td>
				<td><form:input path="year" /></td>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><form:radiobutton path="gender" value="MALE" label="Male" />
					<form:radiobutton path="gender" value="FEMALE" label="Female" /></td>
			</tr>
			<tr>
				<td>Date of birth :</td>
				<td><form:input path="dob" /></td>
			</tr>
			<tr>
				<td>Mobile no :</td>
				<td><form:input path="mobile" /></td>
			</tr>
			<tr>
				<td>Email ID :</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr><td></td></tr>
			<tr>
				<td><b><u>Qualification:</u></b></td>
			</tr>
			<tr><td></td></tr>
			<tr>
				<td>SSC percentage :</td>
				<td><form:input path="ssc_per" /></td>
			</tr>
			<tr>
				<td>HSC or Diploma :</td>
				<td><form:select path="hsc_or_dip">
						<form:option value="0" label="Select" />
						<form:option value="HSC" label="HSC" />
						<form:option value="Diploma" label="Diploma" />

					</form:select></td>
			</tr>
			<tr>
				<td>HSC or Diploma percentage :</td>
				<td><form:input path="hsc_or_dip_per" /></td>
			</tr>
			<tr>
				<td>Sem1 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s1_marks" /></td>
				<td><form:input path="s1_max" /></td>
				<td><form:input path="s1_percentage" /></td>
				<td><form:select path="s1_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s1_kt" /></td>
			</tr>

			<tr>
				<td>Sem2 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s2_marks" /></td>
				<td><form:input path="s2_max" /></td>
				<td><form:input path="s2_percentage" /></td>
				<td><form:select path="s2_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s2_kt" /></td>
			</tr>

			<tr>
				<td>Sem3 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s3_marks" /></td>
				<td><form:input path="s3_max" /></td>
				<td><form:input path="s3_percentage" /></td>
				<td><form:select path="s3_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s3_kt" /></td>
			</tr>

			<tr>
				<td>Sem4 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s4_marks" /></td>
				<td><form:input path="s4_max" /></td>
				<td><form:input path="s4_percentage" /></td>
				<td><form:select path="s4_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s4_kt" /></td>
			</tr>

			<tr>
				<td>Sem5 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s5_marks" /></td>
				<td><form:input path="s5_max" /></td>
				<td><form:input path="s5_percentage" /></td>
				<td><form:select path="s5_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s5_kt" /></td>
			</tr>

			<tr>
				<td>Sem6 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s6_marks" /></td>
				<td><form:input path="s6_max" /></td>
				<td><form:input path="s6_percentage" /></td>
				<td><form:select path="s6_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s6_kt" /></td>
			</tr>

			<tr>
				<td>Sem7 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s7_marks" /></td>
				<td><form:input path="s7_max" /></td>
				<td><form:input path="s7_percentage" /></td>
				<td><form:select path="s7_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s7_kt" /></td>
			</tr>

			<tr>
				<td>Sem8 :</td>
			</tr>
			<tr>
				<td>Marks Obtained</td>
				<td>Maximum marks</td>
				<td>Percentage</td>
				<td>Result</td>
				<td>No. of KTs</td>
			</tr>
			<tr>
				<td><form:input path="s8_marks" /></td>
				<td><form:input path="s8_max" /></td>
				<td><form:input path="s8_percentage" /></td>
				<td><form:select path="s8_result">
						<form:option value="0" label="Select" />
						<form:option value="P" label="Pass" />
						<form:option value="F" label="Fail" />

					</form:select></td>
				<td><form:input path="s8_kt" /></td>
			</tr>
			
			<tr>
				<td>Degree percentage :</td>
				<td><form:input path="degree_percentage" /></td>
			</tr>
			
			<tr>
				<td>Total no of KTs :</td>
				<td><form:input path="degree_kt" /></td>
			</tr>
			
			<tr>
				<td>Drops :</td>
				<td><form:input path="drops" /></td>
			</tr>
			<tr></tr><tr></tr>
			<tr>
			
				<td colspan="2"><input type="submit" value="Add Student"></td>
			</tr>
		</table>
	</form:form>


</body>
</html>
 --%>