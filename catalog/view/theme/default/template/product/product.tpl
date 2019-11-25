<?php echo $header; ?>
<div class="container _padding-top-md">
  <ul class="breadcrumb">
    <!-- <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php //echo $breadcrumb['text']; ?></a></li>
    <?php } ?> -->
  </ul>

  <!--<ul class="breadcrumb  animate fadeInDown">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>-->

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="-content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php $class = 'col-sm-8'; ?>
       
        <!-- <div class="col-lg-12  animate fadeInDown">
          <div class="heading_title">
            <h1><?php echo $heading_title; ?></h1>  
          </div>
        </div> -->
      <div class="<?php echo $class; ?>">
          
          <div class="animate fadeInDown">
            <div id="slideshow0" class="owl-carousel" style="opacity: 1;">
              <!-- slide -->
              <div class="item">
                <img src="<?php echo $thumb; ?>" alt="" class="img-responsive" />
              </div>
              <!-- slide -->
              <?php foreach ($images as $image) { ?>
                <div class="item">
                  <img width="100%" src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                </div>
              <?php } ?>
              <!-- <div class="item">
                <img src="<?php echo $thumb; ?>" alt="" class="img-responsive" />
              </div> -->
            </div>
          </div>

          <div style="display: none;">
            <?php if ($thumb || $images) { ?>
              <ul class="thumbnails animate fadeInDown">
                <?php if ($thumb) { ?>
                <li><a class="thumbnail" href="javascript:void(0);<?php //echo $popup; ?>" title="<?php echo $heading_title; ?>"><img width="100%" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                <?php } ?>
                <?php if ($images) { ?>
                <!-- <?php foreach ($images as $image) { ?>
                <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                <?php } ?> -->
                <?php } ?>
              </ul>
            <?php } ?>
          </div>

          <div class="tab-content animate fadeInDown" style="margin-bottom: 15px;">
            <center>
              <div class="col-sm-offset-4 col-md-offset-3 col-sm-6">
                <div class="col-sm-6 col-xs-6" style="border-bottom:5px solid #f00;">
                  <i style="font-size:55px;" class="fa fa-wa fa-photo"></i><br>
                  Gallery
                </div>
                <div class="col-sm-6 col-xs-6">
                  <a href="javascript:void(0);" style="color:#eee;" data-toggle="modal" data-target=".bs-example-modal-lg">
                    <i style="font-size:55px;" class="fa fa-wa fa-youtube-play"></i><br>
                    Video
                  </a>
                </div>
              </div>
              <div class="clearfix"></div>
            </center>

             <!-- <li>
                <div class="zoom-container">
                  <a href="#">
                    <span class="zoom-caption">
                      <i class="icon-play fa fa-play"></i>
                    </span>
                    <img src="image/product/kids.png" />
                  </a>
                </div>
             </li> -->
          </div>
          
          <!--window rating############-->
          <div class="hidden-xs">
	          <ul class="nav nav-tabs animate fadeInDown ">
	            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
	            <?php if ($attribute_groups) { ?>
	            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
	            <?php } ?>
              <!-- <li><a href="#tab-personalization" data-toggle="tab">Personalization</a></li> -->
	            <?php if ($review_status) { ?>
	            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
	            <?php } ?>
	          </ul>

	          <!-- modal popup video -->
	          <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="color:#000;">
	              <div class="modal-dialog modal-lg">
	                <div class="modal-content">
	
	                  <div class="modal-header">
	                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
	                    </button>
	                    <h2 class="modal-title" id="myModalLabel"><?php echo $heading_title; ?></h2>
	                  </div>
	                  <div class="modal-body">
	                    <iframe width="100%" height="350" src="<?php echo $video_url;?>" frameborder="0" allowfullscreen></iframe>
	                  </div>
	                  <div class="modal-footer">
	                    <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">Close</button>
	                  </div>
	
	                </div>
	              </div>
	          </div>

	          <div class="tab-content animate fadeInDown ">
	            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
	            <?php if ($attribute_groups) { ?>
	            <div class="tab-pane" id="tab-specification">
	              <table class="table table-bordered">
	                <?php foreach ($attribute_groups as $attribute_group) { ?>
	                <thead>
	                  <tr>
	                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
	                  </tr>
	                </thead>
	                <tbody>
	                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
	                  <tr>
	                    <td><?php echo $attribute['name']; ?></td>
	                    <td><?php echo $attribute['text']; ?></td>
	                  </tr>
	                  <?php } ?>
	                </tbody>
	                <?php } ?>
	              </table>
	            </div>
	            <?php } ?>
              <div class="tab-pane" id="tab-personalization">
                  <img width="100%" src="image/BootID-Main.jpg">
              </div>
	            <?php if ($review_status) { ?>
	            <div class="tab-pane" id="tab-review">
	              <form class="form-horizontal" id="form-review">
	                <div id="review"></div>
	                <h2><?php echo $text_write; ?></h2>
	                <?php if ($review_guest) { ?>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
	                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
	                  </div>
	                </div>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
	                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
	                    <div class="help-block"><?php echo $text_note; ?></div>
	                  </div>
	                </div>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label"><?php echo $entry_rating; ?></label>
	                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
	                    <input type="radio" name="rating" value="1" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="2" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="3" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="4" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="5" />
	                    &nbsp;<?php echo $entry_good; ?>
	                  </div>
	                </div>
	                <?php echo $captcha; ?>
	                <div class="buttons clearfix">
	                  <div class="pull-right">
	                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-danger btn-lg"><?php echo $button_continue; ?></button>
	                  </div>
	                </div>
	                <?php } else { ?>
	                <?php echo $text_login; ?>
	                <?php } ?>
	              </form>
	            </div>
	            <?php } ?>
	          </div>
	
	        </div>
	        
	     </div>
	    
	    <!--##############-->
	    
        <?php $class = 'col-sm-4'; ?>

        <div class="animate fadeInDown ">
          <div class="<?php echo $class; ?>">
            <!--<div class="btn-group">
              <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
            </div> -->
            <div class="product-detail">
              <div style="font-size:18px;font-weight: bold;color:#fff;"><?php echo $heading_title; ?></div>  
              <div class="col-lg-12" style="display: none;">
                <div class="row" style="padding-top:5px;">
                  <ul class="list-unstyled pull-left">
                    <?php if ($manufacturer) { ?>
                    <li><?php //echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php //echo $manufacturer; ?></a></li>
                    <?php } ?>
                    <li><?php //echo $text_model; ?> <?php //echo $model; ?></li>
                    <?php if ($reward) { ?>
                    <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
                    <?php } ?>
                    <!--<li><?php echo $text_stock; ?> <?php echo $stock; ?></li>-->
                  </ul>
                </div>
              </div>
              <div class="product col-lg-12" style="padding-top: 15px;padding-bottom: 15px;">
                <div class="row">
                  <p class="price-text">Prokit Online Price</p>
                  

                  <style type="text/css">
                  p.price-text {
                    margin: 0;
                  }
                  p.price-text {
                    font-size: 12px;
                  }
                    .product p.price {
                        display: inline-block;
                    }
                     p.price {
                      color:#fff;
                        line-height: 1;
                        margin: 0;
                        font-weight: 600;
                    }
                     p.price {
                        font-size: 25px;
                        font-weight: 600;
                    }
                    .product p.old-price {
                          text-decoration: line-through;
                          display: inline-block;
                          margin: 0 0 0 6px;
                          color: #ccc;
                          font-size: 15px;
                      }
                      .product p.saving {
    font-size: 15px;
}
.product p.saving {
    display: inline-block;
    margin: 0 0 0 6px;
}
 p.saving {
    margin: 0;
    color: #f00;
    font-weight: 400;
}
                  </style>
                  <!-- <p class="price">£55.00</p>
                  <p class="old-price">£80.00</p>
                  <p class="saving">Save £25.00</p> -->
                <?php if ($price) { ?>
                 <?php if (!$special) { ?>
                  <p class="price"><?php echo $price; ?></p>
                  <!-- <p class="old-price">$80.00 -->
                  <!-- <p class="saving">Save $25.00</p> -->
                  
                  <?php } else { ?>
                  <p class="price"><?php echo $special; ?></p>
                  <p style="color:#f00" class="old-price"><?php echo $price; ?></p>
                  <!-- <p class="saving">Save $25.00</p> -->
                  <?php } ?>
                  
                  <ul class="list-unstyled" style="display: none;">
                    <?php if (!$special) { ?>
                    <li>
                      <div style="font-size:18px;color:#ff0d0d;"><b><?php echo $price; ?></b></div>
                    </li>
                    <?php } else { ?>
                    <li>
                      <div style="font-size:18px;color:#f00;"><?php echo $special; ?>  &nbsp;&nbsp; <span style="text-decoration: line-through;color:#fff !important;"><?php echo $price; ?></span></div>
                    </li>
                    <?php } ?>
                   <!--  <?php if ($tax) { ?>
                    <li><?php //echo $text_tax; ?> <?php echo $tax; ?></li>
                    <?php } ?> -->
                    <?php if ($points) { ?>
                    <li><?php echo $text_points; ?> <?php echo $points; ?></li>
                    <?php } ?>
                    <?php if ($discounts) { ?>
                    <li>
                      <hr>
                    </li>
                    <?php foreach ($discounts as $discount) { ?>
                    <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                    <?php } ?>
                    <?php } ?>
                  </ul>
                <?php } ?>
                </div>
              </div>

              <!-- Available Size -->
              <!-- <div class="form-group">
                <?php 
                  if($available_size){
                    echo "<span style=\"color:#fff;\">- Available Size : " .$availablelable_size . "</span>";
                  }
                ?>
              </div> -->

              <!--<p>
                <?php //echo $description;?>
              </p>-->

              <div id="product">
                <?php if ($options) { ?>
                <hr>
                <?php if(in_array('box', $arr_convert)){?>
                  <div class="pull-left" style="-display:none;padding-bottom: 10px;">
                    <div class="-row">
                      <?php $i=1;?>
                      <?php foreach ($option_sizes as $val) { ?>
                        <?php
                          $class='toggleOptionSize'; 
                          if($i==1){
                            $class='toggleOptionSize -active';
                          }
                        ?>
                        <a data-id="<?php echo $val['option_size_id'];?>" class="<?php echo $class;?>" style="font-size:15px;padding-right: 5px;" href="javascript:void(0);"><b><?php echo $val['name'];?></b>
                        </a>
                        <?php $i++;?>
                      <?php } ?>
                    </div>
                  </div>
                <?php } ?>
                <!-- <h3><?php echo $text_option; ?></h3> -->
                <!-- ###################### option box -->
                <?php foreach ($options as $option) { ?>

                  <?php if ($option['type'] == 'box') { ?>
                  <div class="-form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label style="display: none;" class="control-label"><?php echo $option['name']; ?></label>
                    <div class="scrollTop"></div>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <div>
                        
                        <div class="clearfix"></div>
                        <div class="-row">
                          <dt>
                          <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <div class="col-sm-4 col-xs-4 optionsizeid optionsizeid<?php echo $option_value['option_size_id'];?>">
                              <div class="row">
                                <center>
                                  <?php 
                                    if($option_value['is_instock']!=1){?>
                                      <label style="width: 100%"><?php //echo $option_value['option_value_id'];?><div class="notallow_size"><?php echo $option_value['name']; ?></div></label>
                                  <?php }else{ ?>
                                      <label style="width: 100%"><?php //echo $option_value['option_value_id'];?><input style="display: none;" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"/><div class="toggle_option_size"><?php echo $option_value['name']; ?></div></label>
                                  <?php } ?>
                                </center>
                              </div>
                            </div>
                          <!-- <div class="radio">
                            <label>
                              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                              <?php echo $option_value['name']; ?>
                              <?php if ($option_value['price']) { ?>
                              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                              <?php } ?>
                            </label>
                          </div> -->
                          <?php } ?>
                          </dt>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <?php } ?>
                <?php } ?>
          
                <!-- ################## Other Option -->
                <?php foreach ($options as $option) { ?>
                  <?php if ($option['type'] == 'select') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                      <option value=""><?php echo $text_select; ?></option>
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                      </option>
                      <?php } ?>
                    </select>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'radio') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="radio">
                        <label>
                          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                          <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                  <?php } ?>

                  <?php if ($option['type'] == 'checkbox') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                          <?php if ($option_value['image']) { ?>
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                          <?php } ?>
                          <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>


                  <?php } ?>
                  <?php if ($option['type'] == 'image') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      
                      <span class="pull-left" style="padding-right: 5px;">
                        <div style="background-color:<?php echo $option_value['name']; ?>;height: 20px;width: 20px;"></div>
                      </span>

                      <div class="radio">
                        <label>
                          <!-- <button class="btn btn-circle btn-danger"></button>
                          <button class="btn btn-circle btn-success"></button>
                          <button class="btn btn-circle btn-prmary"></button> -->

                          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'text') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'textarea') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'file') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label"><?php echo $option['name']; ?></label>
                    <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'date') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group date">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'datetime') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group datetime">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                  <?php } ?>
                  <?php if ($option['type'] == 'time') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                    <div class="input-group time">
                      <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                      <span class="input-group-btn">
                      <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                      </span></div>
                  </div>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($recurrings) { ?>
                  <hr>
                  <h3><?php echo $text_payment_recurring ?></h3>
                  <div class="form-group required">
                    <select name="recurring_id" class="form-control">
                      <option value=""><?php echo $text_select; ?></option>
                      <?php foreach ($recurrings as $recurring) { ?>
                      <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                      <?php } ?>
                    </select>
                    <div class="help-block" id="recurring-description"></div>
                  </div>
                <?php } ?>
                <!-- bootID -->
                <div class="clearfix"></div>
                <?php if($is_personalization==1) {?>
                <div class="bootid">
                  <div class="bootID-inner">
                    <span class="pull-left"><span class="title-bootID">BOOT ID</span></span>
                    <span class="pull-right"><small class="title-whatnew">What's this?</small></span>
                    <div class="clearfix"></div>
                  </div>

                  <div class="dispatch-option row">
                    <ul>
                      <li>
                      <div class="radio" id="uniform-pers-opt0"><span class="checked"><input name="pers-type" id="pers-opt0" value="0" checked="checked" type="radio"></span></div>
                      <label id="initCheckWithoutP" for="pers-opt0">Continue Without Personalisation</label>
                      </li>
                      <li>
                      <div class="radio" id="uniform-pers-opt1"><span><input name="pers-type" id="pers-opt1" value="1" type="radio"></span></div>
                      <label for="pers-opt1">Add your Name</label>
                      </li>
                      <!-- <li>
                      <div class="radio" id="uniform-pers-opt2"><span><input name="pers-type" id="pers-opt2" value="5" type="radio"></span></div>
                      <label for="pers-opt2">Add your Name &amp; Flag (+$10.00)</label>
                      </li> -->
                    </ul>
                  </div>
                  
                  <script type="text/javascript">
                    $("#initCheckWithoutP").click(function(){
                      $("input[name='boot_name']").hide();
                    });
                    $("#uniform-pers-opt1").click(function(){
                      $("input[name='boot_name']").show();
                    });
                  </script>

                  <div class="boot-design">
                    <div class="row">
                      <div class="col-sm-12"><input style="font-size:15px;display: none;" type="text" class="form-control" name="boot_name" maxlength="<?php echo $letter_allow_personalization;?>" placeholder="Name"></div>
                      <!-- <div class="col-sm-6">
                        <select style="font-size:15px;" class="form-control" name=" ">
                          <option value="">--Select Flags--</option>
                          <option value="">Cambodia</option>
                        </select>
                      </div> -->
                      <!-- <div class="additional-dispatch col-sm-12">
                        <small>Additional dispatch time: 2 - 3 days</small>
                      </div> -->
                    </div>
                  </div>

                </div>    

                <?php 
                  }
                ?>           

                <div class="">
                  <div style="margin-bottom: 15px;padding-top:15px;">
                    <span class="pull-left"><label style="padding: 5px 10px 0 0px;" class="control-label" for="input-quantity">
                      <?php //echo $entry_qty; ?>Quantity</label></span>
                    <span class="pull-left"><button id="initSubtractQty" class="btn btn-md btn-add-qty">-</button></span>
                    <span class="pull-left"><input style="text-align:center;font-size:16px;" type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" /></span>
                    <span class="pull-left"><button id="initAddQty" class="btn btn-md btn-add-qty">+</button></span>
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    <div class="clearfix"></div>
                  </div>
                  <style type="text/css">
                    .btn-add-qty {
                      color: #ffffff;
                      text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
                      background-color: #f00;
                      background-image: linear-gradient(to bottom, #f00, #f00);
                      background-repeat: repeat-x;
                      border-color: #f00 #f00 #f00;
                    }
                  </style>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" name="buynow" value="1" class="button buy-online">Buy Now</button>
                  <!-- <button type="button" onclick="cart.add('<?php echo $product_id; ?>', '<?php echo $minimum; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button> -->
                    
                    <!-- <br /> -->
                  
                    <!-- <div id="MyDiv">
                       <a onclick="Skype.tryAnalyzeSkypeUri('call', '0');" href="skype:myskypename?call">
                          <img role="Button" src="/images/mybutton.gif">
                       </a>
                    </div> -->
                    <!--<a target="_blank" class="btn btn-primary btn-lg btn-block" href="http://www.facebook.com/dialog/send?app_id=343361892524407&amp;link=http://stackoverflow.com/questions/11093828/how-to-customize-a-facebook-send-button&amp;redirect_uri=https://www.domain.com/"><i class="fa fa-wa fa-comment"></i> Message</a>-->
                    <!--<a id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg col-sm-6"><i class="fa fa-wa fa-comment"></i> Message</a>-->

                    <!--<a onclick="window.location='tel:017 791 110';" href="javascript:void(0);" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg col-sm-12"><i class="fa fa-wa fa-phone"></i> Call Now (+855) 17 791 110</a>-->
                </div>
                <?php $fPart = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";?>
                <script type="text/javascript"> 
                  FB.ui({
                    method: 'send',
                    name: 'People Argue Just to Win',
                    link: '<?php echo $fPart;?>',
                  });
                  function popupSendFB(){
                    window.open('https://www.facebook.com/dialog/send?app_id=343361892524407&link=<?php echo $fPart;?>&redirect_uri=http://$_SERVER[HTTP_HOST]/','_blank')
                  }
                </script>	
                
                
                

                <!-- modal popup video -->
                <!-- <div class="modal fade bs-2-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="color:#000;">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h2 class="modal-title" id="myModalLabel">  <?php echo $heading_title; ?></h2>
                        </div>
                        <div class="modal-body">
                          <div class="fb-send" data-colorscheme="dark" data-href="https://www.facebook.com/prokitsoccerstore/" data-layout="button_count"></div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">Close</button>
                        </div>

                      </div>
                    </div>
                </div> -->


                <?php if ($minimum > 1) { ?>
                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                <?php } ?>
              </div>
              <div class="clearfix"></div>
              <?php if ($review_status) { ?>
              <div class="rating" style="display:none;">
                <div class="clearfix"></div>
                <hr>

                <p>
                  <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>
                </p>

                <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($rating < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } ?>
                <?php } ?>
                <div style="margin-top:10px;"></div>
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                <!-- AddThis Button END -->
              </div>
              <?php } ?>
            </div>
            
            <!--###################### mobile tab description & Review #######################-->
            <div class="hidden-lg hidden-md hidden-sm" style="margin-top:15px;">
                 <ul class="nav nav-tabs animate fadeInDown ">
	            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
	            <?php if ($attribute_groups) { ?>
	            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
	            <?php } ?>
              <!-- <li><a href="#tab-personalization" data-toggle="tab">Personalization</a></li> -->
	            <?php if ($review_status) { ?>
	            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
	            <?php } ?>
	          </ul>
	
	          <!-- modal popup video -->
	          <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="color:#000;">
	              <div class="modal-dialog modal-lg">
	                <div class="modal-content">
	
	                  <div class="modal-header">
	                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
	                    </button>
	                    <h2 class="modal-title" id="myModalLabel"><?php echo $heading_title; ?></h2>
	                  </div>
	                  <div class="modal-body">
	                    <iframe width="100%" height="350" src="<?php echo $video_url;?>" frameborder="0" allowfullscreen></iframe>
	                  </div>
	                  <div class="modal-footer">
	                    <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">Close</button>
	                  </div>
	
	                </div>
	              </div>
	          </div>
	
	          <div class="tab-content animate fadeInDown ">
	            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
	            <?php if ($attribute_groups) { ?>
	            <div class="tab-pane" id="tab-specification">
	              <table class="table table-bordered">
	                <?php foreach ($attribute_groups as $attribute_group) { ?>
	                <thead>
	                  <tr>
	                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
	                  </tr>
	                </thead>
	                <tbody>
	                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
	                  <tr>
	                    <td><?php echo $attribute['name']; ?></td>
	                    <td><?php echo $attribute['text']; ?></td>
	                  </tr>
	                  <?php } ?>
	                </tbody>
	                <?php } ?>
	              </table>
	            </div>
	            <?php } ?>

	            <?php if ($review_status) { ?>
	            <div class="tab-pane" id="tab-review">
	              <form class="form-horizontal" id="form-review">
	                <div id="review"></div>
	                <h2><?php echo $text_write; ?></h2>
	                <?php if ($review_guest) { ?>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
	                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
	                  </div>
	                </div>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
	                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
	                    <div class="help-block"><?php echo $text_note; ?></div>
	                  </div>
	                </div>
	                <div class="form-group required">
	                  <div class="col-sm-12">
	                    <label class="control-label"><?php echo $entry_rating; ?></label>
	                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
	                    <input type="radio" name="rating" value="1" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="2" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="3" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="4" />
	                    &nbsp;
	                    <input type="radio" name="rating" value="5" />
	                    &nbsp;<?php echo $entry_good; ?>
	                  </div>
	                </div>
	                <?php echo $captcha; ?>
	                <div class="buttons clearfix">
	                  <div class="pull-right">
	                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-danger btn-lg"><?php echo $button_continue; ?></button>
	                  </div>
	                </div>
	                <?php } else { ?>
	                <?php echo $text_login; ?>
	                <?php } ?>
	              </form>
	            </div>
	            <?php } ?>
	          </div>
	
	        </div>
	      </div>
             <!--###################################-->
          </div>          
        </div>
        
        

      </div>
      <?php if ($products) { ?>
      <!-- <div class="heading_related"><center><?php echo $text_related;?></center></div> -->
      <div class="heading_title">
        <h1><center><?php echo $text_related;?></h1>  
      </div>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">

            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <!-- <p><?php echo $product['description']; ?></p> -->
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php //if ($product['price']) { ?>
              <!-- <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p> -->
              <?php //} ?>
              <!-- <a href="<?php echo $product['href']; ?>" class="btn btn-danger btn-lg">READ MORE</a> -->
            </div>
            <div class="button-group">
              <button type="button" onclick="_cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>  
            <div class="button-group">
              <button type="button" onclick="_cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<script type="text/javascript">
  // $(".-toggleOptionSize").click(function(){
  //   var id = $(this).data('id');
  //   $('.toggleOptionSize').removeClass('active');
  //   $(this).toggleClass('active');
  // });
  $(".toggle_option_size").click(function(){
    $('.toggle_option_size').removeClass('active');
    $(this).toggleClass('active');
  });

  $(".toggleOptionSize").click(function(){
    $('.toggleOptionSize').removeClass('active');
    $('.toggle_option_size').removeClass('active');
    $("input:radio").attr("checked", false);
    $(this).toggleClass('active');
    var option_size_id = $(this).data("id");
    var product_id = $('input[name=\'product_id\']').val();
    // $(".optionsizeid").show();
    // $(".optionsizeid" + $(this).data("id") + "").show().siblings("div").hide();
    var length = $(".optionsizeid" + $(this).data("id") + "").length;
    if(length>1){
      $(".optionsizeid").hide(); 
      $(".optionsizeid" + $(this).data("id") + "").show(); 
    }else{
      $(".optionsizeid" + $(this).data("id") + "").show().siblings("div").hide();   
    }
    

    // $(this).parent( "div" ).find(".optionsize-id"+$(this).data("id")+"").toggle();
    // $(this).parent( "div" ).find("#" + $(this).data("id") + "-optionsizeid").toggle();
    // $.ajax({
    //   url: 'index.php?route=product/getOptionProductBySize',
    //   type: 'post',
    //   data:{product_id:product_id,option_size:option_size_id},
    //   //$('input[name=\'product_id\']',"option_size":option_size_id),
    //   dataType: 'json',
    //   beforeSend: function() {
        
    //   },
    //   success: function(json) {
    //     console.log("test");
    //     // $('.alert, .text-danger').remove();

    //     // if (json['success']) {
    //     //   $('#recurring-description').html(json['success']);
    //     // }
    //   }
    // });

    // alert(option_size_id);
    // $('html,body').animate({
    //   scrollTop: $(".scrollTop").offset().top},'slow');
    //   $("#"+$(this).data("id")+"-optionsizeid").show(1000).siblings("div").hide(1000);    
    // });
  });

</script>
<script type="text/javascript">

  function sendMessage(){
    
  }
  
  window.open('fb-messenger://share?link=' + encodeURIComponent(link) += '&app_id=' + encodeURIComponent(app_id));
</script>

<script type="text/javascript">
  $("#initSubtractQty").click(function(){
    var quantity = $("input[name='quantity']").val();
    if(quantity<=1){

    }else{
      var tQty = parseInt(quantity)-1;
      $("input[name='quantity']").val(tQty);
    }
  });

  $("#initAddQty").click(function(){
    var quantity = $("input[name='quantity']").val();
    var tQty = parseInt(quantity)+1;
    $("input[name='quantity']").val(tQty);
  });
</script>

<script type="text/javascript"><!--
  $('#slideshow0').owlCarousel({
    items: 1,
    autoPlay: false,
    singleItem: true,
    navigation: true,
    navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    pagination: true
  });
</script>

<script type="text/javascript"><!--
  $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  	$.ajax({
  		url: 'index.php?route=product/product/getRecurringDescription',
  		type: 'post',
  		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
  		dataType: 'json',
  		beforeSend: function() {
  			$('#recurring-description').html('');
  		},
  		success: function(json) {
  			$('.alert, .text-danger').remove();

  			if (json['success']) {
  				$('#recurring-description').html(json['success']);
  			}
  		}
  	});
  });
</script>

<script type="text/javascript"><!--
  $('#button-cart').on('click', function() {
  	$.ajax({
  		url: 'index.php?route=checkout/cart/add',
  		type: 'post',
  		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
  		dataType: 'json',
  		beforeSend: function() {
  			$('#button-cart').button('loading');
  		},
  		complete: function() {
  			$('#button-cart').button('reset');
  		},
  		success: function(json) {
  			$('.alert, .text-danger').remove();
  			$('.form-group').removeClass('has-error');

  			if (json['error']) {
  				if (json['error']['option']) {
  					for (i in json['error']['option']) {
  						var element = $('#input-option' + i.replace('_', '-'));

  						if (element.parent().hasClass('input-group')) {
  							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
  						} else {
  							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
  						}
  					}
  				}

  				if (json['error']['recurring']) {
  					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
  				}

  				// Highlight any found errors
  				$('.text-danger').parent().addClass('has-error');
  			}

  			if (json['success']) {
  				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

  				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

  				$('html, body').animate({ scrollTop: 0 }, 'slow');

  				$('#cart > ul').load('index.php?route=common/cart/info ul li');
  			}
  		},
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
  	});
  });
  //--></script>
  <script type="text/javascript"><!--
  $('.date').datetimepicker({
  	pickTime: false
  });

  $('.datetime').datetimepicker({
  	pickDate: true,
  	pickTime: true
  });

  $('.time').datetimepicker({
  	pickDate: false
  });

  $('button[id^=\'button-upload\']').on('click', function() {
  	var node = this;

  	$('#form-upload').remove();

  	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  	$('#form-upload input[name=\'file\']').trigger('click');

  	if (typeof timer != 'undefined') {
      	clearInterval(timer);
  	}

  	timer = setInterval(function() {
  		if ($('#form-upload input[name=\'file\']').val() != '') {
  			clearInterval(timer);

  			$.ajax({
  				url: 'index.php?route=tool/upload',
  				type: 'post',
  				dataType: 'json',
  				data: new FormData($('#form-upload')[0]),
  				cache: false,
  				contentType: false,
  				processData: false,
  				beforeSend: function() {
  					$(node).button('loading');
  				},
  				complete: function() {
  					$(node).button('reset');
  				},
  				success: function(json) {
  					$('.text-danger').remove();

  					if (json['error']) {
  						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
  					}

  					if (json['success']) {
  						alert(json['success']);

  						$(node).parent().find('input').attr('value', json['code']);
  					}
  				},
  				error: function(xhr, ajaxOptions, thrownError) {
  					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
  				}
  			});
  		}
  	}, 500);
  });
</script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
