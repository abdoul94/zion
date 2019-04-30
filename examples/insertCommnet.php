<?php
include('connect.php');
//session_start();
$studentName = $_POST['studentName'];
$project_name = $_POST['project_name'];
$commentValue = $_POST['commentValue'];


$sql = "INSERT INTO `projectcmnt`( `comment`, `grp_name`, `project_name`) VALUES ('".$commentValue."','".$studentName."','".$project_name."')";
		if(mysqli_query($conn, $sql))
		{
			echo "Suucess";
			die();
		}
		else
		{
			echo "Error";
			
		}
?>