
<?php include 'inc/header.php';?>

<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shop</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<section class="product spad">
        <div class="container">

        <?php
	     	    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

			        $tukhoa = $_POST['tukhoa'];
			        $search_product = $product->search_product($tukhoa);
			        
			    }
	      	?>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                   
                    <h3>Từ khóa tìm kiếm : <?php echo $tukhoa ?></h3>
                      
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
            <?php
	      	
              if($search_product){
                  while($result = $search_product->fetch_assoc()){
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

		}else{
			echo '  Không Tìm Thấy Kết Quả';
		}
			?>
       
       
       
       
       
            </div>

        </section>
            <?php include 'inc/footer.php';?>