<?php 

session_start();

	include("connection.php");
	include("functions.php");
	include("login.html");

	
	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];

		$validation = $con->prepare("SELECT * FROM Fisherman WHERE Username=?");
    	$validation->bind_param('s', $user_name);
    	$validation->execute();

    	mysqli_stmt_bind_result($validation, $res_name, $res_user, $res_password);

    	$genericErrorMsg = "Invalid username and/or password";
		if ($validation->fetch() && password_verify($password, $res_password)) 
		{
			
				$_SESSION['user_name'] = $res_user;
				$_SESSION['loggedIn'] = true; //Sets logged in to true if username and password are correct
				$_SESSION["is_admin"] = false;
				$validation->close();

				//checks if user is an admin
				//If they are they will be redirected to the admin page
				$isAdminStatement = $con->prepare("CALL IsAdmin(?)");
				if (!$isAdminStatement) {
					echo "ERROR!";
				}
				$isAdminStatement->bind_param('s', $res_user);
				$isAdminStatement->execute();
				mysqli_stmt_bind_result($isAdminStatement, $res_admin);
				$isAdminStatement->fetch();

				$_SESSION["is_admin"] = $res_admin;
				
				if($res_admin)
				{
					header('Location: admin.php');
					die;
				}
				
				
				header("Location: index.php");
				die;			
		}
		else
		{
			echo "$genericErrorMsg";
		}
	}

?>

