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
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
    
<link rel="stylesheet" href="catalog/view/theme/swtheme/stylesheet/style.css" type="text/css">    
<!--<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->
    
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/swtheme/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<div class="page">
      <!-- Header -->
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-6"> 
            
            <!-- Header Currency -->
            <div class="dropdown block-currency-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> $ - Dollar </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> £ - Pound </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> € - Euro </a></li>
              </ul>
            </div>
            
            <!-- End Header Currency --> 
            <!-- Header Language -->
            <div class="dropdown block-language-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="images/english.png" alt="language"> English <span class="caret"></span> </a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="images/english.png" alt="language"> English </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="images/francais.png" alt="language"> French </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="images/german.png" alt="language"> German </a></li>
              </ul>
            </div>
            
            <!-- End Header Language -->
            
            <div class="welcome-msg hidden-xs"> Default welcome msg! </div>
          </div>
          <div class="col-xs-6"> 
            
            <!-- Header Top Links -->
            <div class="toplinks">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="login.html"><span>My Account</span></a></div>
                <div class="wishlist"><a title="My Wishlist" href="wishlist.html"><span>Wishlist</span></a></div>
                <div class="check"><a href="checkout.html" title="Checkout"><span>Checkout</span></a></div>
                <div class="login"><a href="login.html"><span>Log In</span></a></div>
              </div>
            </div>
            <!-- End Header Top Links --> 
          </div>
        </div>
      </div>
    </div>
    <div class="header container">
      <div class="row">
        <div class="col-lg-3 col-sm-6 col-md-3"> 
          <!-- Header Logo -->
          <?php if ($logo) { ?>
              <a class="logo" title="<?php echo $name; ?>" href="<?php echo $home; ?>"><img alt="<?php echo $name; ?>" src="<?php echo $logo; ?>"></a>
          <?php } else { ?>
              <a class="logo" title="<?php echo $name; ?>" href="<?php echo $home; ?>"><?php echo $home; ?></a>
          <?php } ?>
          <!-- End Header Logo --> 
        </div>
        <div class="col-lg-9 col-sm-6 col-md-9"> 
          <!-- Search-col -->
          <div class="search-box pull-right">
            <form action="cat" method="POST" id="search_mini_form" name="Categories">
              <input type="text" placeholder="Search entire store here..." value="Search" maxlength="70" name="search" id="search">
              <button type="button" class="btn btn-default  search-btn-bg"> <span class="glyphicon glyphicon-search"></span>&nbsp;</button>
            </form>
          </div>
          <!-- End Search-col --> 
        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 
  <!-- Navbar -->
</div>    
    
    
<!--<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
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
</nav>-->

    
    
<!-- Navbar -->
<nav>
<div class="container">
  <div class="nav-inner"> 
    <!-- mobile-menu -->
    <div class="hidden-desktop" id="mobile-menu">
      <ul class="navmenu">
        <li>
          <div class="menutop">
            <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
            <h2>Categories</h2>
          </div>-
          <ul style="display:none;" class="submenu">
            <li>
              <ul class="topnav">
                <li class="level0 nav-1 level-top first parent"> <a href="grid.html" class="level-top"> <span>Women</span> </a>
                  <ul class="level0">
                    <li class="level1 nav-1-1 first parent"> <a href="grid.html"> <span>Stylish Bag</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-1-1 first"> <a href="grid.html"> <span>Clutch Handbags</span> </a> </li>
                        <li class="level2 nav-1-1-2"> <a href="grid.html"> <span>Diaper Bags</span> </a> </li>
                        <li class="level2 nav-1-1-3"> <a href="grid.html"> <span>Bags</span> </a> </li>
                        <li class="level2 nav-1-1-4 last"> <a href="grid.html"> <span>Hobo Handbags</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-1-2 parent"> <a href="grid.html"> <span>Material Bag</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-2-5 first"> <a href="grid.html"> <span>Beaded Handbags</span> </a> </li>
                        <li class="level2 nav-1-2-6"> <a href="grid.html"> <span>Fabric Handbags</span> </a> </li>
                        <li class="level2 nav-1-2-7"> <a href="grid.html"> <span>Handbags</span> </a> </li>
                        <li class="level2 nav-1-2-8 last"> <a href="grid.html"> <span>Leather Handbags</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-1-3 parent"> <a href="grid.html"> <span>Shoes</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-3-9 first"> <a href="grid.html"> <span>Flat Shoes</span> </a> </li>
                        <li class="level2 nav-1-3-10"> <a href="grid.html"> <span>Flat Sandals</span> </a> </li>
                        <li class="level2 nav-1-3-11"> <a href="grid.html"> <span>Boots</span> </a> </li>
                        <li class="level2 nav-1-3-12 last"> <a href="grid.html"> <span>Heels</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-1-4 parent"> <a href="grid.html"> <span>Jwellery</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-4-13 first"> <a href="grid.html"> <span>Bracelets</span> </a> </li>
                        <li class="level2 nav-1-4-14"> <a href="grid.html"> <span>Necklaces &amp; Pendants</span> </a> </li>
                        <li class="level2 nav-1-4-15"> <a href="grid.html"> <span>Pendants</span> </a> </li>
                        <li class="level2 nav-1-4-16 last"> <a href="grid.html"> <span>Pins &amp; Brooches</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-1-5 parent"> <a href="grid.html"> <span>Dresses</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-5-17 first"> <a href="grid.html"> <span>Casual Dresses</span> </a> </li>
                        <li class="level2 nav-1-5-18"> <a href="grid.html"> <span>Evening</span> </a> </li>
                        <li class="level2 nav-1-5-19"> <a href="grid.html"> <span>Designer</span> </a> </li>
                        <li class="level2 nav-1-5-20 last"> <a href="grid.html"> <span>Party</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-1-6 last parent"> <a href="grid.html"> <span>Swimwear</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-1-6-21 first"> <a href="grid.html"> <span>Swimsuits</span> </a> </li>
                        <li class="level2 nav-1-6-22"> <a href="grid.html"> <span>Beach Clothing</span> </a> </li>
                        <li class="level2 nav-1-6-23"> <a href="grid.html"> <span>Clothing</span> </a> </li>
                        <li class="level2 nav-1-6-24 last"> <a href="grid.html"> <span>Bikinis</span> </a> </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="level0 nav-2 level-top parent"> <a href="grid.html" class="level-top"> <span>Men</span> </a>
                  <ul class="level0">
                    <li class="level1 nav-2-1 first parent"> <a href="grid.html"> <span>Shoes</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-1-1 first"> <a href="grid.html"> <span>Sport Shoes</span> </a> </li>
                        <li class="level2 nav-2-1-2"> <a href="grid.html"> <span>Casual Shoes</span> </a> </li>
                        <li class="level2 nav-2-1-3"> <a href="grid.html"> <span>Leather Shoes</span> </a> </li>
                        <li class="level2 nav-2-1-4 last"> <a href="grid.html"> <span>canvas shoes</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-2-2 parent"> <a href="grid.html"> <span>Dresses</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-2-5 first"> <a href="grid.html"> <span>Casual Dresses</span> </a> </li>
                        <li class="level2 nav-2-2-6"> <a href="grid.html"> <span>Evening</span> </a> </li>
                        <li class="level2 nav-2-2-7"> <a href="grid.html"> <span>Designer</span> </a> </li>
                        <li class="level2 nav-2-2-8 last"> <a href="grid.html"> <span>Party</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-2-3 parent"> <a href="grid.html"> <span>Jackets</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-3-9 first"> <a href="grid.html"> <span>Coats</span> </a> </li>
                        <li class="level2 nav-2-3-10"> <a href="grid.html"> <span>Formal Jackets</span> </a> </li>
                        <li class="level2 nav-2-3-11"> <a href="grid.html"> <span>Leather Jackets</span> </a> </li>
                        <li class="level2 nav-2-3-12 last"> <a href="grid.html"> <span>Blazers</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-2-4 parent"> <a href="grid.html"> <span>Watches</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-4-13 first"> <a href="grid.html"> <span>Fastrack</span> </a> </li>
                        <li class="level2 nav-2-4-14"> <a href="grid.html"> <span>Casio</span> </a> </li>
                        <li class="level2 nav-2-4-15"> <a href="grid.html"> <span>Titan</span> </a> </li>
                        <li class="level2 nav-2-4-16 last"> <a href="grid.html"> <span>Tommy-Hilfiger</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-2-5 parent"> <a href="grid.html"> <span>Sunglasses</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-5-17 first"> <a href="grid.html"> <span>Ray Ban</span> </a> </li>
                        <li class="level2 nav-2-5-18"> <a href="grid.html"> <span>Fastrack</span> </a> </li>
                        <li class="level2 nav-2-5-19"> <a href="grid.html"> <span>Police</span> </a> </li>
                        <li class="level2 nav-2-5-20 last"> <a href="grid.html"> <span>Oakley</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-2-6 last parent"> <a href="grid.html"> <span>Accessories</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-6-21 first"> <a href="grid.html"> <span>Backpacks</span> </a> </li>
                        <li class="level2 nav-2-6-22"> <a href="grid.html"> <span>Wallets</span> </a> </li>
                        <li class="level2 nav-2-6-23"> <a href="grid.html"> <span>Laptop Bags</span> </a> </li>
                        <li class="level2 nav-2-6-24 last"> <a href="grid.html"> <span>Belts</span> </a> </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="level0 nav-3 level-top parent"> <a href="grid.html" class="level-top"> <span>Electronics</span> </a>
                  <ul class="level0">
                    <li class="level1 nav-3-1 first parent"> <a href="grid.html"> <span>Mobiles</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-1-1 first"> <a href="grid.html"> <span>Samsung</span> </a> </li>
                        <li class="level2 nav-3-1-2"> <a href="grid.html"> <span>Nokia</span> </a> </li>
                        <li class="level2 nav-3-1-3"> <a href="grid.html"> <span>iPhone</span> </a> </li>
                        <li class="level2 nav-3-1-4 last"> <a href="grid.html"> <span>Sony</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-3-2 parent"> <a href="grid.html"> <span>Accessories</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-2-5 first"> <a href="grid.html"> <span>Mobile Memory Cards</span> </a> </li>
                        <li class="level2 nav-3-2-6"> <a href="grid.html"> <span>Cases &amp; Covers</span> </a> </li>
                        <li class="level2 nav-3-2-7"> <a href="grid.html"> <span>Mobile Headphones</span> </a> </li>
                        <li class="level2 nav-3-2-8 last"> <a href="grid.html"> <span>Bluetooth Headsets</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-3-3 parent"> <a href="grid.html"> <span>Cameras</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-3-9 first"> <a href="grid.html"> <span>Camcorders</span> </a> </li>
                        <li class="level2 nav-3-3-10"> <a href="grid.html"> <span>Point &amp; Shoot</span> </a> </li>
                        <li class="level2 nav-3-3-11"> <a href="grid.html"> <span>Digital SLR</span> </a> </li>
                        <li class="level2 nav-3-3-12 last"> <a href="grid.html"> <span>Camera Accessories</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-3-4 parent"> <a href="grid.html"> <span>Audio &amp; Video</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-4-13 first"> <a href="grid.html"> <span>MP3 Players</span> </a> </li>
                        <li class="level2 nav-3-4-14"> <a href="grid.html"> <span>iPods</span> </a> </li>
                        <li class="level2 nav-3-4-15"> <a href="grid.html"> <span>Speakers</span> </a> </li>
                        <li class="level2 nav-3-4-16 last"> <a href="grid.html"> <span>Video Players</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-3-5 parent"> <a href="grid.html"> <span>Computer</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-5-17 first"> <a href="grid.html"> <span>External Hard Disks</span> </a> </li>
                        <li class="level2 nav-3-5-18"> <a href="grid.html"> <span>Pendrives</span> </a> </li>
                        <li class="level2 nav-3-5-19"> <a href="grid.html"> <span>Headphones</span> </a> </li>
                        <li class="level2 nav-3-5-20 last"> <a href="grid.html"> <span>PC Components</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-3-6 last parent"> <a href="grid.html"> <span>Appliances </span> </a>
                      <ul class="level1">
                        <li class="level2 nav-3-6-21 first"> <a href="grid.html"> <span>Vacuum Cleaners</span> </a> </li>
                        <li class="level2 nav-3-6-22"> <a href="grid.html"> <span>Indoor Lighting</span> </a> </li>
                        <li class="level2 nav-3-6-23"> <a href="grid.html"> <span>Kitchen Tools</span> </a> </li>
                        <li class="level2 nav-3-6-24 last"> <a href="grid.html"> <span>Water Purifiers</span> </a> </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="level0 nav-4 level-top parent"> <a href="grid.html" class="level-top"> <span>Furniture</span> </a>
                  <ul class="level0">
                    <li class="level1 nav-4-1 first parent"> <a href="grid.html"> <span>Living Room</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-4-1-1 first"> <a href="grid.html"> <span>Racks &amp; Cabinets</span> </a> </li>
                        <li class="level2 nav-4-1-2"> <a href="grid.html"> <span>Sofas</span> </a> </li>
                        <li class="level2 nav-4-1-3"> <a href="grid.html"> <span>Chairs</span> </a> </li>
                        <li class="level2 nav-4-1-4 last"> <a href="grid.html"> <span>Tables</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-4-2 parent"> <a href="grid.html"> <span>Dining &amp; Bar</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-4-2-5 first"> <a href="grid.html"> <span>Dining Table Sets</span> </a> </li>
                        <li class="level2 nav-4-2-6"> <a href="grid.html"> <span>Serving Trolleys</span> </a> </li>
                        <li class="level2 nav-4-2-7"> <a href="grid.html"> <span>Bar Counters</span> </a> </li>
                        <li class="level2 nav-4-2-8 last"> <a href="grid.html"> <span>Dining Cabinets</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-4-3 parent"> <a href="grid.html"> <span>Bedroom</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-4-3-9 first"> <a href="grid.html"> <span>Beds</span> </a> </li>
                        <li class="level2 nav-4-3-10"> <a href="grid.html"> <span>Chest of Drawers</span> </a> </li>
                        <li class="level2 nav-4-3-11"> <a href="grid.html"> <span>Wardrobes &amp; Almirahs</span> </a> </li>
                        <li class="level2 nav-4-3-12 last"> <a href="grid.html"> <span>Nightstands</span> </a> </li>
                      </ul>
                    </li>
                    <li class="level1 nav-4-4 last parent"> <a href="grid.html"> <span>Kitchen</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-4-4-13 first"> <a href="grid.html"> <span>Kitchen Racks</span> </a> </li>
                        <li class="level2 nav-4-4-14"> <a href="grid.html"> <span>Kitchen Fittings</span> </a> </li>
                        <li class="level2 nav-4-4-15"> <a href="grid.html"> <span>Wall Units</span> </a> </li>
                        <li class="level2 nav-4-4-16 last"> <a href="grid.html"> <span>Benches &amp; Stools</span> </a> </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="level0 nav-5 level-top last"> <a href="grid.html" class="level-top"> <span>Fashion</span> </a> </li>
                <li class="level0 nav-6 level-top first parent"> <a class="level-top" href="#"> <span>Pages</span> </a>
                  <ul class="level0">
                    <li class="level1 first"><a href="grid.html"><span>Grid</span></a></li>
                    <li class="level1 nav-10-2"> <a href="list.html"> <span>List</span> </a> </li>
                    <li class="level1 nav-10-3"> <a href="product_detail.html"> <span>Product Detail</span> </a> </li>
                    <li class="level1 nav-10-4"> <a href="shopping_cart.html"> <span>Shopping Cart</span> </a> </li>
                    <li class="level1 first"><a href="checkout.html"><span>Checkout</span></a> </li>
                    <li class="level1 nav-10-4"> <a href="wishlist.html"> <span>Wishlist</span> </a> </li>
                    <li class="level1"> <a href="dashboard.html"> <span>Dashboard</span> </a> </li>
                    <li class="level1"> <a href="multiple_addresses.html"> <span>Multiple Addresses</span> </a> </li>
                    <li class="level1"> <a href="about_us.html"> <span>About us</span> </a> </li>
          <li class="level1"> <a href="login.html"> <span>Login</span> </a> </li>
          <li class="level1"> <a href="sitemap.html"> <span>Sitemap</span> </a> </li>
                    <li class="level1"> <a href="compare.html"> <span>Compare</span> </a> </li>
                    <li class="level1"> <a href="delivery.html"> <span>Delivery</span> </a> </li>
                    <li class="level1"> <a href="faq.html"> <span>FAQ</span> </a> </li>
                    <li class="level1"> <a href="quick_view.html"> <span>Quick View</span> </a> </li>
                    <li class="level1"> <a href="newsletter.html"> <span>Newsletter</span> </a> </li>
                    <li class="level1"> <a href="sitemap.html"> <span>Sitemap</span> </a> </li>
                    <li class="level1"><a href="blog.html"><span>Blog</span></a> </li>
                    <li class="level1"><a href="contact_us.html"><span>Contact us</span></a> </li>
                    <li class="level1"><a href="404error.html"><span>404 Error Page</span></a> </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
      <!--navmenu--> 
    </div>

    <!--End mobile-menu -->
    <?php if ($categories) { ?>  
    <ul id="nav" class="hidden-xs">
        <!--<li id="nav-home" class="level0 parent drop-menu active"><a href="index.html"><span>Home</span> </a>-->
        <?php foreach ($categories as $category) { ?> 
        <?php if ($category['children']) { ?>
        <li  class="level0 parent drop-menu"><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span> </a>
            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
            <ul class="level1" style="display: none;">
            <?php foreach ($children as $child) { ?>
              <li class="level1 parent"><a href="<?php echo $child['href']; ?>"><span><?php echo $child['name']; ?></span></a> </li>
            <?php } ?>
            </ul>
            <?php } ?>
        </li>
      <?php } else { ?>
        <li class="level1"><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a> </li>
      <?php } ?>
        
      <?php } ?>

    </ul>
    <?php } ?>  
    
    <?php echo $cart; ?>
      
  </div>
</div>
</nav>
<!-- end nav -->  
    

