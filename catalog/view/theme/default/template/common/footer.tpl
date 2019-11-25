<footer class="footer" style="margin-top:50px;">
  <!-- <hr class="animate fadeInDown"> -->
  <div>
    <div class="container">
      <div class="hidden-xs hidden-lg hidden-sm hidden-md row animate fadeInDown">
        <div class="col-sm-5">
            <p>People around the world love sport leave your email we will send you lastest News.</p>
        </div>

        <div class="col-sm-6">
          <div class="-subscribe">
            <div id="search" class="input-group">
              <input style="font-size:16px;" name="email" placeholder="Leave your E-mail" class="form-control input-lg subscribe" type="text"> 
              <div class="input-group-btn">
                <button type="button" class="subscribe btn btn-search" style="color:#fff;">SUBSCRIBE</button>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      <div class="row">
        <?php if ($informations) { ?>
        <div class="col-sm-3 animate fadeInDown">
          <h5><?php echo $text_information; ?></h5>
          <ul class="list-unstyled">
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
        <!-- <div class="hidden-xs hidden-lg hidden-sm hidden-md col-sm-3 animate fadeInDown">
          <h5><?php echo $text_service; ?></h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          </ul>
        </div> -->
        <div class="col-sm-3 animate fadeInDown">
          <h5><?php echo $text_extra; ?></h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
            <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
            <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          </ul>
        </div>
        <!-- <div class="col-sm-4 animate fadeInDown">
          <h5>GET IN TOUCH</h5>
          <span><img src="image/icons/fb.png" width="30px"></span>&nbsp;
          <span><img src="image/icons/ig.png" width="30px"></span>&nbsp;
          <span><img src="image/icons/yt.jpg" width="50px"></span>
        </div>  -->

        <!-- <div class="col-sm-4 animate fadeInDown">
          <h5>PAYMENT METHODS</h5>
          <span><img src="image/icons/payment_methods.png" width="200px" /></span> -->
          <!--<div class="col-sm-3 animate fadeInDown">
            <h5><?php echo $text_account; ?></h5>-->
                 <!--<ul class="list-uyled">-->
              <!-- <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li> -->
              <!-- <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li> -->
              <!-- <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li> -->
              <!--<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
          </div>-->
        <!-- </div>  -->
      <!--<div class="row animate fadeInDown">
        <div class="col-lg-12">
        <center>
          <div class="header-socail-media">
            <span><img src="image/social/google.png" width="50"></span>
            <span><img src="image/social/yt.png" width="50"></span>
             <span><img src="image/social/fb.png" width="50"></span>
          </div>
        </center>
        </div>
      </div>-->

      <!--    <div class="row">
      <div class="footer_menu">
      <div class="col-sm-3">
      <h5>NAVIGATION</h5>
      <ul class="list-unstyled">
      <li><a href="#">HOME</a></li>
      <li><a href="#">CATALOG</a></li>
      <li><a href="#">BLOG</a></li>
      <li><a href="#">CONTACTS</a></li>
      </ul>
      </div>
      <div class="col-sm-3">
      <h5>CUSTOMER SERVICE</h5>
      <ul class="list-unstyled">
      <li><a href="#">HOME</a></li>
      <li><a href="#">CATALOG</a></li>
      <li><a href="#">BLOG</a></li>
      <li><a href="#">CONTACTS</a></li>
      </ul>
      </div>
      <div class="col-sm-3">
      <h5>EXTRAS</h5>
      <ul class="list-unstyled">
      <li><a href="#">HOME</a></li>
      <li><a href="#">CATALOG</a></li>
      <li><a href="#">BLOG</a></li>
      <li><a href="#">CONTACTS</a></li>
      </ul>
      </div>
      <div class="col-sm-3">
      <h5>INFORMATION</h5>
      <ul class="list-unstyled">
      <li><a href="#">Term &SSS Condition Trust Us</a></li>
      </ul>
      </div>
      </div> -->

      <div class="col-sm-3">
      <h5><?php echo $text_service; ?></h5>
      <ul class="list-unstyled">
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
      </div>
      <div class="col-sm-3">
      <h5><?php echo $text_extra; ?></h5>
      <ul class="list-unstyled">
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
      </div>
      <div class="col-sm-3">
      <h5><?php echo $text_account; ?></h5>
      <ul class="list-unstyled">
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
      </div>
      </div>
  </div>
  </div>

  <hr>
  <center><p style="font-size: 13px;"> COPYRIGHT &copy; 2016 - <?php echo date("Y");?>. ALL RIGHT RESERVED.<?php //echo $powered; ?></p></center>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>