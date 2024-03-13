<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<style type="text/css">
		body{
			margin: 20px;
		}
	</style>
</head>
<body>
	<div class="form-group margin">
		<form class="" id="loginForm" method="post">
			<center><label><h2>Login Page</h2></label></center>
			<div id="error-message"></div>
			<label for="exampleInputEmail1">Email address</label>
			<input type="text" class="form-control" id="exampleInputEmail1" name="mailuid" placeholder="Username/Email..."><br>
			<label for="exampleInputPassword1">Password</label>
			<input type="password" class="form-control" id="exampleInputPassword1" name="pwd" placeholder="Password..."><br>
			<button type="button" class="btn btn-primary" onclick="login()">Login</button> 
		</form>
    </div>
	<center><big><a href="signup.php">Sign up</a></big></center>

	<script>
		function login() {
			var form = document.getElementById('loginForm');
			var formData = new FormData(form);

			var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var response = JSON.parse(xhr.responseText);

					if (response.error) {
						document.getElementById('error-message').innerHTML = '<div class="alert alert-danger" role="alert">' + response.error + '</div>';
					} else {
						// Redirect to a success page or perform other actions
						window.location.href = 'success.php';
					}
				}
			};

			xhr.open('POST', 'includes/login.inc.php', true);
			xhr.send(formData);
		}
	</script>
</body>
</html>
