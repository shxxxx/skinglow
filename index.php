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
				<head><title>Skin Glow | Home</title></head>
					<div id="main">
						<div class="inner" id="products">
							<header>
								<h2>SKIN GLOW </h2>
								<p>A fresh, healthy-looking complexion begins with skin that's in top condition. Skin Glow offers  skin care products for all skin types.
									<br> Restore your skin's lovely, natural shine to look and feel better with healthy, glowing skin.</p>
							</header>

							<div class="box alt">
										<div class="row gtr-uniform">
											<div class="col-12"><span class="image fit"><img src="images/homepic1.png" alt=""/></span></div>
											<p> Skin Glow offer diffrent kinds of skin care solutions. Work magic on an oily skin, 
												normal skin or dry skin. Skin Glow provide face wash, beauty sets, and face serums 
												that are suited for all skin types.</p>
											<div class="col-12">
											<input type="button" class="button fit" onclick="location.href='ourProduct.php';" value="Check our Products" />
                                            </div>
										</div>
									</div>
						</div>
					</div>
<?php include('inc/footer.php'); ?>

