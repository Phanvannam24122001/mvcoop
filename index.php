<?php include 'inc/header.php';?>
<?php include 'inc/slider.php';?>
<section class="product spad">
        <div class="container">

        
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                        <li class="active" data-filter="*">Hot Feathered</li>
                      
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
            <?php
	      		$product_feathered = $product->getproduct_feathered();
	      		if($product_feathered){
	      			while($result = $product_feathered->fetch_assoc()){

	      	?>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                       

                    <a href="shopdetail.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>" style=" "/></a>
                        <div class="product__item__text">
                            <h6><?php echo $result['productName'] ?></h6>
                            <a href="#" class="add-cart">



                            
                            </a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></h5>
                            <div class="product__color__select">
                                <label for="pc-1">
                                    <input type="radio" id="pc-1">
                                </label>
                                <label class="active black" for="pc-2">
                                    <input type="radio" id="pc-2">
                                </label>
                                <label class="grey" for="pc-3">
                                    <input type="radio" id="pc-3">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
				}
			}
				?>
       
       
       
       
       
       
            </div>
            <div class="container">

        
<div class="row">
    <div class="col-lg-12">
        <ul class="filter__controls">
            <li class="active" data-filter="*">New Arrivals</li>
          
        </ul>
    </div>
</div>
<div class="row product__filter">
<?php
      $product_new = $product->getproduct_new();
      if($product_new){
          while($result = $product_new->fetch_assoc()){

  ?>
    <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
        <div class="product__item">
           

        <a href="shopdetail.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>"   /></a>
            <div class="product__item__text">
                <h6><?php echo $result['productName'] ?></h6>
                <a href="#" class="add-cart">+ Add To Cart</a>
                <div class="rating">
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <h5><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></h5>
                <div class="product__color__select">
                    <label for="pc-1">
                        <input type="radio" id="pc-1">
                    </label>
                    <label class="active black" for="pc-2">
                        <input type="radio" id="pc-2">
                    </label>
                    <label class="grey" for="pc-3">
                        <input type="radio" id="pc-3">
                    </label>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
}
    ?>






</div>
    </section>
    <!-- Product Section End -->

   
    <!-- Categories Section End -->

    <!-- Instagram Section Begin -->
    <section class="instagram spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="instagram__pic">
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-1.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-2.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-3.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-4.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-5.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="./public/user/img/instagram/instagram-6.jpg"></div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="instagram__text">
                        <h2>Instagram</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                        <h3>#Male_Fashion</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Instagram Section End -->

    <!-- Latest Blog Section Begin -->
    <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Latest News</span>
                        <h2>Fashion New Trends</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            <?php
                         $getall_blogs = $bl->getall_blogs();
                         if($getall_blogs){
                             while(
                                 $result = $getall_blogs ->fetch_assoc()

                               
                             ){

                        
                    ?>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="admin/uploads/<?php echo $result['image'] ?>"></div>
                        <div class="blog__item__text">
                            <span><img src="img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5><?php
                         echo $result['name'] 
                            ?></h5>
                            <a href="blogdetail.php?id=<?php echo $result['id'] ?>">Read More</a>
                        </div>
                    </div>
                </div>
               <?php

                             }
                            }
?>
            </div>
        </div>
    </section>
    

<?php include 'inc/footer.php';?>

