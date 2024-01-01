<?php 

session_start();

	include("connection.php");
	include("functions.php");
	include("signup.html");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$name = $_POST['person_name'];
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];
		$type = $_POST['FishermanType'];

		$username_query = "SELECT * FROM Fisherman WHERE Username = '$user_name'"; 
		$username_match = mysqli_query($con, $username_query);

    	if(mysqli_num_rows($username_match)>0)
    	{
      		echo '<script type="text/javascript"> alert("Username already exists") </script>';
      
    	}

		else if(!empty($name) && !empty($user_name) && !empty($password) && !empty($type))
		{
			//sequel injection prevention
			$validation = $con->prepare("SELECT * FROM Fisherman WHERE Username=?");
			$validation->bind_param('s', $user_name);
			$validation->execute();

			mysqli_stmt_bind_result($validation, $res_name, $res_user, $res_password);

			if($validation->fetch())
			{ 
				echo "user already exists";
			}
			else
			{
				//save to database
				$hash = password_hash($password, PASSWORD_DEFAULT);
				$query = "CALL RegisterFisherman('$name','$user_name','$hash','$type')"; //STORED PROCEDURE RegisterFisherman

				mysqli_query($con, $query);

				$query = "CALL InsertRole('$user_name', 'user')"; //STORED PROCEDURE InsertRole

				mysqli_query($con, $query);

				//header("Location: userManagement.php");
        		echo '<script type="text/javascript"> alert("User Inserted") </script>';
				//die;
			
		  	}
    	}
    	else
    	{	
     		echo "All Fields Required";
    	}
	}

	
?>

