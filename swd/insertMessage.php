<?php


require('connect.php');



if (isset($_GET)) {
	
				
		$t_list = $_GET['t_list'];
		
		
							
		$sql = "INSERT INTO `todolist_tb`(`t_id`, `t_list`) VALUES (Null,'$t_list')";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome App SWD";
   

	mysqli_close($link);
?>

