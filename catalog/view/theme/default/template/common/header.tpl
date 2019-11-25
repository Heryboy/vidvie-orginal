<?php 

  header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); // Date in the past

  header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // Always modified

  header("Cache-Control: private, no-store, no-cache, must-revalidate"); // HTTP/1.1 

  header("Cache-Control: post-check=0, pre-check=0", false);

  header("Pragma: no-cache"); // HTTP/1.0

?>

<!DOCTYPE html>

<!--[if IE]><![endif]-->

<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->

<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->

<!--[if (gt IE 9)|!(IE)]><!-->

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">

<!--<![endif]-->

<head>



<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title><?php echo $title; ?></title>

<meta property="og:title" content="<?php echo $title; ?>" />

<meta property="og:url" content="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"?>" />

<meta property="og:type" content="<?php echo $base; ?>" />

<?php if ($product_image) { ?>

<meta property="og:image" content="<?php echo $product_image;?>" />

<?php } ?>

<?php if ($product_description) { ?>

<meta property="og:description" content="<?php echo $product_description; ?>" />

<?php } ?>





<base href="<?php echo $base; ?>" />

<?php if ($description) { ?>

<meta name="description" content="<?php echo $description; ?>" />

<?php } ?>

<?php if ($keywords) { ?>

<meta name="keywords" content= "<?php echo $keywords; ?>" />

<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>



<!-- bundles-resonsive-gallary -->

<!-- <script type="text/javascript" src="catalog/view/theme/default/stylesheet/bundles/scripts.js"></script> -->





<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/addingStyle.css">

<!-- bundles-resonsive-gallary -->

<!-- <link href="catalog/view/theme/default/stylesheet/bundles/style.css" rel="stylesheet"/> -->

<!--fade content -->

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/animate/css/

animate.css">

<!-- end fade content -->

<link rel="stylesheet" type="text/css" href="">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/framework.css">

<!-- menu ################################ -->

<!-- responsive slider#####-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/sliders/sliderResponsive.css">
<script type="text/javascript" src="catalog/view/theme/default/stylesheet/sliders/sliderResponsive.js"></script>

<?php foreach ($styles as $style) { ?>

<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />

<?php } ?>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>





<?php foreach ($links as $link) { ?>

<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />

<?php } ?>

<?php foreach ($scripts as $script) { ?>

<script src="<?php echo $script; ?>" type="text/javascript"></script>

<?php } ?>

<?php foreach ($analytics as $analytic) { ?>

<?php echo $analytic; ?>

<?php } ?>





<!-- fade content js -->

<!-- <script type="text/javascript" src="catalog/view/theme/default/animate/js/custom-scripts.js"></script>

<script type="text/javascript" src="catalog/view/theme/default/animate/js/jquery.visible.js"></script>

<script type="text/javascript" src="catalog/view/theme/default/animate/js/mousescroll.js"></script>

 -->

</head>

<body class="<?php echo $class; ?>">



<!-- facebook-social-media -->

<div id="fb-root"></div>

<script>

  (function(d, s, id) {

    var js, fjs = d.getElementsByTagName(s)[0];

    if (d.getElementById(id)) return;

    js = d.createElement(s); js.id = id;

    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=343361892524407";

    fjs.parentNode.insertBefore(js, fjs);

  }(document, 'script', 'facebook-jssdk'));

</script>

  



<nav id="top" style="_display:none;">

  <div class="container">
    <div class="row">
      <?php echo $currency; ?>

      <?php echo $language; ?>

      <div id="top-links" class="nav pull-right">

        <ul class="list-inline">

          <!-- <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li> -->

          <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>

            <ul class="dropdown-menu dropdown-menu-right">

              <?php if ($logged) { ?>

              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>

              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>

              <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>

              <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>

              <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>

              <?php } else { ?>

              <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>

              <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>

              <?php } ?>

            </ul>

          </li>

          <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>

          <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>

          <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>

        </ul>

      </div>
    </div>
  </div>

</nav>

<header class="header">

  <div class="container">

    <div class="row">

      <div class="col-sm-2 col-xs-5 animate fadeInDown" style="z-index: 99;">

        <div id="logo">

          <?php if ($logo) { ?>

          <a href="<?php echo $home; ?>"><img width="120px" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive"/></a>

          <?php } else { ?>

          <h1 ><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>

          <?php } ?>

        </div>

      </div>



      <!-- <div class="hidden-lg hidden-sm hidden-md col-sm-3 col-xs-7 animate fadeInDown">

        <div class="header-socail-media">

          <span><img src="image/social/google.png" width="40px"></span>

          <span><img src="image/social/yt.png" width="40px"></span>

          <span><img src="image/social/fb.png" width="40px"></span>

        </div>

      </div> -->



      <div class="-hidden-xs col-sm-6 animate fadeInDown"><?php echo $search; ?></div>

      <div class="col-sm-3 col-xs-12"><?php echo $cart; ?></div>

      <div class="_hidden-xs col-sm-4 animate fadeInDown" style="display: none;">
        <ul class="account pull-right">
          <!-- <li class="pLiveHeadlink"><a href="/live/"><img src="/live/_assets/img/plive-icon.png"></a></li> -->
          <li class="hidden-xs"><a href="/accounts/MyAccount.aspx">Log in / Sign Up</a></li>
          <li class="basket-price">
            <a href="/V3_1/V3_1_Basket.aspx">$10.00</a>
            <img width="30px" src="image/icons/shopping-cart.png">&nbsp;
          </li>
          <!-- <li class="basket"><img width="30px" src="image/icons/shopping-cart.png"></li> -->
        </ul>
        <!-- <div class="header-socail-media">
          <span><img src="image/social/google.png" width="40px"></span>
          <span><img src="image/social/yt.png" width="40px"></span>
          <span><img src="image/social/fb.png" width="40px"></span>
        </div> -->
      </div>

      <div class="hidden-lg hidden-sm hidden-md col-sm-12 animate fadeInDown"><?php //echo $search; ?></div>

    </div>

  </div>

</header>


<?php if ($categories) { ?>

<div class="">

  <nav id="menu" class="navbar">

    <div class="container">

      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>

        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>

      </div>

      <div class="">

        <div class="collapse navbar-collapse navbar-ex1-collapse">

          <ul class="nav navbar-nav">

            <?php foreach ($categories as $category) { ?>

            <?php if ($category['children']) { ?>

            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>​ &nbsp;<i class="pull-right fa fa-wa fa-chevron-down"></i></a>

              <div class="dropdown-menu">

                <div class="dropdown-inner">

                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>

                  <ul class="list-unstyled">

                    <?php foreach ($children as $child) { ?>

                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>

                    <?php } ?>

                  </ul>

                  <?php } ?>

                </div>

                <!-- <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div> -->

            </li>

            <?php } else { ?>

            <li <?php if($category['name']=="SALES"){echo"class=\"active\"";}?>><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>

            <?php } ?>

            <?php } ?>

          </ul>

        </div>

      </div> 

    </div>

  </nav>

</div>

<?php } ?>



<style type="text/css">

  .nav > li:active{background-color:#f00;}

</style>



<!-- <?php if ($categories) { ?>

<div class="container">

  <nav id="menu" class="navbar">

    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>

      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>

    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">

      <ul class="nav navbar-nav">

        <?php foreach ($categories as $category) { ?>

        <?php if ($category['children']) { ?>

        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>

          <div class="dropdown-menu">

            <div class="dropdown-inner">

              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>

              <ul class="list-unstyled">

                <?php foreach ($children as $child) { ?>

                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>

                <?php } ?>

              </ul>

              <?php } ?>

            </div>

            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>

        </li>

        <?php } else { ?>

        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>

        <?php } ?>

        <?php } ?>

      </ul>

    </div>

  </nav>

</div>

<?php } ?> -->

