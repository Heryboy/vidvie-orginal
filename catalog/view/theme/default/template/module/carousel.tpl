

<div class="container padding-top-md padding-bottom-md">
  <div class="_row">

    <div class="carousel-title">

      Manufacturer By

    </div>

  </div>

  <div class="clearfix"></div>
  <div id="carousel<?php echo $module; ?>" class="owl-carousel">

    <?php foreach ($banners as $banner) { ?>

    <div class="item text-center">

      <?php if ($banner['link']) { ?>

      <a href="<?php echo $banner['link']; ?>"><img style="width:100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="_img-responsive" /></a>

      <?php } else { ?>

      <img style="width:100%" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="_img-responsive" />

      <?php } ?>

    </div>

    <?php } ?>
  </div>
</div>

<script type="text/javascript"><!--

  $('#carousel<?php echo $module; ?>').owlCarousel({

  	items: 5,

  	autoPlay: 3000,

  	navigation: true,

  	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],

  	pagination: true

  });

--></script>