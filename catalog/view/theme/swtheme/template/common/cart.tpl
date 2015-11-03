<div class="top-cart-contain">
  <div class="mini-cart">
    <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#">
      <div class="cart-box"><span class="title"><?php echo $text_items; ?></span><span id="cart-total"><?php echo $text_item_total;?></span></div>
      </a></div>
    <div>
      <div style="display: none;" class="top-cart-content arrow_box">
        <div class="block-subtitle">Recently added item(s)</div>
        <ul id="cart-sidebar" class="mini-products-list">
          <?php if ($products || $vouchers) { ?>
              <?php foreach ($products as $product) { ?>
          <li class="item even"> <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>" width="60"></a>
            <div class="detail-item">
              <div class="product-details"> <a href="#" title="Remove This Item" onClick="cart.remove('<?php echo $product['cart_id']; ?>');" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="#">&nbsp;</a>
                <p class="product-name"> <a href="product_detail.html" title="Sample Product"><?php echo $product['name']; ?></a> </p>
              </div>
              <div class="product-details-bottom"> <?php echo $product['quantity']; ?> x <span class="price"><?php echo $product['total']; ?></span> </div>
            </div>
          </li>
            <?php } ?>
          <?php } else { ?>
          <li>
              <p class="text-center"><?php echo $text_empty; ?></p>
          </li>
          <?php } ?>
<!--          <li class="item last odd"> <a class="product-image" href="#" title="  Sample Product "><img alt="  Sample Product " src="products-images/product1.jpg" width="60"></a>
            <div class="detail-item">
              <div class="product-details"> <a href="#" title="Remove This Item" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="#">&nbsp;</a>
                <p class="product-name"> <a href="product_detail.html" title="Sample Product">Sample Product</a> </p>
              </div>
              <div class="product-details-bottom"> 2 x<span class="price">$320.00</span></div>
            </div>
          </li>-->
        </ul>
        <div class="top-subtotal">Subtotal: <span class="price">$420.00</span></div>
        <div class="actions">
          <button class="btn-checkout" type="button"><span>Checkout</span></button>
          <button class="view-cart" type="button"><span>Cart</span></button>
        </div>
      </div>
    </div>
  </div>
  <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
    <input value="" type="hidden">
    <input id="enable_module" value="1" type="hidden">
    <input class="effect_to_cart" value="1" type="hidden">
    <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
  </div>
</div>


<div id="cart" class="btn-group btn-block">
  <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><i class="fa fa-shopping-cart"></i> <span id="cart-total"><?php echo $text_items; ?></span></button>
  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-striped">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-right">x <?php echo $product['quantity']; ?></td>
          <td class="text-right"><?php echo $product['total']; ?></td>
          <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        <table class="table table-bordered">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
            <td class="text-right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
</div>
