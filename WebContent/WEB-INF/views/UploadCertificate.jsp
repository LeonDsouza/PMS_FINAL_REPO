<!--
 Filename : UploadCertificate.jsp
 Author name: Crystal Cuthinho
 Description: used for certificate upload (SSC/HSC/sem1-sem7/5 extra certificates) by student. Mapping goes to CertificateUploadController.
 -->

<!-- author: Pankaj sankpal
description: contains Buttons for uploading neccessary docs->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Upload Certificates.. </title>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
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
								<c:out value="${sessionScope.name}" />
							</h1>
						</div><!-- /.page-header -->
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
								
										<div class="row">
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
												<h3><b><u>SSC</u></b></h3>
												
												<c:if test="${SSC==1}">
													<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
													<form:errors path="*" cssClass="errorblock" element="div" />
												</c:if>
														<input type="hidden" name="type" value="SSC">
														Upload SSC mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
														
														<c:if test="${SSC==1}">
														<c:if test="${error==1}">
															<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
														</c:if>
														<c:if test="${error1==1}">
															<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
														</c:if>
														</c:if>
														  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
														  <c:if test="${SSC==1}">
														  		<span><form:errors path="file" cssClass="error" />
																</span>
														  </c:if>
													</form:form>
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										<div class="col-xs-12 col-sm-6 ">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
													<h3><b><u>HSC</u></b></h3>
													
													<c:if test="${HSC==1}">
														<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
														<form:errors path="*" cssClass="errorblock" element="div" />
													</c:if>
															<input type="hidden" name="type" value="HSC">
															Upload HSC mark sheet : <input class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
															
															<c:if test="${HSC==1}">
															<c:if test="${error==1}">
																<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
															</c:if>
															<c:if test="${error1==1}">
																<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
															</c:if>
															</c:if>
															  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
															  
															  <c:if test="${HSC==1}">
															  		<span><form:errors path="file" cssClass="error" />
																	</span>
															  </c:if>
													</form:form>
													
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
										<h3><b><u>Sem1</u></b></h3>
										<c:if test="${sem1==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
											<form:errors path="*" cssClass="errorblock" element="div" />
										</c:if>
												<input type="hidden" name="type" value="sem1">
												Upload sem1 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
												
												<c:if test="${sem1==1}">
												<c:if test="${error==1}">
													<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
												</c:if>
												<c:if test="${error1==1}">
													<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
												</c:if>
												</c:if>
												  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
												  
												  <c:if test="${sem1==1}">
												  		<span><form:errors path="file" cssClass="error" />
														</span>
												  </c:if>
										</form:form>
													
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
													<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem2</u></b></h3>
											<c:if test="${sem2==1}">
												<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem2">
													Upload sem2 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem2==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem2==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>
													
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
												<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem3</u></b></h3>
											<c:if test="${sem3==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem3">
													Upload sem3 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem3==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem3==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>
													
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
											<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem4</u></b></h3>
											<c:if test="${sem4==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem4">
													Upload sem4 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem4==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem4==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>
																								
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
											<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem5</u></b></h3>
											<c:if test="${sem5==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem5">
													Upload sem5 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem5==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem5==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>
																								
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
										
										
										<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
											<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem6</u></b></h3>
											<c:if test="${sem6==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem6">
													Upload sem6 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem6==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem6==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>						
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>
<div class="col-xs-12 col-sm-6 left">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													
											<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
											<h3><b><u>Sem7</u></b></h3>
											<c:if test="${sem7==1}">
											<c:if test="${success==1}">
															<p style="color:green;">Certificate uploaded successfully!</p>
														</c:if>
												<form:errors path="*" cssClass="errorblock" element="div" />
											</c:if>
													<input type="hidden" name="type" value="sem7">
													Upload sem7 mark sheet : <input  class="btn btn-sm btn-success" type="file" name="fileUpload"><br />
													
													<c:if test="${sem7==1}">
													<c:if test="${error==1}">
														<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
													</c:if>
													<c:if test="${error1==1}">
														<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
													</c:if>
													</c:if>
													  <input class="btn btn-sm btn-info" type="submit" value="Upload"> Press here to upload the file!
													  
													  <c:if test="${sem7==1}">
													  		<span><form:errors path="file" cssClass="error" />
															</span>
													  </c:if>
											</form:form>						
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
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Certificate</title>
</head>
<body>


<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>SSC</u></b></h3>
<c:if test="${SSC==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="SSC">
		Upload SSC mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${SSC==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  <c:if test="${SSC==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
	</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>HSC</u></b></h3>
<c:if test="${HSC==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="HSC">
		Upload HSC mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${HSC==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${HSC==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem1</u></b></h3>
<c:if test="${sem1==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem1">
		Upload sem1 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem1==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem1==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem2</u></b></h3>
<c:if test="${sem2==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem2">
		Upload sem2 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem2==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem2==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem3</u></b></h3>
<c:if test="${sem3==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem3">
		Upload sem3 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem3==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem3==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem4</u></b></h3>
<c:if test="${sem4==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem4">
		Upload sem4 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem4==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem4==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem5</u></b></h3>
<c:if test="${sem5==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem5">
		Upload sem5 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem5==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem5==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem6</u></b></h3>
<c:if test="${sem6==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem6">
		Upload sem6 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem6==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem6==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Sem7</u></b></h3>
<c:if test="${sem7==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="sem7">
		Upload sem7 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${sem7==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${sem7==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Extra1</u></b></h3>
<c:if test="${extra1==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="extra1">
		Upload extra1 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${extra1==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${extra1==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Extra2</u></b></h3>
<c:if test="${extra2==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="extra2">
		Upload extra2 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${extra2==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${extra2==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Extra3</u></b></h3>
<c:if test="${extra3==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="extra3">
		Upload extra3 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${extra3==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${extra3==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Extra4</u></b></h3>
<c:if test="${extra4==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="extra4">
		Upload extra4 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${extra4==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${extra4==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCertificate">
<h3><b><u>Extra5</u></b></h3>
<c:if test="${extra5==1}">
	<form:errors path="*" cssClass="errorblock" element="div" />
</c:if>
		<input type="hidden" name="type" value="extra5">
		Upload extra5 mark sheet : <input type="file" name="fileUpload"><br />
		
		<c:if test="${extra5==1}">
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be png/jpg/jpeg/pdf only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 3MB</p>
		</c:if>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  
		  <c:if test="${extra5==1}">
		  		<span><form:errors path="file" cssClass="error" />
				</span>
		  </c:if>
</form:form>
	<br/><br/>
	
	
</body>
</html> --%>