<?php


require('connect.php');

if (isset($_GET)) {
	
				
		$u_id = $_GET['u_id'];

		$result = mysqli_query($link, "SELECT * FROM user_tb");

		if ($result) {

			while($row=mysqli_fetch_assoc($result)){
			$output[]=$row;

			}	// while

			echo json_encode($output);

		} //if

	} else echo "Welcome App SWD";	// if2
   



	mysqli_close($link); 
?>