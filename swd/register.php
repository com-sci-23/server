<?php


require('connect.php');


if (isset($_GET)) {
	
				
		$u_fname = $_GET['u_fname'];
		$u_lname = $_GET['u_lname'];
		$u_urlpictrue = $_GET['u_urlpictrue'];
		$u_address = $_GET['u_address'];
		$u_email = $_GET['u_email'];
		$u_phone = $_GET['u_phone'];
		
		
							
		$sql = "INSERT INTO `user_tb`(`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_address`, `u_email`,`u_urlpictrue`) VALUES (Null,'$u_fname','$u_lname','$u_phone','$u_address','$u_email','$u_urlpictrue')";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome App SWD ";
   

	mysqli_close($link);
?>

