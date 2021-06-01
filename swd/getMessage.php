<?php


require('connect.php');

if (isset($_GET)) {
	
				
		$g_id = $_GET['g_id'];

		$result = mysqli_query($link, "SELECT * FROM todolist_tb");

		if ($result) {

			while($row=mysqli_fetch_assoc($result)){
			$output[]=$row;

			}	// while

			echo json_encode($output);

		} //if

	} else echo "Welcome App SWD";	// if2
   



	mysqli_close($link); 
?>