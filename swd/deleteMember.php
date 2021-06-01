<?php

require('connect.php');

if (isset($_GET)) {
	
				
		$u_id = $_GET['u_id'];
		
							
		$sql = "DELETE FROM `user_tb` WHERE u_id = '$u_id'";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome App SWD";
   

	mysqli_close($link);
?>

