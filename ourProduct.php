<?php
	require_once('config/config.php');
	include_once('config/db.php');
       
	
	//session_start();
	$query = 'SELECT * FROM products';
   
	$result = mysqli_query($conn, $query);
	
	$products = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);
	mysqli_close($conn);
?>
<?php include('inc/header.php');?>
				<!-- Main -->
				<head><title>Skin Glow | Products</title></head>
					<div id="main">
						<div class="inner" id="products">
							<header>
								<h2>SKIN GLOW</h2>
							</header>
							<section class="tiles">
							    <?php foreach($products as $product):?>
									<article>
										<span class="image">
											<img src="images/<?php echo $product['img']; ?>"/>
										</span>
										<a href="<?php echo ROOT_URL; ?>product.php?id=<?php echo $product['id']; ?>">
											<h2><?php echo $product['pname']; ?></h2>
											<div class="content">
												<p>
												<?php echo (strlen($product['pdesc']) > 500) ? substr($product['pdesc'],0,250) :$product['pdesc'];?>...
								

											
											</p>
											</div>
										</a>
									</article>
								<?php endforeach; ?>
	
							</section>
						</div>
					</div>
<?php include('inc/footer.php'); ?>

