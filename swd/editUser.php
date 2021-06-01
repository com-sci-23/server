<?php


require('connect.php');


if (isset($_GET)) {
	
			
		$u_id = $_GET['u_id'];
		$u_fname = $_GET['u_fname'];		
		$u_lname = $_GET['u_lname'];
		$u_urlpictrue = $_GET['u_urlpictrue'];
		$u_address = $_GET['u_address'];
		
		$u_email = $_GET['u_email'];
		$u_phone = $_GET['u_phone'];
		
		
		
		
		$sql = "UPDATE `user_tb` SET `u_id` = '$u_id',`u_fname` = '$u_fname',`u_lname` = '$u_lname',`u_urlpictrue` = '$u_urlpictrue',`u_address` = '$u_address',`u_email` = '$u_email',`u_phone` = '$u_phone' WHERE u_id = '${u_id}'";
		

		

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome App SWD ";
   


	mysqli_close($link);
?>