<?php 

include('connect.php');

if(isset($_POST["submit"]))
{
	//Code goes here.
$name = $_POST["name"];
$email = $_POST["email"];
$password = $_POST["password"];
 
$name = mysqli_real_escape_string($conn, $name);
$email = mysqli_real_escape_string($conn, $email);
$password = mysqli_real_escape_string($conn, $password);
$password = md5($password);

$sql = "SELECT email FROM studentdata WHERE st_email='$email'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
 
if(mysqli_num_rows($result) == 1)
{
	echo "Sorry...This email already exist..";
}
else
{
	//Code goes here.
	$query = mysqli_query($conn, "INSERT INTO `studentdata`(`st_name`, `st_email`, `st_mobile`) VALUES ('$name', '$email', '$password')");
 
if($query)
{
	echo "Thank You! you are now registered.";
}
}
}

?>