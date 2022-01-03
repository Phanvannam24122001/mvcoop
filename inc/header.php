<?php
    include 'lib/session.php';
    Session::init();
?>
<?php
	
	include 'lib/database.php';
	include 'helpers/format.php';

	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
		

	$db = new Database();
	$fm = new Format();
	$ct = new cart();
	$br = new brand();
	$cat = new category();
	$product = new product();
    $bl = new blog();
    $cs = new customer();
	      	 	
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="https://fontawesome.com/" type="text/css">
    <!-- Css Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css
" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    <link rel="stylesheet" href="public/user/css/bootstrap.min.css" type="text/css">

    <link rel="stylesheet" href="public/user/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="public/user/css/style.css" type="text/css">
    <link href="./public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
   
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">Sign in</a>
                <a href="#">FAQs</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>Usd <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="public/user/img/icon/search.png" alt=""></a>
            <a href="#"><img src="public/user/img/icon/heart.png" alt=""></a>
            <a href="cart.php"><img src="public/user/img/icon/cart.png" alt=""> <span>
            <?php
								$check_cart = $ct->check_cart();
                                if($check_cart){
                                    $qty = Session::get("qty");
                                    echo $qty ;
                                    }else{
                                    echo '0';
                                }
                                	?>
            </span></a>
            <div class="price">
            <?php
									$check_cart = $ct->check_cart();
                                    if($check_cart){
                                        $sum = Session::get("sum");
                                      
                                        echo $fm->format_currency($sum).' '.'đ' ;
                                        }else{
                                        echo 'Empty';
                                    }


									?>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
      
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                                <a href="login.php">Sign in</a>
                                <a href="#">FAQs</a>
                            </div>
                            <div class="header__top__hover">
                                <span>Usd <i class="arrow_carrot-down"></i></span>
                                <ul>
                                    <li>USD</li>
                                    <li>EUR</li>
                                    <li>USD</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.php"><img src="public/user/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.php">Home</a></li>
                            <li><a href="./shop.php">Shop</a></li>
                           
                            <li><a href="./blog.php">Blog</a></li>
                            <li><a href="./contact.php">Contacts</a></li>
                           s
                        
                        </a>
                        </ul>
                        
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                   
                    
                    <nav class="header__menu mobile-menu">
                        <ul>
                          
                            <li>
                                
                           
                            
                            <a href="#"> Chào :<?php echo Session::get('customer_name') ?> <i class="arrow_carrot-down"></i></a>
                                <ul class="dropdown">
                                  
                                    <li><a href="./cart.php">Shopping Cart</a></li>
                              
                                    <?php
			$login_check = Session::get('customer_login'); 
			if($login_check==false){
				
			}else{
				echo ' <li><a href="./Profile.php">Profile Customer</a></li>
                <li><a href="./odermanagement.php">OrderManagement</a></li>';
                
			}
			?>
                                    <?php 
				if(isset($_GET['customer_id'])){
					$customer_id = $_GET['customer_id'];
					
					Session::destroy();
				}
			?>
                                    <li>
                                    <?php
			$login_check = Session::get('customer_login'); 
			if($login_check==false){
				echo '<a href="login.php">Đăng nhập</a></div>';
			}else{
				echo '<a href="?customer_id='.Session::get('customer_id').'">Đăng xuất</a></div>';
			}
			?>
                                    </li>
                                </ul>
                            </li>
                            
                        </ul>
                    </nav>
                
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    