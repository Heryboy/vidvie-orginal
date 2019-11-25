<?php echo $header; ?>
<?php if ($banner || $description) { ?>
  <div class="-animate -fadeInLeft"><img src="<?php echo $banner;?>" width="100%"></div>
<?php } ?>
<div class="container padding-top-xs">
  <!-- <div class="hidden-xs" style="margin-bottom: 10px;">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div> -->
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="clearfix"></div>
      <!-- <div class="heading_title" style="margin-top:10px;"><?php echo $heading_title; ?></div>
      <?php if ($photo || $description) { ?>
      <div class="row">
        <?php if ($photo) { ?>
        <div class="col-sm-2 animate fadeInDown"><img src="<?php echo $photo; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?> -->


      <!-- <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?> -->


      <?php if ($products) { ?>
      <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
      <div class="category-layout">
        <div class="row">
          <!-- <div class="col-md-4">
            &nbsp; -->
            <!-- <div class="btn-group">
              <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
              <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            </div> -->
          <!-- </div> -->
          <!-- <div class="col-md-2 text-right">
            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
          </div>
          <div class="col-md-3 text-right">
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div> -->
          <div class="col-md-9"></div>
          <div class="col-md-1 col-xs-3 text-right">
            <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
          </div>
          <div class="col-md-2 col-xs-9 text-right">
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
      <br />
      <div class="-row">
        <?php 
          
          if(isset($_REQUEST['filter'])){
            $explode = explode(',',$_REQUEST['filter']);
          }else{
            $explode = '';
          }
              
        ?>
        <?php foreach ($products as $product) { ?>
          <div style="border:1px solid #161616;" class="-product-layout -product-list col-sm-4 col-md-4 col-xs-4 animate fadeInLeft">
            <div class="row product-thumb">
              <div class="image" style="position: relative;">
                <div style="font-size:13px;right:0;position:absolute;color:#fff;float:right;background-color:#f00;padding:0px 4px;">
                  <?php 
                    if($product['is_sale']==1){
                      echo "SALE";
                      if($product['price_percentage']){
                        echo "<br>".'-'.$product['price_percentage']."% OFF";
                      }
                    }else{
                      echo"NEW";
                      if($product['price_percentage']){
                        echo "<br>".'-'.$product['price_percentage']."% OFF";
                      }
                    }
                  ?>
                </div>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" style="width:100%;" class="img-responsive" /></a>
              </div>
              <div>
                <div class="caption">
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
                          echo $str = substr($product['name'], 0, 50) . '...';
                        }else{
                          echo $product['name'];
                        }
                      ?>
                    </div>
                  </a></h3>
                  <!-- <p><?php echo $product['description']; ?></p> -->
                  <?php //if ($product['rating']) { ?>
                  <!-- <div class="rating">
                    <?php //for ($i = 1; $i <= 5; $i++) { ?>
                    <?php //if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php //} else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php //} ?>
                    <?php//} ?>
                  </div> -->
                  <?php //} ?>
                  <?php if ($product['price']) { ?>
                  <p class="price">
                    <b>
                      <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                      <?php } else { ?>
                      <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                      <?php } ?>
                      <?php if ($product['tax']) { ?>
                      <!-- <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span> -->
                      <?php } ?>
                    </b>
                  </p>
                  <?php } ?>
                </div>

                <div class="button-group">
                  <center><div class="quickBuyTrigger" data-app-root="" data-product-quickref="157297"><a class="quickby" href="<?php echo $product['href']; ?>">Buy Now</a></div></center>
                  <!-- <button class="btn btn-sm btn-danger" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button> -->
                  <!-- <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button> -->
                  <!-- <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button> -->
                </div>

                 <!-- <div class="button-group">
                 <center>
                  <a href="<?php //echo $product['href']; ?>"><span class="-hidden-xs -hidden-sm -hidden-md">READ MORE</span>
                  </a>
                   </center>
                </div> -->
              </div>
            </div>
          </div>
        <?php } ?>
      </div>
      <div class="clearfix"></div>
      <div class="row" style="margin-top:15px;">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-danger btn-lg"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
