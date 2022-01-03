
<?php include 'inc/header.php';?>

<?php

if(isset($_GET['orderid']) && $_GET['orderid']=='order'){
    $customer_id = Session::get('customer_id');
    $insertOrder = $ct->insertOrder($customer_id);
    $delCart = $ct->del_all_data_cart();
    echo "<script>window.location ='checkok.php'</script>";
 }
 
?>
<section class="breadcrumb-option">

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Check Out</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Check Out</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="" method="POST">
                    <div class="row">
                    <?php
				$id = Session::get('customer_id');
				$get_customers = $cs->show_customers($id);
				if($get_customers){
					while($result = $get_customers->fetch_assoc()){

				?>
                <div class="col-lg-8 col-md-6">
                   
                    <h6 class="checkout__title">Check Out</h6>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="checkout__input">
                                <p>Fist Name<span>*</span></p>
                                <input type="text" name="name" value="<?php echo $result['name'] ?>"class="checkout__input__add"  style="color:black; font: size 20px;"  >
                            </div>
                        </div>
                        
                    </div>
                 
                    <div class="checkout__input">
                        <p>Address<span>*</span></p>
                        <input type="text" name="address" value="<?php echo $result['address'] ?>" class="checkout__input__add"style="color:black; font: size 20px;" >
                       
                    </div>
                    
                   
                    <div class="checkout__input">
                        <p>Postcode / ZIP<span>*</span></p>
                        <input type="text" name="zipcode" value="<?php echo $result['zipcode'] ?>"class="checkout__input__add"style="color:black; font: size 20px;" >
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Phone<span>*</span></p>
                                <input type="text" name="phone" value="<?php echo $result['phone'] ?>"class="checkout__input__add"style="color:black; font: size 20px;" >
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Email<span>*</span></p>
                                <input type="text" name="email" value="<?php echo $result['email'] ?>"class="checkout__input__add"style="color:black; font: size 20px;" >
                            </div>
                        </div>
                    </div>
                  
                  
                   
                </div>
               
<?php

                    }}
                    ?>
                        <div class="col-lg-4 col-md-6">


                        <?php
			    	 if(isset($update_quantity_cart)){
			    	 	echo $update_quantity_cart;
			    	 }
			    	?>
			    	<?php
			    	 if(isset($delcart)){
			    	 	echo $delcart;
			    	 }
			    	?>


                   <div class="checkout__order">


                   <?php
                            $id = Session::get('customer_id');
							$get_product_cart = $ct->get_product_cart();
							if($get_product_cart){
								$subtotal = 0;
								$qty = 0;
								while($result = $get_product_cart->fetch_assoc()){
							?>
                                <h4 class="order__title">Your order</h4>
                                <div class="checkout__order__products">Product <span>Total</span></div>
                                <ul class="checkout__total__products">
                                    <li><?php echo $result['productName'] ?> <span>
                                   <?php $total = $result['price'] * $result['quantity'];
								echo $fm->format_currency($total)." "."VNĐ";
								 ?>
                                    </span></li>
                                   
                                </ul>



                               
                               <?php
								$subtotal += $total;
							$qty = $qty + $result['quantity'];
							}
						}?>
                         <?php
							$check_cart = $ct->check_cart();
								if($check_cart){
								?>

                               <ul class="checkout__total__all">
                                    <li>Subtotal <span>
                                   <?php echo $fm->format_currency($subtotal)." "."VNĐ";
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
					}else{
						echo 'Your Cart is Empty ! Please Shopping Now';
					}
					  ?>
                       
                    </div>
                   



                </div>
             
                        </div>
                    </div>
                    <center>
                    <a href="?orderid=order" class="primary-btn">checkout</a>
                    </center><br>
                </form>
            </div>
        </div>
    </section>
    <?php include 'inc/footer.php';?>