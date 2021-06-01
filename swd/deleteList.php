<?php

require('connect.php');

if (isset($_GET)) {
	
				
		$t_id = $_GET['t_id'];
		
							
		$sql = "DELETE FROM `todolist_tb` WHERE t_id = '$t_id'";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome App SWD";
   

	mysqli_close($link);
?>

