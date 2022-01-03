<?php include 'inc/header.php';?>
<section class="breadcrumb-blog set-bg" data-setbg="./public/user/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Our Blog</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
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

