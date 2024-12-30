<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Page</title>
<%@include file="componet2/css.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
</style>



</head>
<body class="bg-light">
	<%@include file="componet2/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center">Student Delete Page</p>

					</div>
					<div class="card-body">
						<form action="Sdelete" method="post">
							<div class="mb-3">
								<label>Enter Email id</label> <input type="email" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Enter Password</label> <input type="password" name="pass"
									class="form-control">
							</div>

							<div class="text-center mt-2">

								<button class="btn btn-success col-md-12">Submit</button>


							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@include file="componet2/nav.jsp"%>
</body>
</html>