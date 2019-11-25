<div class="container padding-top-md">
  <div class="animate fadeInDown">
    <div class="Latest-product-background-title">
        <h5><?php echo $heading_title; ?></h5>
    </div>
  </div>

  <div class="clearfix"></div>
  <div id="carousel1" class="owl-carousel">

    <?php foreach ($products as $product) { ?>

    <div class="item">
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

      <a href="<?php echo $product['href']; ?>"><img style="width:100%" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="_img-responsive" /></a>

      <div class="desc_latest">
        Brand
        <div class="tpro_latest">
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
        </div> 

          <?php if ($product['price']) { ?>
            <b>
              <span class="price">

                <?php if (!$product['special']) { ?>

                <span class="price-new"><?php echo $product['price']; ?></span>

                <?php } else { ?>

                <span class="price-new"><?php echo $product['special']; ?></span> 
                &nbsp;&nbsp;
                <span class="price-old"><?php echo $product['price']; ?></span>

                <?php } ?>

                <?php if ($product['tax']) { ?>

                <!-- <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span> -->

                <?php } ?>
              </span>
            </b>
          <?php } ?>
        </div>
      </div>

    <?php } ?>
  </div>
</div>

<script type="text/javascript"><!--

  $('#carousel1').owlCarousel({

    items: 5,

    autoPlay: 3000,

    navigation: true,

    navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],

    pagination: true

  });

--></script>