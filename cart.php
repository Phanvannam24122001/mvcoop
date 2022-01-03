
<?php include 'inc/header.php';?>
<?php
	if(isset($_GET['cartid'])){
        $cartid = $_GET['cartid']; 
        $delcart = $ct->del_product_cart($cartid);
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $cartId = $_POST['cartId'];
        $quantity = $_POST['quantity'];
        $update_quantity_cart = $ct->updatecart($quantity, $cartId);
        if($quantity<=0){
        	$delcart = $ct->del_product_cart($cartId);
        }
        
    }
  
        ?>


<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shopping Cart</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">



			
                <div class="col-lg-8">

				<form action="" method="post">
                    <div class="shopping__cart__table">


					<?php
			    	 if(isset($delcart)){
			    	 	echo $delcart;
			    	 }
			    	?>


                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
							<?php
							$get_product_cart = $ct->get_product_cart();
							if($get_product_cart){
								$subtotal = 0;
								$qty = 0;
								while($result = $get_product_cart->fetch_assoc()){
							?>
						
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img src="admin/uploads/<?php echo $result['image'] ?>" alt="" style=" with:150px; height:100px;">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6><?php echo $result['productName'] ?></h6>
                                            <h5><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
									<form action="" method="post">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
											

											<input type="hidden" name="cartId" value="<?php echo $result['cartId'] ?>"/>
                                            <input  type="number" name="quantity" min="0"  value="<?php echo $result['quantity'] ?>"/>
                                            
											</div>
                                        </div>
							
                                    </td>
                                    <td class="cart__price"><?php
								$total = $result['price'] * $result['quantity'];
								echo $fm->format_currency($total)." "."VNĐ";
								 ?></td>
                                    <td class="cart__close"><a href="?cartid=<?php echo $result['cartId'] ?>"><i  class="fa fa-close"></i></a>
								
								</td>
									
                                </tr>
                                
								<?php
								$subtotal += $total;
							$qty = $qty + $result['quantity'];
							}
						}
						?>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="index.php">Continue Shopping</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                       
                            <div class="continue__btn update__btn">
                            <input type="submit" name="submit" value=" Update cart" class="primary-btn" />
                            </div>
                        
                          

					
                        </div>
                    </div>

					</form>



                </div>



             
                <div class="col-lg-4">
                    <div class="cart__discount">
                        <h6>Discount codes</h6>
                        <form action="#">
                            <input type="text" placeholder="Coupon code">
                            <button type="submit">Apply</button>
                        </form>
                    </div>



                    <?php
							$check_cart = $ct->check_cart();
								if($check_cart){
								?>


                    <div class="cart__total">
                        <h6>Cart total</h6>
                        <ul>
                            <li>Subtotal <span><?php 

									
                                   echo $fm->format_currency($subtotal)." "."VNĐ";
									Session::set('sum',$subtotal);
									Session::set('qty',$qty);
								?>
                                </span></li>
                            <li>VAT <span>10%
                                </span></li>
                                
                            <li>Total <span>
                                <?php 

								$vat = $subtotal * 0.1;
								$gtotal = $subtotal + $vat;
								echo $fm->format_currency($gtotal)." "."VNĐ";
								?>
                            </span></li>
                        </ul>
                        <?php
			$login_check = Session::get('customer_login'); 
			if($login_check==false){
				echo ' <a href="Login.php" class="primary-btn">Thanh Toán</a>';
			}else{
				echo ' <a href="checkcard.php" class="primary-btn">checkout</a>';
			}
			?>

                        
                    </div>
                    <?php
					}else{
						echo 'Your Cart is Empty ! Please Shopping Now';
					}
					  ?>
					




                </div>
            </div>
        </div>
    </section>
    <?php include 'inc/footer.php';?>