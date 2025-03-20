{include file="cart/yunyoo/topbar-categories"}
<link rel="stylesheet" href="/themes/cart/yunyoo/assets/css/products.yunyoo.css?v=1.0.2.{$Ver}">
<link rel="stylesheet" href="/themes/cart/yunyoo/assets/fonts/iconfont.css?v={$Ver}">
<div class="card">
  <div class="card-body p-4">
    <div class="row">
      {foreach $Cart.products as $list}
      <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 col-xxl-3 d-flex">
        <div class="card cartitem shadow w-100">
          <div class="card-body row align-content-start">
            <h4>{$list.name}</h4>
            <div class="col-sm-12 d-flex flex-wrap flex-column">
              <div class="card-text mb-4 mt-3">{$list.description}</div>

              {if $list.stock_control==1 && $list.qty<1} 
                
                <img src="/themes/cart/yunyoo/assets/img/saleout.svg" style="position: absolute;top: -40px;right: 20px;width: 50px;" alt="">
                {else /}
                <!-- <a href="/cart?action=configureproduct&pid={$list.id}"
                  class=" btn btn-sm btn-primary waves-effect waves-light  mt-3">立即购买</a> -->
                {/if}
            </div>
          </div>
            <div class="align-items-center d-flex justify-content-between">
             <div class="ml-4">
              {if $list.stock_control==1}
              <p class="card-text">{$Lang.stock}： {$list.qty}</p>
              {/if}
             </div>
            <div>
              {if $list.sale_price>0}
              <div class="text-right mr-3 ml-3 pr-1" style="color:var(--bs-btn-hover-bg);">{$Cart.currency.prefix} {$list.sale_price} {$Cart.currency.suffix}</div>
              {if $list.ontrial==1}
              <div class="text-right mr-3 ml-3 pr-1" style="color: #e64a19;">
									<small> {$Cart.currency.prefix}
										{$list.ontrial_setup_fee+$list.ontrial_price} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}
									</small>
							  </div>
              {/if}                  
              <div class="text-right color-999 mr-3 ml-3 pr-1"><small>({$Lang.original_price}：{$Cart.currency.prefix} {$list.product_price} / {$list.billingcycle_zh})</small></div>
              {else}
              <div class="text-right mr-3 ml-3 pr-1" style="color:var(--bs-btn-hover-bg);">{$Cart.currency.prefix} <a class="cart-num DINCondensed-Bold">{$list.product_price} </a>{$Cart.currency.suffix} / {$list.billingcycle_zh}</div>
              {if $list.ontrial==1}
              <div class="text-right mr-3 ml-3 pr-1" style="color: #e64a19;">
									<small> {$Cart.currency.prefix}
										{$list.ontrial_setup_fee+$list.ontrial_price} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}
									</small>
							  </div>
              {/if}
              
              {/if}
             </div>
             </div>
          <div class="mt-4 card-footer text-center p-0" style="box-shadow: 0px 4px 20px 2px rgba(6, 75, 179, 0.08);">
            {if $list.stock_control==1 && $list.qty<1} 
            <a href="javascript:void(0)" style="cursor: not-allowed">{$Lang.buy_now}</a>
            {else}
            <a href="/cart?action=configureproduct&pid={$list.id}{if $Get.site}&site={$Get.site}{/if}">{$Lang.buy_now}</a>
            {/if}
          </div>
        </div>
      </div>
      {/foreach}

      <div class="table-footer mt-4 d-flex justify-content-center">
        <ul class="pagination pagination-sm">
          {$Pages}
        </ul>
      </div>

    </div>
  </div>
</div>

<script>
  $(function () {
    $('.cartitem').on('mouseover', function () {
      $(this).addClass('active')
    })
    $('.cartitem').on('mouseleave', function () {
      $(this).removeClass('active')
    })
  })
</script>