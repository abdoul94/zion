<?php

include('connect.php');


if(isset($_POST['btn-upload']))
{    
     
 $file = rand(1000,100000)."-".$_FILES['pr_name']['name'];
    $file_loc = $_FILES['pr_name']['tmp_name'];
 $file_size = $_FILES['pr_name']['pr_size'];
 $file_type = $_FILES['pr_name']['pr_type'];
 $folder="uploads/";
 
 move_uploaded_file($file_loc,$folder.$file);
 $sql="INSERT INTO project(pr_name,pr_type,pr_size) VALUES('$file','$file_type','$file_size')";
 mysql_query($sql); 
}

?>