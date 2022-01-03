
<?php include 'inc/header.php';?>

<?php
	
	$login_check = Session::get('customer_login'); 
	if($login_check==false){
		header('Location:login.php');
	}
		
?>
<?php

	
 	$id = Session::get('customer_id');
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['save'])) {
       
        $UpdateCustomers = $cs->update_customers($_POST, $id);
        
    }
?>


<!-- Checkout Section Begin -->
<section class="checkout spad">
<div class="container">
    <div class="checkout__form">
        <form action="" method="post">
            <div class="row">
            <div class="col-lg-4 col-md-6">
                    <div class="checkout__order">
                        <h4 class="order__title">ProFile Custumor</h4>
                       
                    </div>
                </div>

                <?php
				$id = Session::get('customer_id');
				$get_customers = $cs->show_customers($id);
				if($get_customers){
					while($result = $get_customers->fetch_assoc()){

				?>
                <div class="col-lg-8 col-md-6">
                   
                    <h6 class="checkout__title">Edit Customer</h6>
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
                  
                  
                    <div class="mt-5 text-right">	<input type="submit" name="save" value="Save"  class="primary-btn"/></div>
                </div>
               
<?php

                    }}
                    ?>
              
            </div>
        </form>
    </div>
</div>
</section>
<?php include 'inc/footer.php';?>