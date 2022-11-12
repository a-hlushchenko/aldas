<?php /* Шаблон для стульем и столов*/ ?>
<?php echo $header; ?>
<?php 
$dop2 = false;
$dop3 = false;

//global $config; 
//global $currency; 
//global $tax; 
//echo $config->get('config_tax');
//echo $currency->format($tax->calculate($price_int*2, $tax_class_id, $config->get('config_tax')));
 ?>

<script>
(function($) {
  $.fn.paintFirstWord= function(color) {
    var str = this.text();
    var splited = str.split(' ');
    var replaced = str.split(splited[0]).join('<span>' + splited[0] + '</span>');
    this.html(replaced);
  };
})(jQuery);
$(function() {
  $('h1').paintFirstWord('#2a8eb8');
});
  $(function() {
    $( "#tabs ul a" ).tabs();
    $( "#tabs2 ul a" ).tabs();
  });

</script>
<style>
#tabs {
  background: #fff;
  min-height:465px;
}
#owl-demo .item img {
  height: auto!important;
}
</style>

<div class="content">
  <div class="container">
    <div class="row">

        <?php echo $content_top; ?>
        
        <div class="wrapper">

          <ul class="catalog-list">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
             <li>
            <?php if($breadcrumb['href']){ ?>
              <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } else { ?>
              <?php echo $breadcrumb['text']; ?>
            <?php } ?>
            </li>
            <?php } ?>
        </ul>
                <div class="navig">
              <?php if($pr_prev){ ?><a class="prev" href="<?php echo $pr_prev; ?>" alt="<?php echo $pr_prev_name; ?>" title="<?php echo $pr_prev_name; ?>"><< Предыдущая модель</a><?php } ?>
                  <?php if($pr_next){ ?><a class="next" href="<?php echo $pr_next; ?>" alt="<?php echo $pr_next_name; ?>" title="<?php echo $pr_next_name; ?>">Следующая модель >></a><?php } ?>
              </div>


          <div class="tovar-top">
          <div class="tovar-grey">
            <div class="container">
              <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                <div class="tovar-title"><h1><?php echo $heading_title; ?></h1></div>

                  <div id="owl-demo" class="owl-carousel owl-theme thumbnails">   

                    <?php if ($thumb || $images) { ?>
                    
                      <?php if ($thumb) { ?>
                      <div class="item"> 
                        <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                      </div>
                      <?php } ?>
                      <?php if ($images) { ?>
                      <?php foreach ($images as $image) { ?>
                      <div class="item"><a class="thumbnail" rel="nofollow" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
                      <?php } ?>
                      <?php } ?>
                    
                    <?php } ?>      
                  </div>
                        
                  <div class="wrapper">
                    <div id="owl-demo1" class="owl-carousel owl-theme thumbnails">      
                      <?php if ($images) { ?>
                      <?php foreach ($images as $image) { ?>
                      <div class="item"><a class="thumbnail" rel="nofollow"href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
                      <?php } ?>
                      <?php } ?>    
                  </div>
                  </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">

                  <div class="tovar-white">
                    
                          <div class="wrapper">
                          <div class="nhar">Характеристики</div>
                            <div class="tabs-col1 col-lg-11 col-md-11 col-sm-7 col-xs-11">
                              <div class="tabs-text">
                                <!-- У представленной модели могут быть изменены цвета и материалы по установленным образцам -->
                              </div>
                              <!-- <ul class="tabs-list">
                                <?php if($fasad){ ?>
                                <li>Тип фасада: <?php echo $fasad; ?></li>
                                <?php } ?>
                                <li>Натуральный массив дуба и бука</li>
                                <li>Оригинальная продукция (срок службы более 10 лет)</li>
                             </ul> -->
                              
                            </div>
                            
                            <div class="pricetovar col-lg-12 col-md-12 col-sm-4">
                                Обычная цена: <span><?php echo $price_plus_30proc; ?></span><br/>
                                Стоимость по акции: <span><?php echo $price_minus_10proc; ?></span><br/>
                                <span class="helps">* Стоимость по акции при условии покупки  кухонного гарнитура</span>
                              </div>
                          </div>

                        

                  </div>
                  
                  <div class="wrapper pre_forma">
                    <div class="tovar-button1 stul_onclick" style="float:right;"><a style="font-weight:bold;" rel="nofollow" onclick="return false;">Заказать</a></div>
                  </div>
                  
                  <div id="tabs" class="tabs tovar-white">
                    
                    <ul>
                      <li><a href="#tabs-0">Описание</a></li>
                      <li><a href="#tabs-1">Параметры</a></li>
                      <li><a href="#tabs-4">Доставка</a></li>
                    </ul>
                    <div id="tabs-0">
                      <div class="wrapper tovar-text4">
                      <?php echo $description; ?>
                      </div>
                    </div>
                    <div id="tabs-1">
                      <div class="wrapper tovar-text4">
                          <div class="attribute0">
                            <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
                          </div>
                          <div class="attribute">
                          <?php if ($mas_cat_attribute) { ?>
                            <?php foreach ($mas_cat_attribute as $key => $attributes) { ?>

                            <div itemprop="itemListElement" itemscope itemtype="https://schema.org/NameValueStructure">
                            <span itemprop="name"><?php echo $key; ?>:</span> 
                            <?php foreach ($attributes as $key => $attribute) { ?>
                              <a href="<?=$attribute['href'];?>"><nobr style="font-weight:normal;" itemprop="value"><?=$attribute['name'];?></nobr></a>
                            <?php } ?>
                            <br/>
                            </div>
                            <?php } ?>
                          <?php } ?>
                          <?php if ($attribute_groups) { ?>
                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                              <span><?php echo $attribute['name']; ?>:</span> <?php echo $attribute['text']; ?><br/>
                              <?php } ?>
                            <?php } ?>
                          <?php } ?>
                          </div>
                      </div>
                    </div>
                    <div id="tabs-4">
                      <div class="wrapper tovar-text4">
                        <p style="text-align: justify;">
                          <table><tr><td><img src="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic2.png">
                            </td><td><b>Доставка по Москве</b> и подъем до квартиры бесплатно</td>
                          </tr>
                          </table>
                        </p>
                        <p style="text-align: justify;">
                          <table><tr><td><img src="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic4.png">
                          </td><td>Сборка - 
                          <span style="font-weight: bold;">стоимость услуги 1500 рублей</span>
                          </td>
                          </tr>
                          </table>
                        </p>
                        Все наши специалисты по доставке и сборке мебели – мастера высокой квалификации. Они прекрасно знают свою работу и сделают ее максимально быстро и качественно, не оставив после себя грязи и мусора.
                      </div>
                    </div>
                  </div>


                </div>
              </div>

              
            </div>
          </div>
          </div>


           <?php if($products) { ?>
            <div class="container">
              <div class="tovar-title2">Схожие товары</div>

              <div class="grey-pic"><img src="images/grey-pic.png" alt=""></div>
              <div class="tovar-top1">
                <div class="tovar-box">
                  <div class="wrapper">

                    <?php foreach ($products as $product) { ?>
                      <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="catalog-box1">
                          <div class="padding">
                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                            <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                            <div class="catalog-box1-text"><?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?></div>
                            <?php if ($product['price']) { ?>
                              <div class="catalog-box1-price">
                                <?php if (!$product['special']) { ?>
                                Цена за 1м<sup>2</sup>: <span><?php echo $product['price']; ?></span>
                                <?php } else { ?>
                                Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                              </div>
                              <?php } ?>
                          </div>
                        </div>
                      </div>
                    <?php } ?>
                    
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>






        <div class="row"><?php echo $column_left; ?>
          <div id="content" class="<?php //echo $class; ?>">
            
            <?php echo $content_bottom; ?>
          </div>
          <?php echo $column_right; ?>
        </div>
      </div>
  </div>
</div>


<script type="text/javascript"><!--



$(document).ready(function() {
  $("#owl-demo").owlCarousel({    
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [992,1],
    itemsTablet : [768, 1],
    itemsMobile : [320, 1],
      pagination : false,
      navigation : true,
      paginationNumbers : false
  }); 

  $("#owl-demo1").owlCarousel({    
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [992,3],
    itemsTablet : [768, 3],
    itemsMobile : [320, 3],
      pagination : false,
      navigation : true,
      paginationNumbers : false
  }); 
});



$('.ff5').on('click',function(){
  $('#modal-stul-tkan').modal('show');  
});
$('.ff6').on('click',function(){
  $('#modal-stul_color').modal('show');  
});



//-->
</script>

<div id="modal" > </div>

  <div id="modal-stul-tkan" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Ткани</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">
              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php if (isset($stul_tkany)) { ?>
                      <?php foreach ($stul_tkany as $dop3) { ?>
                        <div class="tovar-box1 thumbnails3">
                          <div class="tovar-box1-border">
                            <a class="" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo 'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <!--<div class="lupa"><a class="" alt="<?php //echo $dop3['name'];?>" title="<?php //echo //$dop3['name'];?>"href="<?php //echo 'image/'.$dop3['popup']; ?>"><i class="fa fa-search"></i></a></div>-->
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>
                      <?php } ?>
                     
                    </div>
                  </div>
                </div>
              </div>

              <!--<div id="tabs2-1">
                МДФ эмаль
              </div>

              <div id="tabs2-2">
                Пластик
              </div>-->
          </div>

        </div>
      </div>
    </div>
  </div>  
  <div id="modal-stul_color" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Ткани</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">
              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php if(isset($stul_color)) { ?>
                      <?php foreach ($stul_color as $dop3) { ?>
                        <div class="tovar-box1 thumbnails3">
                          <div class="tovar-box1-border">
                            <a class="" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo 'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <!--<div class="lupa"><a class="" alt="<?php //echo $dop3['name'];?>" title="<?php //echo //$dop3['name'];?>"href="<?php //echo 'image/'.$dop3['popup']; ?>"><i class="fa fa-search"></i></a></div>-->
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>
                      <?php } ?>
                     
                    </div>
                  </div>
                </div>
              </div>

              <!--<div id="tabs2-1">
                МДФ эмаль
              </div>

              <div id="tabs2-2">
                Пластик
              </div>-->
          </div>

        </div>
      </div>
    </div>
  </div>  



<script type="text/javascript"><!--
sc = 0;

$('#tab_fasad').on('click','label',function(){
  sc = $(this).attr('key');
  
});

$('#tab_ral').on('click','label',function(){
  //key = $(this).attr('key');
  style = $(this).attr('bg');
  color = $(this).attr('color');
  $('#tab_fasad #contentt'+sc+' .c_replace').attr('style',style);
  src='images/fasady_png/'+sc+'/'+color+'.png';
  $('#tab_fasad #contentt'+sc+' .color_png').attr('src',src);
});
$('#tab_ral').on('click','.color_h',function(){
  style = $(this).attr('bg');
  color = $(this).attr('color');
  $('#tab_fasad #contentt'+sc+' .c_replace').attr('style',style);
  src='images/fasady_png/'+sc+'/'+color+'.png';
  $('#tab_fasad #contentt'+sc+' .color_png').attr('src',src);
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
  $('.thumbnails2').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
  $('.thumbnails3').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  }); 
  //alert('ok');
  /*$('.thumbnails4').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });*/

  html8  = '<div id="stul_onclick" class="modal">';
  html8 += '  <div class="modal-dialog">';
  html8 += '    <div class="modal-content">';
  html8 += '      <div class="modal-body"><div id="id5_" class="forma forma2 tovar-white" style="display:block;"> ';
  html8 += '         <div class="title">Заявка на заказ товара</div>';
  html8 += '         <div class="title2">Наш менеджер свяжется с вами в ближайшее время</div>';
  html8 += '          <div class="forma_content">';
  html8 += '          <input type="hidden" name="model" value="<?=$model;?>"/>';
  html8 += '          <input type="hidden" name="title" value="<?=$heading_title;?>"/>';
  html8 += '          <div class="fio"><div class="name control-label1">Ваше имя:</div><input type="text" name="name" value=""/>';
  html8 += '          <div class="tel control-label1">Телефон:</div><input type="text" name="tel" value="" />';
  //html8 += '          <div class="email">E-mail:</div><input type="text" name="email" value="" />';
  html8 += '          <div>Ваш адрес и комментарий:</div><textarea name="comment"></textarea>';
  html8 += '          </div>';
  html8 += '          <div class="center">';
  html8 += '          <button type="button" class="btn send button" id="load" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить заказ</button>';
  html8 += '          </div>';
  html8 += '          <div class="clear"></div>';
  html8 += '          </div>';
  html8 += '      </div></div>';
  html8 += '    </div';
  html8 += '  </div>';
  html8 += '</div>';

  $('body').append(html8);
  $('.stul_onclick').on('click', function() {
    //yaCounter39342560.reachGoal('kh_zvon');
    $('#stul_onclick').modal('show');
  });

  
 $('#stul_onclick button').on('click', function() {
    $.ajax({
      url: 'index.php?route=information/callback/send8',
      type: 'post',
      data: $('#stul_onclick input[type=\'hidden\'], #stul_onclick input[type=\'text\'], #stul_onclick textarea'),
      dataType: 'json',
      beforeSend: function() {
        $('.warning, .error').remove();
        $('#stul_onclick button').button('loading');
      },  
      complete: function() {
         $('#stul_onclick button').button('reset');
      },        
      success: function(json) {
        if (json['success']) {
          //yaCounter39342560.reachGoal('kh_zam_send');
          
          $('#stul_onclick input[type=\'text\'], #stul_onclick textarea').attr('value','');
          $('#stul_onclick').modal('hide');
          $('#send_success .modal-body').html('Заявка отправлена!');
          $('#send_success').modal('show');

        } else if (json['error']) {

          if(json['error']['name']){
            $('#stul_onclick .name').append('<span class="error">'+json['error']['name']+'</div>');
          }
          if(json['error']['tel']){
            $('#stul_onclick .tel').append('<span class="error">'+json['error']['tel']+'</div>');
          }
          if(json['error']['email']){
            $('#stul_onclick .email').append('<span class="error">'+json['error']['email']+'</div>');
          }

        }
      },
      error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    }); //ajax
  
  }); 


});


//--></script>

     

<?php echo $footer; ?>
