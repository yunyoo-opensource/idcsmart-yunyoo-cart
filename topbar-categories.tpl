{php}
function getCharacterAtIndex($str, $index) {
    if (strpos($str, ',') !== false) {
        $arr = explode(',', $str);
        if ($index > 0 && $index <= count($arr)) {
            return trim($arr[$index - 1]);
        } else {
            return '';
        }
    } else {
        if ($index == 1) {
            return trim($str);
        } else {
            return '';
        }
    }
}
{/php}
  <style>
  .unfold:hover {
  color: var(--btn-active-border-color) !important;
  }
  .firstgroup_box a, .secondgroup_box a, .pro_box a, .firstgroup_box .firstgroup_item, .secondgroup_box
  .secondgroup_item, .pro_box .pro_item {
  color: var(--primary);
  }
  .firstgroup_box .firstgroup_item, .secondgroup_box .secondgroup_item, .pro_box .pro_item {
  height: auto !important;
  }
  .yy-stellar {
  right: 13px !important;
  top: -6px !important;
  }
  {$LanguageCheck.display_flag == "US" ? {literal}"
  .firstgroup_box .firstgroup_box_prov, .secondgroup_box .secondgroup_box_area {
  min-width: 100px !important;
  }
  "{/literal} : ""}
  </style>
  <link rel="stylesheet" href="/themes/cart/yunyoo/assets/DingTalk JinBuTi/result.css">
  <link rel="stylesheet" href="/themes/cart/yunyoo/assets/css/topbar.css?v=4{$Ver}">
  <link rel="stylesheet" href="/themes/cart/yunyoo/assets/css/yunyoo.css?v=1.0.4.{$Ver}">
  <link rel="stylesheet" href="/themes/cart/yunyoo/assets/css/yunyoo-g.css?v=1.0.3.{$Ver}">
  <div class="firstgroup_box mb-2 flex-column p-2">
    <div class="firstgroup_box_prov fs-22 ml-3 mt-2 pl-1 w-100 yy-dtjbt-text"><span class="yy-bl"></span>
      {$LanguageCheck.display_flag == "CN" ? "产品类型" : ($LanguageCheck.display_flag == "HK" ? "產品類型" :
      ($LanguageCheck.display_flag == "US" ? "product type" : $Lang.select_type))}
    </div>
    <div class="firstgroup_box_group row">
      {foreach $Cart.product_groups as $index=>$first}
      {if $first.id==$Think.get.fid || (!$Think.get.fid && $index==0)}
      <div class="yy-bth pl-1 pr-1 pb-1 p-2 text-primary">
        <div class="firstgroup_item pointer active w-100 justify-content-start p-2"
          onclick="window.location.href='/cart?fid={$first.id}{if $Get.site}&site={$Get.site}{/if}'">
          <i class="{$first.name|getCharacterAtIndex=3}"></i>
          <div class="d-flex flex-column align-items-start">
            <a class="text-white yy-bth-text fs-24 m-0 yy-bth-text-a justify-content-around"">{$first.name|getCharacterAtIndex=1}
	</a>
	<a class=" text-white yy-bth-text yy-bth-text-b justify-content-around">{$first.name|getCharacterAtIndex=2}
            </a>
          </div>
          <i id="info-{$first.id}" class="fa-solid fa-circle-info ml-1 d-none"></i>
        </div>
      </div>
      {assign name="cart_first_id" value="$first.id" /}
      {assign name="cart_second" value="$first.second" /}
      {else/}
      <div class="yy-bth pl-1 pr-1 pb-1 p-2">
        <div class="firstgroup_item pointer w-100 justify-content-start p-2"
          onclick="window.location.href='/cart?fid={$first.id}{if $Get.site}&site={$Get.site}{/if}'">
          <i class="{$first.name|getCharacterAtIndex=3}"></i>
          <div class="d-flex flex-column align-items-start">
            <a class="yy-bth-text fs-24 m-0 yy-bth-text-a justify-content-around">{$first.name|getCharacterAtIndex=1}
            </a>
            <a class="yy-bth-text yy-bth-text-b justify-content-around">{$first.name|getCharacterAtIndex=2}
            </a>
          </div>
          <i id="info-{$first.id}" class="fa-solid fa-circle-info ml-1 d-none"></i>
        </div>
      </div>
      {/if}
      {/foreach}
    </div>
  </div>

  <div class="secondgroup_box mb-2 flex-column p-2">
    <div class="secondgroup_box_area fs-22 ml-3 mt-2 pl-1 w-100 yy-dtjbt-text"><span class="yy-bl"></span>
      {$LanguageCheck.display_flag == "CN" ? "可用区域" : ($LanguageCheck.display_flag == "HK" ? "可用區域" :
      ($LanguageCheck.display_flag == "US" ? "availability zones" : $Lang.select_group))}
    </div>
    <div class="firstgroup_box_group row m-0 w-100">
      {foreach $cart_second as $index=>$secondItem}
      {if $secondItem.id == $Think.get.gid || (!$Think.get.gid && $index==0)}
      <div class="yy-bth pl-1 pr-1 pb-1 p-2">
        <div class="secondgroup_item pointer active  w-100 justify-content-start p-2"
          onclick="window.location.href='/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}'">
          <img class="{$secondItem.name|getCharacterAtIndex=3}"
            src="{$CustomDepot.yunyoo_twemojiurl}{$secondItem.name|getCharacterAtIndex=4}.svg">
          <div class="d-flex flex-column align-items-start">
            <a class="text-white yy-bth-text fs-24 m-0 yy-bth-text-a justify-content-around">{$secondItem.name|getCharacterAtIndex=1}
              <g-b id="{$secondItem.id}"></g-b>
            </a>
            <a class="text-white yy-bth-text yy-bth-text-b justify-content-around">{$secondItem.name|getCharacterAtIndex=2}
            </a>
          </div>
        </div>
        <i id="star-{$secondItem.id}"></i>
      </div>
      {assign name="cart_gid" value="$secondItem.id" /}
      {else/}
      <div class="yy-bth pl-1 pr-1 pb-1 p-2">
        <div class="secondgroup_item pointer w-100 justify-content-start p-2"
          onclick="window.location.href='/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}'">
          <img class="{$secondItem.name|getCharacterAtIndex=3}"
            src="{$CustomDepot.yunyoo_twemojiurl}{$secondItem.name|getCharacterAtIndex=4}.svg">
          <div class="d-flex flex-column align-items-start">
            <a class="yy-bth-text fs-24 m-0 yy-bth-text-a justify-content-around">{$secondItem.name|getCharacterAtIndex=1}
              <g-b-s id="{$secondItem.id}"></g-b-s>
            </a>
            <a class="yy-bth-text yy-bth-text-b justify-content-around">{$secondItem.name|getCharacterAtIndex=2}
            </a>
          </div>
        </div>
        <i id="star-{$secondItem.id}"></i>
      </div>
      {/if}
      {/foreach}
    </div>
  </div>
  <div class="secondgroup_box mb-2">

    <div class="secondgroup_box_area mr-2 fs-16 yy-dtjbt-text">
      {if condition="($Cart.product_groups_checked.headline neq '') || ($Cart.product_groups_checked.tagline neq '')"}
      <span class="yy-bl"></span><span
        class="fs-18">{$Cart.product_groups_checked.headline}{$Cart.product_groups_checked.tagline}</span>
      {/if}

      <div class="panel-group" id="accordion">
        <div id="collapseTwo" class="panel-collapse collapse">
          <div class="panel-body">
            <div id="description"></div>
          </div>
        </div>
      </div>
    </div>
  </div>