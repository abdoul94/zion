<?php
include('connect.php');
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <title>Group Registration</title>
  <!-- Favicon -->
  <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet">
</head>

<body class="bg-default">
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
      <div class="container px-4">
        <a class="navbar-brand" href="../index.php">
          <img src="../assets/img/brand/white.png" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-collapse-main">
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="../index.php">
                  <img src="../assets/img/brand/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="../index.php">
                <i class="ni ni-planet"></i>
                <span class="nav-link-inner--text">Dashboard</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6">
              <h1 class="text-white">Welcome!</h1>
              <p class="text-lead text-light"></p>
            </div>
          </div>
        </div>
      </div>
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
          <div class="card bg-secondary shadow border-0">
            <div class="card-header bg-transparent pb-5">
              <div class="text-muted text-center mt-2 mb-4"><small>Add Group </small></div>
              <div class="text-center">
              </div>
            </div>
            <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
              </div>
              <form method="post" id="studentFrom" name="studentFrom">
                <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                    <select name="grp_name" id="group_name">
						<option value="">Please Select</option>
						  <?php 
						  	$query = "select * from `ad_group`";
							$row = mysqli_query($conn, $query);
							
						  	foreach($row as $value){
						  ?>
						  <option value="<?php echo $value['id'];?>"><?php echo $value['grp_name'];?></option>
							<?php }?>
											</select>
                  </div>
                </div>
				<div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                    <select name="st_name[]" multiple="multiple">
					<option value="">Please Select</option>
						  <?php 
						  	$query = "select * from `studentdata`";
							$row = mysqli_query($conn, $query);
							
						  	foreach($row as $value){
						  ?>
						  <option value="<?php echo $value['id'];?>"><?php echo $value['st_name'];?></option>
							<?php }?>
					</select>
                  </div>
                </div>
				
                <div class="text-muted font-italic"><small> <span class="text-success font-weight-700"></span></small></div>
                <div class="row my-4">
                  <div class="col-12">
                  </div>
                </div>
                <div class="text-center">
                  <input type="submit" class="btn btn-primary mt-4" name="submit" value="Create Group">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="py-5">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
        </div>
        <div class="col-xl-6">
        </div>
      </div>
    </div>
  </footer>
  <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/argon.js?v=1.0.0"></script>
</body>

</html>

<?php
//include('connect.php');


	if(isset($_POST['submit']))
	{
	
		$grp_name = $_POST['grp_name'];
		$st_name = $_POST['st_name'];
		$test = implode(',',$st_name);
		$arr = explode(",", $test);
		foreach ($arr as $value) 
		 {	
			
			$sql = "INSERT INTO grpmem (gr_id, st_id)VALUES ('".$grp_name."', '".$value."')";
			if(mysqli_query($conn, $sql))
			{
			echo "Records added successfully.";
			}
		else
			{
			echo "Error!!." .mysqli_error($conn);
			
			}
		}
		die();
 	}
		
		
?>
