<div class="container padding-top-md"> 
  <div class="animate fadeInDown">
    <div class="Latest-product-background-title">
        <div><?php echo $heading_title; ?></div>
    </div>
  </div>

  <div class="row">
    <?php foreach ($products as $product) { ?>
    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6" style="position: relative;">
      <div class="product-thumb transition animate fadeInLeft" style="position:relative !important;">

        <div style="position:absolute;right:0;top:0px;">

          <div style="font-size:13px;color:#fff;background-color:#f00;padding:0px 4px;">

            <?php 

              if($product['is_sale']==1){

                echo "SALE";

                if($product['price_percentage']){

                  echo "<br>".'-'.$product['price_percentage']."% OFF";

                }

              }else if($product['text_flag']!=""){

                echo $product['text_flag'];

              }else{

                echo"NEW";

                if($product['price_percentage']){

                  echo "<br>".'-'.$product['price_percentage']."% OFF";

                }

              }

            ?>

          </div>

        </div>



        <div class="product-display" style="display:none;">

          <!-- <div class="product-status">PRO</div> -->

          <div class="product-price">

            <div style="top:0;right:0;position:absolute;color:#fff;float:right;width:40px;background-color:#f00;padding:5px;display:none;">NEW</div>

            <!-- <div class="product-price-background"> -->

              <?php if ($product['price']) { ?>

                <div class="price">

                  SALE  

                  <?php //if (!$product['special']) { ?>

                  <?php //echo $product['price']; ?>

                  <?php //} else { ?>

                    <!-- <span class="price-new"><?php echo $product['special']; ?></span> -->

                  <?php //} ?>

                </div>

              <?php } ?>

            <!-- </div> -->

          </div>

        </div>



        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>

        <div class="caption">

          <?php if ($product['rating']) { ?>

            <div class="rating">

              <?php for ($i = 1; $i <= 5; $i++) { ?>

              <?php if ($product['rating'] < $i) { ?>

              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>

              <?php } else { ?>

              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>

              <?php } ?>

              <?php } ?>

            </div>

            <?php } ?>

            <h3 class="l-product-title"><a href="<?php echo $product['href']; ?>">

              <div class="hidden-lg hidden-sm hidden-md">

                <?php 

                  if (strlen($product['name']) > 30){

                    echo $str = substr($product['name'], 0, 30) . '...';

                  }else{

                    echo $product['name'];

                  }

                ?>

              </div>



              <div class="hidden-xs">

                <?php 

                  if (strlen($product['name']) > 50){

                    echo $str = substr($product['name'], 0, 80) . '...';

                  }else{

                    echo $product['name'];

                  }

                ?>

              </div>

            </a></h3>

            <!-- <div style="font-size:14px;padding-bottom:5px;color:#f4f4f4;"><center>Prokit Soccer</center></div> -->

            <?php if ($product['price']) { ?>

            <p class="price">

              <?php if (!$product['special']) { ?>

              <?php echo $product['price']; ?>

              <?php } else { ?>

              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>

              <?php } ?>

              <?php if ($product['tax']) { ?>

              <!-- <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span> -->

              <?php } ?>

            </p>

            <?php } ?>

         

          <!-- <p><?php echo $product['description']; ?></p> -->

          

        </div>

      

      </div>

    </div>

    <?php } ?>

  </div>

</div>





<!-- Latest Product -->

<!-- <div class="row">

    <div class="col-lg-12">

      <div class="Latest-product-background-title">

        <div>Lastest Products</div>

      </div>

    </div>

</div>



<div class="Best-Seller">

  <div class="row">

     <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

       <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

          <div class="product-display">

              <div class="product-status">PRO</div>

              <div class="product-price">

                <div class="product-price-background">

                  <span>$</span><span>150</span>

                </div>

              </div>

              <img class="img-responsive" src="image/product/kids.jpg">

          </div>

          <p class="product-tittle">Football boots with sock</p>

     </div>



  </div>

</div>

 -->

