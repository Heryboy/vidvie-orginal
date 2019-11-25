<?php echo $header; ?>

<div class="">

  <div class=""><?php echo $column_left; ?>

    <?php if ($column_left && $column_right) { ?>

    <?php $class = 'col-sm-6'; ?>

    <?php } elseif ($column_left || $column_right) { ?>

    <?php $class = 'col-sm-9'; ?>

    <?php } else { ?>

    <?php $class = 'col-sm-12'; ?>

    <?php } ?>

    <!-- <div id="content" class="<?php //echo $class; ?>"><?php//echo $content_top; ?><?php //echo $content_bottom; ?></div> -->

      <div id="content" class="">

        <!-- #########FEATURE########## -->

        <!-- ################### -->

        <?php echo $content_top; ?>

        <div class="container padding-top-md" style="-padding-top:10px;">

            <div class="row">

              <div class="-product-group-top">

                <?php 

                if($categories){

                    foreach($categories as $data){

                ?>

                  <div class="col-sm-6 col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                    <div class="product-group-top-grid1">

                      <figure class="thumb">

                        <a href="<?php echo $data['href'];?>">

                          <img src="<?php echo $data['photo'];?>" alt=" " class="-img-responsive" />

                        </a>

                      </figure>

                     <!--  <div style="background-color:#f00;width:100%;padding:15px;color:#fff;font-size:25px;">

                        <center><?php echo $data['name'];?></center>

                      </div> -->

                      <div style=";font-weight: bold;width:100%;padding:15px;color:#fff;font-size:22px;background-color: #0b0b0b;">

                        <center><?php echo $data['name'];?></center>

                      </div>

                    </div>

                  </div>

                <?php 

                    }

                }

                ?>



                <!-- <div class="col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                  <div class="product-group-top-grid1">

                    <figure class="thumb">

                      <a href="#">

                        <img src="image/catalog/Boots/hl2.jpg" alt=" " class="-img-responsive" />

                      </a>

                    </figure>

                  </div>

                </div>



                <div class="col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                  <div class="product-group-top-grid1">

                    <figure class="thumb">

                      <a href="#">

                        <img src="image/catalog/Boots/hl1.jpg" alt=" " class="-img-responsive" />

                      </a>

                    </figure>

                  </div>

                </div>



                <div class="col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                  <div class="product-group-top-grid1">

                    <figure class="thumb">

                      <a href="#">

                        <img src="image/catalog/Boots/hl2.jpg" alt=" " class="-img-responsive" />

                      </a>

                    </figure>

                  </div>

                </div>



                <div class="col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                  <div class="product-group-top-grid1">

                    <figure class="thumb">

                      <a href="#">

                        <img src="image/catalog/Boots/hl1.jpg" alt=" " class="-img-responsive" />

                      </a>

                    </figure>

                  </div>

                </div>



                <div class="col-md-6 animate fadeInLeft" style="padding-bottom:25px;">

                  <div class="product-group-top-grid1">

                    <figure class="thumb">

                      <a href="#">

                        <img src="image/catalog/Boots/hl2.jpg" alt=" " class="-img-responsive" />

                      </a>

                    </figure>

                  </div>

                </div>

 -->

                



              </div>

            </div>

          </div>

            

            <div class="clearfix"></div>

        <?php echo $content_bottom; ?>

      </div>

    <?php echo $column_right; ?></div>

</div>

<?php echo $footer; ?>