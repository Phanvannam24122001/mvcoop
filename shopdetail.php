<?php include 'inc/header.php';?>
<?php

if(!isset($_GET['proid']) || $_GET['proid']==NULL){
    echo "<script>window.location ='404.php'</script>";
 }else{
     $id = $_GET['proid']; 
  
 }
 if(!isset($_GET['catid']) || $_GET['catid']==NULL){
   
 }else{
     $id = $_GET['catid']; 
 }
 
 if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

    $quantity = $_POST['quantity'];
    $insertCart = $ct->add_to_cart($quantity, $id);
    
}
 
  $customer_id = Session::get('customer_id');
 
 if(isset($_POST['binhluan_submit'])){
    $$product_id = $_GET['proid']; 
     $binhluan_insert = $cs->insert_binhluan();
 }
 
  
?> 
<section class="shop-details">
<?php

$get_product_details = $product->get_details($id);
if($get_product_details){
    while($result_details = $get_product_details->fetch_assoc()){


?>
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product__details__breadcrumb">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Product Details</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="admin/uploads/<?php echo $result_details['image']  ?>"    with="500px"
                                    height="500px" >
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="admin/uploads/<?php echo $result_details['image'] ?>">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="admin/uploads/<?php echo $result_details['image'] ?>">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="admin/uploads/<?php echo $result_details['image'] ?>">
                                        <i class="fa fa-play"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="admin/uploads/<?php echo $result_details['image'] ?>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="./public/user/img/shop-details/product-big-3.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="./public/user/img/shop-details/product-big.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="./public/user/img/shop-details/product-big-4.png" alt="">
                                    <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4><?php echo $result_details['productName'] ?></h4>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <span> - 5 Reviews</span>
                            </div>
                            <h3><?php echo $fm->format_currency($result_details['price'])." "."VNĐ" ?> </h3>
                            <p><?php echo $result_details['product_desc'] ?></p>
                            <div class="product__details__option">
                                <div class="product__details__option__size">
                                    <span>Size:</span>
                                    <label for="xxl">xxl
                                        <input type="radio" id="xxl">
                                    </label>
                                    <label class="active" for="xl">xl
                                        <input type="radio" id="xl">
                                    </label>
                                    <label for="l">l
                                        <input type="radio" id="l">
                                    </label>
                                    <label for="sm">s
                                        <input type="radio" id="sm">
                                    </label>
                                </div>
                                <div class="product__details__option__color">
                                    <span>Color:</span>
                                    <label class="c-1" for="sp-1">
                                        <input type="radio" id="sp-1">
                                    </label>
                                    <label class="c-2" for="sp-2">
                                        <input type="radio" id="sp-2">
                                    </label>
                                    <label class="c-3" for="sp-3">
                                        <input type="radio" id="sp-3">
                                    </label>
                                    <label class="c-4" for="sp-4">
                                        <input type="radio" id="sp-4">
                                    </label>
                                    <label class="c-9" for="sp-9">
                                        <input type="radio" id="sp-9">
                                    </label>
                                </div>
                            </div>
                            <div class="product__details__cart__option">




                            <form action="" method="post">
                            <div class="quantity">
                             <div class="pro-qty">
                              <input type="number" class="buyfield" name="quantity" value="1" min="1"/>
                               </div>
                                </div>
                              
						
						<input type="submit" name="submit" value="add to cart"  class="primary-btn"/>
                           </form>		
					<?php
						if(isset($insertCart)){
							
						
					?>		
                         <div class="alert alert-success">
                       <strong></strong> <?php echo $insertCart ?>
                       </div>   
                    <?php
                        }
                    ?>
                            </div>
                            <div class="product__details__btns__option">
                                <a href="#"><i class="fa fa-heart"></i> add to wishlist</a>
                                <a href="#"><i class="fa fa-exchange"></i> Add To Compare</a>
                            </div>
                            <div class="product__details__last__option">
                                <h5><span>Guaranteed Safe Checkout</span></h5>
                                <img src="./public/user/img/shop-details/details-payment.png" alt="">
                                <ul>
                                    <li><span>SKU:</span> 3812912</li>
                                    <li><span>Categories: </span><?php echo $result_details['catName'] ?> </li>

                                    <li><span>Categories: </span><?php echo $result_details['brandName'] ?> </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="" method="POST">
                    <div class="row">
                   
				
                <div class="col-lg-6 col-md-6">
                   
                    <center><h6 class="checkout__title">Comment</h6></center>
                    <div class="row">
                    <div class="container">
<div class="row bootstrap snippets bootdeys">
    <div class="col-md-12 col-sm-12">
        <div class="comment-wrapper">
            <div class="panel panel-info">
               
                <div class="panel-body">
                <div class="form-group">
                <?php
			if(isset($binhluan_insert)){
				echo $binhluan_insert;
			} 
			?>
                 <form action="" method="post">
                <input type="hidden"  class="form-control form-control-user" value="<?php echo $id ?>" name="product_id_binhluan">
                 <input  class="form-control form-control-user"
                    type="text" name="tennguoibinhluan" placeholder="Enter Name....">
                     </div>
                    <textarea class="form-control" name="binhluan" placeholder="write a comment..." rows="6"></textarea>
                    <br>
                    <input type="submit" name="binhluan_submit" class="btn btn-success" value="Gửi bình luận">
                 </form>
                    <div class="clearfix"></div>
                    <hr>

                    <?php
						  $show_comment = $cs->show_comment();
						   if($show_comment){
						
							while($result = $show_comment->fetch_assoc()){
							
							
					       ?>
                    <ul class="media-list">
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
                            </a>
                            <div class="media-body">
                                <span class="text-muted pull-right">
                                    <small class="text-muted">30 min ago</small>
                                </span>
                                <strong class="text-success"><?php   echo $result['tenbinhluan']  ?></strong>
                                <p>
                                <?php echo $result['binhluan'] ?>

                                 
                                </p>
                            </div>
                        </li>
                      
                    </ul>

                    <?php
                            }
                        }
                    ?>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
                    </div>
                  
                  
                   
                </div>
               

                        <div class="col-lg-6 col-md-6">

                        <h6 class="checkout__title">Thông Số Kỹ Thuật</h6>
                    <div class="row">
                    <div class="checkout__order">
                                <h4 class="order__title">Thông tin bổ sung</h4>
                                <div class="checkout__order__products">Bảo hành chính hãng<span>Quốc Tế 1 Năm</span></div>
                                <ul class="checkout__total__products">
                                    <li>Chống nước <span>10 ATM (100m)</span></li>
                                    <li>Dạng mặt số <span>Vuông</span></li>
                                    <li>Giới tính <span>Nam</span></li>
                                    <li>Loại dây <span>Dây Inox (Thép Không Gỉ)</span></li>
                                    <li>Giới tính <span>Nam</span></li>

                                    <li>Loại kính <span>Mineral Crystal (Kính Cứng)</span></li>
                                    <li>Loại máy <span>Pin (Quartz)</span></li>

                                     <li>Size mặt số <span>45 mm</span></li>
                                     <li>Hãng <span>Casio</span></li>
                                     <li>Thương hiệu<span>Nhật Bản</span></li>

                                </ul>
                              
                               
                                <p>Vui lòng để lại số điện thoại, nhân viên SHOPDONGHO.COM sẽ liên lạc tư vấn cho quý khách về sản phẩm này!</p>
                               
                               
                            </div>
                    </div>
                     
                    </div>
                   



              
             
                        </div>
                    </div>
                   
                </form>
            </div>
        </div>
    </section>
            </div>
        </div>


		<?php
			}
		}
		?>


    </section>
    <!-- Shop Details Section End -->

    <!-- Related Section Begin -->
    <section class="related spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="related-title">Sản Phẩm Bạn</h3>
                </div>
            </div>
            <div class="row">
                
            <?php
	      	 $productbycat = $product->get_product_by_cat($id);
	      	 if($productbycat){
	      	 	while($result = $productbycat->fetch_assoc()){
	      	?>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                       

                    <a href="shopdetail.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>"  /></a>
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
        </div>
    </section>
    <?php include 'inc/footer.php';?>