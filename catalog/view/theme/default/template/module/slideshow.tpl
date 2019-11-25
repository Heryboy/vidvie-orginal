<!-- <div class="-animate -fadeInDown" style="z-index: 1;">
  <div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
    <?php foreach ($banners as $banner) { ?>
    <div class="item">
      <?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>">
        <img width="100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      </a>
      <?php } else { ?>
        <img width="100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      <?php } ?>
    </div>
    <?php } ?>
  </div>
</div>
</div> -->


<!-- Slider 1 -->
<div class="container">
  <div class="slider" id="slider<?php echo $module; ?>">
      <!-- Slides -->
      <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
          <!-- <a href="<?php echo $banner['link']; ?>"> -->
            <div style="background-image:url(<?php echo $banner['image'];?>?image=839)">
              <!-- <span class="titleBar">
                <h1><?php echo $banner['title'];?></h1>
              </span> -->
              <span class="titleBar">
                <h1><?php echo $banner['title'];?></h1>
              </span>
            </div>
            <!-- <img width="100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /> -->
          <!-- </a> -->
          <?php } else { ?>
            <div style="background-image:url(<?php echo $banner['image'];?>?image=839)">
              <!-- <span class="titleBar">
                <h1><?php echo $banner['title'];?></h1>
              </span> -->
              <span class="titleBar">
                <h1><?php echo $banner['title'];?></h1>
              </span>
            </div>
            
            <!-- <img width="100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /> -->
          <?php } ?>
      <?php } ?>
      <!-- <div style="background-image:url(https://unsplash.it/1920/1200?image=839)"></div>
      <div style="background-image:url(https://unsplash.it/1920/1200?image=838)"></div>
      <div style="background-image:url(https://unsplash.it/1920/1200?image=836)"></div>
      <div style="background-image:url(https://unsplash.it/1920/1200?image=826)"></div>
      <div style="background-image:url(https://unsplash.it/1920/1200?image=822)"></div> -->
      <!-- The Arrows -->
      <i class="left" class="arrows" style="z-index:2; position:absolute;"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z"></path></svg></i>
      <i class="right" class="arrows" style="z-index:2; position:absolute;"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" transform="translate(100, 100) rotate(180) "></path></svg></i>
      <!-- Title Bar -->
      <!-- <span class="titleBar">
          <h1>This Slider has all default settings.</h1>
      </span> -->
  </div>
</div>
<script>
$(document).ready(function() {
  
  $("#slider<?php echo $module; ?>").sliderResponsive({
  // Using default everything
    slidePause: 5000,
    fadeSpeed: 800,
    autoPlay: "on",
    showArrows: "off", 
    hideDots: "off", 
    hoverZoom: "on", 
    titleBarTop: "off"
  });
  
  $("#slider2").sliderResponsive({
    fadeSpeed: 300,
    autoPlay: "off",
    showArrows: "on",
    hideDots: "on"
  });
  
  $("#slider3").sliderResponsive({
    hoverZoom: "off",
    hideDots: "on"
  });
  
}); 
</script>


<!--group Category -->    
  <!-- product-group -->
<!--   <div class="product-group-top">
    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <a href="#">
            <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
            <figcaption class="caption">
              <h3><a href="#">Kids</a></h3>
            </figcaption>
          </a>
        </figure>
      </div>
    </div>

    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <a href="#">
            <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
            <figcaption class="caption1">
              <h3><a href="#">SPORT BOOTS</a></h3>
            </figcaption>
          </a>
        </figure>
      </div>
    </div>

    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <a href="#">
          <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
          <figcaption class="caption">
            <h3><a href="#">Sales</a></h3>
          </figcaption>
          </a>
        </figure>
      </div>
    </div>
  
    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <a href="#">
            <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
            <figcaption class="caption1">
              <h3><a href="#">EQ</a></h3>
            </figcaption>
          </a>
        </figure>
      </div>
    </div>
    
    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
          <figcaption class="caption">
            <h3><a href="#">SPORT BOOTS</a></h3>
          </figcaption>
        </figure>
      </div>
    </div>

    <div class="col-md-6 product-group-top-grid animate fadeInDown">
      <div class="product-group-top-grid1">
        <figure class="thumb">
          <a href="#">
            <img src="image/product/kids.jpg" alt=" " class="img-responsive" />
            <figcaption class="caption1">
              <h3><a href="#">Shocks</a></h3>
            </figcaption>
          </a>
        </figure>
      </div>
    </div>
  </div> -->
  

<script type="text/javascript">
<!--
  $('#slideshow<?php echo $module; ?>').owlCarousel({
  	items: 6,
  	autoPlay: 3000,
  	singleItem: true,
  	navigation: true,
  	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
  	pagination: true
  });
-->
</script>