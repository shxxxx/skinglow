<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="css/extra.css" >
</head>
<body>
<?php 
    session_start();
//check if SESSION['id'] (meaning logged in user) + user role = U (meaning normal User)
//then disply this nav bar 
if (isset($_SESSION['id']) && $_SESSION['user_role']=='U'){ ?>
 <div class="nav">
  <img class="logo-img" src="images/SkinGlow.png" width="185" height="165" ALIGN=CENTER>
      <nav>
		
		<a href="<?php echo ROOT_URL; ?>">Home</a>
		<a href="<?php echo ROOT_URL; ?>viewAccount.php">Profile</a>
		<a href="<?php echo ROOT_URL; ?>logout.php">Logout</a>
		<a href="<?php echo ROOT_URL; ?>ourProduct.php">Our Products</a>
		<a href="<?php echo ROOT_URL; ?>shoppingcart.php">Shopping Cart</a>
		<a href="#contact">Contact Us</a>
		       
       </nav>
  </div>
<?php } 
	//else if SESSION['id'] (meaning logged in user) + user role = A (meaning Admin)
	//then disply this nav bar wich contain control panel for the Admin
	elseif (isset($_SESSION['id']) && $_SESSION['user_role']=='A') { ?>
	<div class="nav">
  <img class="logo-img" src="images/SkinGlow.png" width="185" height="165" ALIGN=CENTER>
      <nav>
		
		<a href="<?php echo ROOT_URL; ?>">Home</a>
		<a href="<?php echo ROOT_URL; ?>ourProduct.php">Our Products</a>
		<a href="<?php echo ROOT_URL; ?>logout.php">Logout</a>
		<a href="<?php echo ROOT_URL; ?>AdminPage.php">Admin Page</a>     
       </nav>
  </div>



<?php }else{
	//else if NO SESSION['id'] + NO user role are set
	//then disply this nav bar 
	?>
	<div class="nav">
    <img class="logo-img" src="images/SkinGlow.png" width="185" height="165" ALIGN=CENTER>
      <nav>
		<a href="<?php echo ROOT_URL; ?>">Home</a>
		<a href="<?php echo ROOT_URL; ?>Login.php">Login</a>
		<a href="<?php echo ROOT_URL; ?>ourProduct.php">Our Products</a>
		<a href="<?php echo ROOT_URL; ?>shoppingcart.php">Shopping Cart</a>
		<a href="#contact">Contact Us</a>
		       
       </nav>
  </div>
  <?php } ?>
	
	


</body>
</html>