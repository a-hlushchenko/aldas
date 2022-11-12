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
<style>
.ff3{float:right!important;}
#owl-demo .item img{
  max-height: 675px;
  width: auto!important;
}
.catalog-box1-price{
	text-align: center!important;
}
.catalog-box1-text{
	line-height: 18px!important;
}
</style>
<script>
(function($) {
  $.fn.paintFirstWord= function(color) {
    var str = this.text();
    var splited = str.split(' ');
    //var replaced = str.split(splited[0]).join('<span style = "color:' + color + ';">' + splited[0] + '</span>');
    var replaced = str.split(splited[0]).join('<span>' + splited[0] + '</span>');
    this.html(replaced);
  };
})(jQuery);
$(function() {
  $('h1').paintFirstWord('#2a8eb8');
});
  $(function() {
    $("#tabs ul a").tabs();
    $("#tabs2 ul a").tabs();
  });
  $(function() {
    $('#tabs a, #tabs2 a').on('click',function(){
      $(window).scrollTop($(window).scrollTop()+1);
      $(window).scrollTop($(window).scrollTop()-1);
    });
  });

</script>


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

      </div>


      <div class="tovar-top">
        <div class="tovar-grey">
          <div class="container">
            <div class="row">
              <div class="col-lg-7 col-md-6 col-sm-12">
              <div class="tovar-title"><h1><?php echo $heading_title; ?></h1></div>

                <div id="owl-demo" class="owl-carousel owl-theme thumbnails"  style="display:none;">

                  <?php if ($thumb || $images) { ?>

                    <?php if ($thumb) { ?>
                    <div class="item">
                      <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                    </div>
                    <?php } ?>
                    <?php if ($images) { ?>
                    <?php foreach ($images as $image) { ?>
                    <div class="item"><a class="thumbnail" rel="nofollow" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><img class="lazyOwl" data-src="<?php echo $image['popup']; ?>" src="" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
                    <?php } ?>
                    <?php } ?>

                  <?php } ?>
                </div>

                <div class="wrapper">
                  <div id="owl-demo1" class="owl-carousel owl-theme thumbnails_" style="display:none;">
                    <?php if ($images) { ?>
                    <?php foreach ($images as $image) { ?>
                    <div class="item"><a class="thumbnail" rel="nofollow" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img class="lazyOwl" data-src="<?php echo $image['thumb']; ?>" src="" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
                    <?php } ?>
                    <?php } ?>
                </div>
                </div>
              </div>
              <div class="col-lg-5 col-md-6 col-sm-12">

                <div class="tovar-white">

                        <div class="wrapper">
                        <div class="nhar">Характеристики</div>
                          <!--<div class="tabs-col1 col-lg-6 col-md-6 col-sm-4 col-xs-5">-->
                          <div class="tabs-col1 col-lg-11 col-md-11 col-sm-7 col-xs-11">
                            <div class="tabs-text">
                              У представленной модели могут быть изменены размеры, расцветка и комплектация по желанию клиента
                            </div>
                            <ul class="tabs-list">
                <?php if($fasad){ ?>
                              <li>Тип фасада: <?php echo $fasad; ?></li>
                  <?php } ?>
                              <li>Фурнитура: Blum base* (Австрия)</li>
                              <li>Цвет фасада: 1000 вариантов по раскладке RAL</li>
                           </ul>

                          </div>

                          <div class="pricetovar col-lg-12 col-md-12 col-sm-4">
                              Цена за м/п: <span><?php echo $price; ?></span><br/>
                              <? /* Готовая модель: <span><?php //echo $price_got3; ?></span><br/> 03,03,2018 */ ?>
                              Цена проекта от:  <span><?php echo $price_got_new; ?></span> <span class="old-project-price"><?php echo $price_got_old; ?></span>
                              <? /* В рассрочку без переплат: <span><?php echo $price_ras; ?></span> в мес. */ ?>
                              <br/>
                              <? /* Предоплата: <span><?php echo $predoplata; ?></span> <br/>
                               <span class="helps">* Стоимость готовой модели в базовом исполнении длинной 3 метра</span>  */ ?>
                              <span class="helps">** Рассрочка на 6 месяцев при условии 50% предоплаты</span>
                            </div>
                        </div>


                </div>

                <div class="wrapper pre_forma">

                  <? /* <div class="tovar-button0"><a rel="nofollow" onclick="call(2); return false;">Заказать готовую модель</a></div> */ ?>
                  <div class="tovar-button1 ff1"><a rel="nofollow" onclick="return false;">Фасады</a></div>
                  <div class="tovar-button1 ff2"><a rel="nofollow" onclick="return false;">Цвета</a></div>
                  <?/*<div class="tovar-button1 ff4"><a rel="nofollow" onclick="return false;">Аксессуары</a></div>*/?>
                  <div style="float: right;" class="tovar-button1<?php echo (!$onclick)?' ff3':'';?>"><a rel="nofollow" onclick="<?php echo (!$onclick)?'return false':$onclick;?>;">Онлайн-расчет</a></div>
                </div>
                <script async src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
                <script async src="//yastatic.net/share2/share.js"></script>
                <div class="ya-share2" style="margin-bottom:10px;" data-services="collections,vkontakte,facebook,odnoklassniki,moimir,gplus,pinterest,viber,whatsapp,skype,telegram" data-image="https://www.aldas.ru/image/catalog/logo.png"></div>


                <div id="id3_1" class="forma tovar-white">
                  <div class="title">Рассчитать проект</div>
                  <div class="forma_content">
                   <input type="hidden" name="model" value="<?=$model;?>"/>
                   <input type="hidden" name="title" value="<?=$heading_title;?>"/>
                   <div class="fio">
                      <div class="left">Имя:</div><div class="right"><input type="text" name="name" value=""/></div>

                       <div class="left clear">Телефон:</div><div class="right"><input type="text" name="tel" value="" /></div>
                       <div class="left clear">E-mail:</div><div class="right"><input type="text" name="email" value=""/></div>
                       <div class="left com">Комментарий:<br/><span class="help">(Или любой ваш вопрос)</span></div><div class="right"><textarea name="comment"></textarea></div>
                       <!--<div class="left com">Прикрепить эскиз:<br/><span class="help">(Если имеется)</span></div>-->
                       <div class="left com"><a id="buttonfile4" class="button">Выбрать файл</a></div>
                       <div class="right">
                          <input type="text" readonly name="namefile" value="Прикрепите эскиз (если есть)" />
                          <input type="hidden" name="file" value="" />
                       </div>

                   </div>
                   <div class="clear"></div>
                   <div class="help">Если у Вас имеются готовые бланки замера или дизайн проект, прикрепите их и мы подробно просчитаем Ваш проект
                         </div>
                    <div style="text-align:right">
                        <input type="radio" name="otvet" id="mail" value="mail"><label for="mail" style="padding-left:12px;">Ответить на почту</label>
                        <input type="radio" name="otvet" id="telefone" value="telefone" checked><label for="telefone">Перезвонить</label>
                    </div>

                   <a href="" onclick="return false;" rel="nofollow" class="send button">Заказать</a>
                   <div class="clear"></div>
                  </div>
                 </div>

                         <script>

                             $('#id2 input[type="checkbox"]').change(function(){
                              calc();
                             });


                             function calc(){
                              sborka = 0;
                              dost = parseInt($('#id2 input[name="dost"]:checked').attr('value'));
                              sbor = parseInt($('#id2 input[name="sbor"]:checked').attr('value'));
                              price = <?php echo (int)$price_got_int; ?>;
                              if(sbor){
                                sborka=price*0.1;
                               price = price*1.1;

                              }
                              if(dost){
                                price = price+dost;
                              }
                              price = parseInt(price);
                              $("#total span").html(price+' руб.');
                              $("input[name='total']").attr('value',price);
                              $("input[name='sborka']").attr('value',sborka);

                             }
                         </script>

                        <div id="id3" class="forma tovar-white">
                            <div class="title">Бесплатный замер</div>
                             <div class="forma_content">
                             <input type="hidden" name="model" value="<?=$model;?>"/>
                             <input type="hidden" name="title" value="<?=$heading_title;?>"/>
                             <div class="fio">Ф.И.О.: <input type="text" name="name" value="" style="width:150px;"/><br/>
                             Телефон, почта: <input type="text" name="tel" value="" /><br/>
                             Адрес: <input type="text" name="adress" value="" style="width:155px;"/>
                             </div>
                             <a href="" style="float:none;" onclick="return false;" rel="nofollow" class="send button">Заказать</a>
                             </div>



                         </div>

              </div>
            </div>
                    <div id="tabs" class="tabs">

                      <ul>
                        <li><a href="#tabs-0">Описание</a></li>
                        <li><a href="#tabs-2">Фасады</a></li>
                        <li><a href="#tabs-3">Декор</a></li>
                        <li><a href="#tabs-1">Параметры</a></li>
                        <!--<li><a href="#tabs-2">Отзывы</a></li>-->
                        <!-- <li><a href="#tabs-3">Как заказать</a></li> -->
                        <li><a href="#tabs-4">Доставка и сборка</a></li>
                        <li><a href="#tabs-5">Купить в рассрочку</a></li>
                      </ul>
                      <div id="tabs-2">
                        <div class="wrapper tovar-text4">
                          <?php foreach ($data['dop3'] as $dop3) { ?>
                            <div class="tovar-box1 thumbnails2">
                              <div class="tovar-box1-border">
                              <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>" href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>">
                                <img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                              <div class="price"><?php echo $dop3['name'];?></div>
                              <div class="description"><?php echo $dop3['description'];?></div>
                              </div>
                            </div>
                          <?php } ?>

                          <?php foreach ($fasady_emal_r as $dop3) { ?>
                          <div class="tovar-box1 thumbnails4">
                            <div class="tovar-box1-border">
                              <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                            <div class="price"><?php echo $dop3['name'];?></div>
                            </div>
                          </div>
                        <?php } ?>
                        <?php foreach ($fasady_emal_br as $dop3) { ?>
                          <div class="tovar-box1 thumbnails4">
                            <div class="tovar-box1-border">
                              <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                            <div class="price"><?php echo $dop3['name'];?></div>
                            <div class="description"><?php echo $dop3['description'];?></div>
                            </div>
                          </div>
                        <?php } ?>
                        <?php foreach ($fasady_emal_g as $dop3) { ?>
                          <div class="tovar-box1 thumbnails4">
                            <div class="tovar-box1-border">
                             <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"> <img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                            <div class="price"><?php echo $dop3['name'];?></div>
                            <div class="description"><?php echo $dop3['description'];?></div>
                            </div>
                          </div>
                        <?php } ?>
                        <?php foreach ($fasady_plastik as $dop3) { ?>
                          <div class="tovar-box1 thumbnails4">
                            <div class="tovar-box1-border">
                              <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                            <div class="price"><?php echo $dop3['name'];?></div>
                            <div class="description"><?php echo $dop3['description'];?></div>
                            </div>
                          </div>
                        <?php } ?>
                        </div>
                      </div>

                      <div id="tabs-3">
                        <div class="wrapper tovar-text4">
                          <?php foreach ($data['dekor'] as $dop3) { ?>
                            <div class="tovar-box1 thumbnails5">
                              <div class="tovar-box1-border">
                              <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>">
                                <img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                              <div class="price"><?php echo $dop3['name'];?></div>
                              <div class="description"><?php echo $dop3['description'];?></div>
                              </div>
                            </div>
                          <?php } ?>
                        </div>
                      </div>

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
                      <!--<div id="tabs-2">
                        <div class="wrapper tovar-text4">
                        </div>
                      </div>-->
                      <!-- <div id="tabs-3">
                        <div class="wrapper tovar-text4">
                            <b>Доставка по Москве</b> и подъем до квартиры бесплатно
                        </div>
                      </div> -->
                      <div id="tabs-4">
                        <div class="wrapper tovar-text4">
                          <p style="text-align: justify;">
                            <table><tr><td><img  src="<?=$placeholder;?>" data-original="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic2.png">
                              </td><td><b>Доставка по Москве</b> и подъем до квартиры бесплатно</td>
                            </tr>
                            </table>
                          </p>
                          <p style="text-align: justify;">
                            <table><tr><td><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic4.png">
                            </td><td>Сборка - услуга эта
                            <span style="font-weight: bold;">стоит 10% от цены приобретения</span>
                            </td>
                            </tr>
                            </table>
                          </p>
                          Все наши специалисты по доставке и сборке мебели – мастера высокой квалификации. Они прекрасно знают свою работу и сделают ее максимально быстро и качественно, не оставив после себя грязи и мусора.
                        </div>
                      </div>
                      <div id="tabs-5">
                        <div class="wrapper tovar-text4">
                            Специальное предложение от "Альдас кухни". Рассрочка до 6 месяцев за покупку. Никаких переплат и банковских договоров.
                            Условии акции :
                            <ul>
                              <li>1. Выберите понравившуюся кухню</li>
                              <li>2. Оформите обратный звонок или покупку</li>
                              <li>3. Вам перезвонит наш менеджер, с которым Вы сможете уточнить все интересующие Вас вопросы</li>
                              <li>4. При посещении офиса оплатите 50% стоимости мебели и оформите договор рассрочки</li>
                              <li>5. Оплачиваете остаточную сумму в течении 6 месяцев. Способы оплаты - в офисе, карточкой, банковский перевод</li>
                            </ul>
                        </div>
                      </div>

                    </div>


          </div>
        </div>
      </div>
      <style>
        .catalog-box1-text{
          line-height: 18px;
        }
      </style>
      <?php if(mb_stripos(strtolower($heading_title), 'кухня')!==false){  ?>

        <div id="dop1" class="container">
          <div class="tovar-title2"><h2>Стоимость гарнитура</h2></div>
          <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
          <div class="tovar-top1">
            <div class="tovar-box">
              <div class="wrapper">
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/pryamaya_do_2_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got2;?>"><?=$price_got2;?>
                    </div>
                    <div class="oneclick button">Заказать в один клик</div>
                  </div>
                  <div class="tovar-box1-text">2 метра</div>
                      <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/pryamaya_do_3_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got3;?>"><?=$price_got3;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">3 метра</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/pryamaya_do_4_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got4;?>"><?=$price_got4;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">4 метра</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/pryamaya_do_5_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got5;?>"><?=$price_got5;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">5 метров</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/yglovaya_3.5_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got3_5;?>"><?=$price_got3_5;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">3,5 метра</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/yglovaya_do_3_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got3;?>"><?=$price_got3;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">3 метра</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/yglovaya_do_4_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got4;?>"><?=$price_got4;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">4 метра</div>
                  <input value="1" name="type" type="radio" />
                </div>
                <div class="tovar-box1">
                  <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/yglovaya_do_5_metra.jpg" alt="" class="img-responsive"><div class="price" value="<?=$price_int_got5;?>"><?=$price_got5;?></div><div class="oneclick button">Заказать в один клик</div></div>
                  <div class="tovar-box1-text">5 метров</div>
                  <input value="1" name="type" type="radio" />
                </div>
              </div>
            </div>
          </div>
        </div>

      <? } ?>

    <? if($dop2){ ?>
      <div id="dop2" class="container">
        <div class="tovar-title2">Собрать из модулей</div>
        <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
        <div class="tovar-top1">
          <div class="tovar-box">
            <div class="wrapper">
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-1-glyx.jpg" alt=""><div class="price" value="<?=$price_module_1_int;?>"><?=$price_module_1;?></div></div>
                <div class="tovar-box1-text">Верхний, глухой</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-2-glyx.jpg" alt=""><div class="price" value="<?=$price_module_2_int;?>"><?=$price_module_2;?></div></div>
                <div class="tovar-box1-text">Верхний, двойной</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-3-steklo_1.jpg" alt=""><div class="price" value="<?=$price_module_3_int;?>"><?=$price_module_3;?></div></div>
                <div class="tovar-box1-text">Верхний, под ветраж</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-3-steklo_2.jpg" alt=""><div class="price" value="<?=$price_module_4_int;?>"><?=$price_module_4;?></div></div>
                <div class="tovar-box1-text">Верхний, двойной, витраж</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-4-yglovoi_1.jpg" alt=""><div class="price" value="<?=$price_module_5_int;?>"><?=$price_module_5;?></div></div>
                <div class="tovar-box1-text">Верхний, угловой №1</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>

              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-4-yglovoi_2.jpg" alt=""><div class="price" value="<?=$price_module_6_int;?>"><?=$price_module_6;?></div></div>
                <div class="tovar-box1-text">Верхний, угловой №2</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-5-nizkie.jpg" alt=""><div class="price" value="<?=$price_module_7_int;?>"><?=$price_module_7;?></div></div>
                <div class="tovar-box1-text">Верхний, глухой (Н)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-6-dvoinoi.jpg" alt=""><div class="price" value="<?=$price_module_8_int;?>"><?=$price_module_8;?></div></div>
                <div class="tovar-box1-text">Верхний, двойной (Н+Н)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-7-radiys.jpg" alt=""><div class="price" value="<?=$price_module_9_int;?>"><?=$price_module_9;?></div></div>
                <div class="tovar-box1-text">Верхний, радиусный (Гл)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/verh/Verx-shkaf-7-radiys_steklo.jpg" alt=""><div class="price" value="<?=$price_module_10_int;?>"><?=$price_module_10;?></div></div>
                <div class="tovar-box1-text">Верхний, радиусный (В)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>

              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-1-glyhoi.jpg" alt=""><div class="price" value="<?=$price_module_11_int;?>"><?=$price_module_11;?></div></div>
                <div class="tovar-box1-text">Нижний, глухой</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-1-glyhoi_dvoinoi.jpg" alt=""><div class="price" value="<?=$price_module_12_int;?>"><?=$price_module_12;?></div></div>
                <div class="tovar-box1-text">Нижний, двойной</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-1-glyhoi_dvoinoi_vikatnoi.jpg" alt=""><div class="price" value="<?=$price_module_13_int;?>"><?=$price_module_13;?></div></div>
                <div class="tovar-box1-text">Нижний, комби (4)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-3-glyhoi.jpg" alt=""><div class="price" value="<?=$price_module_14_int;?>"><?=$price_module_14;?></div></div>
                <div class="tovar-box1-text">Нижний, комби (3)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-4-glyhoi.jpg" alt=""><div class="price" value="<?=$price_module_15_int;?>"><?=$price_module_15;?></div></div>
                <div class="tovar-box1-text">Нижний, комби (2)</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-5-pod_plity.jpg" alt=""><div class="price" value="<?=$price_module_16_int;?>"><?=$price_module_16;?></div></div>
                <div class="tovar-box1-text">Нижний, техника</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-6-radiys.jpg" alt=""><div class="price" value="<?=$price_module_17_int;?>"><?=$price_module_17;?></div></div>
                <div class="tovar-box1-text">Нижний, радиус</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-7-yglovoi.jpg" alt=""><div class="price" value="<?=$price_module_18_int;?>"><?=$price_module_18;?></div></div>
                <div class="tovar-box1-text">Нижний, угловой №1</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/niz/Niz-shkaf-8-yglovoi.jpg" alt=""><div class="price" value="<?=$price_module_19_int;?>"><?=$price_module_19;?></div></div>
                <div class="tovar-box1-text">Нижний, угловой №2</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/pilyastra.jpg" alt=""><div class="price" value="5000">5 000 руб.</div></div>
                <div class="tovar-box1-text">Пилястра (массив). Комплект 2 шт</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/karniz.jpg" alt=""><div class="price" value="10500">10 500 руб.</div></div>
                <div class="tovar-box1-text">Карниз 3 метра</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                    <a rel="nofollow" class="tovar-box1-minus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-minus.gif" alt=""></a>
                    <div class="tovar-box1-namber"><input type="text" name="type" value="0"></div>
                    <a rel="nofollow" class="tovar-box1-plus"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/tovar-box1-plus.gif" alt=""></a>
                  </div>
                </div>
              </div>



              <div class="tovar-box1 itog">
              </div>

            </div>
          </div>
        </div>
      </div>
    <? } ?>


      <div id="dop3" class="container" style="display:none;">
        <!--<div class="tovar-title2">Дополнительные модули</div>-->
        <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
        <div class="tovar-top1">
          <div class="tovar-box">
          <? if($dop3){ ?>
            <div class="wrapper">
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box2-img8.jpg" alt=""><div class="price" value="6000">6 000 руб.</div></div>
                <div class="tovar-box1-text">Столешница ЛДСП  РФ, 3 метра</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box1-img8.jpg" alt=""><div class="price" value="10900">10 900 руб.</div></div>
                <div class="tovar-box1-text">Столешница пластик. Италия, 3 метра</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box3-img8.jpg" alt=""><div class="price" value="42000">42 000 руб.</div>
                </div>
                <div class="tovar-box1-text">Столешница массив дуба, 3 метра</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box4-img8.jpg" alt=""><div class="price" value="44000">44 000 руб.</div></div>
                <div class="tovar-box1-text">Столешница камень, 3 метра</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box2-img6.jpg" alt=""><div class="price" value="9800">9 800 руб.</div></div>
                <div class="tovar-box1-text">Мойка, фрагранит РФ</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box3-img6.jpg" alt=""><div class="price" value="6 500">6 500 руб.</div></div>
                <div class="tovar-box1-text">Мойка, нержавейка РФ</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box5-img6.jpg" alt=""><div class="price" value="17000">17 000 руб.</div></div>
                <div class="tovar-box1-text">Мойка, фрагранит, Италия</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box6-img6.jpg" alt=""><div class="price" value="11000">11 000 руб.</div></div>
                <div class="tovar-box1-text">Мойка, нержавейка, Италия</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box1-img7.jpg" alt=""><div class="price" value="17600">17 600 руб.</div></div>
                <div class="tovar-box1-text">Выкатная, поворотная мусорка</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box2-img7.jpg" alt=""><div class="price" value="3000">3 000 руб.</div></div>
                <div class="tovar-box1-text">Сушка универсальная, Италия</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box3-img7.jpg" alt=""><div class="price" value="15000">15 000 руб.</div></div>
                <div class="tovar-box1-text">Фурнитура Blum, Австрия</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box4-img7.jpg" alt=""><div class="price" value="15900">15 900 руб.</div></div>
                <div class="tovar-box1-text">Розетка в столешницу, Европа</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box5-img7.jpg" alt=""><div class="price" value="2500">2 500 руб.</div></div>
                <div class="tovar-box1-text">Смеситель РФ/Азия</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>
              <div class="tovar-box1">
                <div class="tovar-box1-border"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/dop3/tovar-box6-img7.jpg" alt=""><div class="price" value="9900">9 900 руб.</div></div>
                <div class="tovar-box1-text">Смеситель Европа</div>
                <div class="tovar-box1-width">
                  <div class="wrapper">
                        <label class="fancy-checkbox">
                            <input value="1" type="checkbox" />
                            <span></span>
                        </label>
                  </div>
                </div>
              </div>

            </div>
          <? } ?>
            <div class="wapper" style="padding: 0 20px 20px">
              <div class="left">
                Общая стоимость: <span id="itog">0</span> руб.<br/>
                В рассрочку без переплат: <span id="rasrochka">0</span> руб. в мес.<br/>
                Предоплата: <span id="predoplata">0</span> руб.<br/>
                <span style="font-size:11px;color:red;">* Стоимость без доставки, сборки и установки.</span><br/>
                <span style="font-size:11px;color:red;">* Техника и столешница не включена в стоимость.</span>
              </div>
              <div class="right">
                <div class="tovar-button0"><a rel="nofollow" id="z1" style="padding-top: 18px">Заказать</a></div>
                <div class="tovar-button1"><a rel="nofollow" id="z2" >Бесплатный вызов замерщика</a></div>
              </div>
              <div class="clear"></div>
            </div>

          </div>
        </div>
      </div>
      <style>
      	.better{
      		background: url('/catalog/view/theme/default/images/bg.svg');
      		min-height:400px;
      	}
      	.better_title{
      		font-family: Candara;
			font-style: normal;
			font-weight: normal;
			font-size: 44px;
			line-height: 54px;
			text-transform: uppercase;
			color: #E74C3C;
			text-align: center;
			align-items: flex-start;
			padding-top:25px;
			margin-bottom: 20px;
      	}
      	.better_items{
      		display: flex;
      		flex-wrap:wrap;
      		justify-content: space-between;
      		max-width: 1042px;
      	}
      	.better_item{
      		width: 30%;
      		max-width: 300px;
      		font-size: 16px;
			line-height: 26px;
			color: #6A6A6A;
			display: flex;
			line-height: 20px;
			margin: 1%;
			align-items: flex-start;
			margin: auto;
      	}
      	.better_item img{width: 60px;margin-right: 12px;}
      	.better_item span{
      		font-size: 20px;
			line-height: 26px;
			color: #E77A3C;
      	}
      	.better_item .name{
      		font-weight: bold;
			font-size: 20px;
			line-height: 24px;
			text-transform: uppercase;
			color: #6A6A6A;
			margin-bottom: 10px;
      	}
      	.more_fasad{
      		font-weight: bold;
			font-size: 17px;
			line-height: 48px;
			text-align: center;
			text-transform: uppercase;
			padding:0 32px;
			color: #FFFFFF;
			background: #478C80;
			box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
			border-radius: 4px;
			margin: auto;
    		width: 260px;
    		margin-top: 16px;
      	}
      </style>

  	</div>
  	</div>
      <div class="better">
      	<div class="container">
	      	<div class="better_title">Чем наша мебель лучше</div>
	      	<div class="better_items">
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better1.svg" alt="экологичность" >
	      			<div><div class="name">экологичность</div>
	      				Стандарт <span>Е1 </span><br>европейское сырье
	      			</div>
	      		</div>
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better2.svg" alt="надежность" >
	      			<div><div class="name">надежность</div>
	      				Защита стекл от осколков<br>
						и надежная <span>фиксация</span> мебели
	      			</div>
	      		</div>
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better3.svg" alt="европейcкая фурнитура" >
	      			<div><div class="name">европейcкая<br>фурнитура</div>
	      				<span>Blum</span> / GTV
	      			</div>
	      		</div>
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better4.svg" alt="мы фабрика" >
	      			<div><div class="name">мы фабрика</div>
	      				Быстрые сроки <br>
						от  <span>14</span> дней
	      			</div>
	      		</div>
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better5.svg" alt="Лучший ассортимент" >
	      			<div><div class="name">Лучший <br>ассортимент</div>
	      				<span>10000+</span>вариантов
	      			</div>
	      		</div>
	      		<div class="better_item">
	      			<img src="/catalog/view/theme/default/images/better6.svg" alt="Доступная цена" >
	      			<div><div class="name">Доступная цена</div>
	      				Честная цена от фабрики<br>
	      				без переплат <span>-45%</span>
	      			</div>
	      		</div>
	      	</div>
	      	<div class="more_fasad" onclick="
	      	/**/
	      	">Варианты фасадов</div>
	    </div>
      </div>
      <script>
      	$('.more_fasad').on('click', function(){
      		$('[href=\"#tabs-2\"]').click();
      		var target = $('#tabs');
      		if( target.length ) {
		        event.preventDefault();
		        $('html, body').animate({
		            scrollTop: target.offset().top-120
		        }, 500);
		    }
      	});
      </script>

       <?php if($products) { ?>
        <div class="container">
          <div class="tovar-title2">Схожие товары</div>

          <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
          <div class="tovar-top1">
            <div class="tovar-box2">
              <div class="row products">

                <?php foreach ($products as $product) { ?>
                  <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="catalog-box1">
                      <div class="padding">
                        <a href="<?php echo $product['href']; ?>"><img src="<?=$placeholder;?>" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
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
      <div class="dop_products">
       <?php if(mb_stripos(strtolower($heading_title), 'кухня')!==false && $products_stoly) { ?>
        <div class="container">
          <div class="tovar-title2">Столы и стулья</div>

          <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
          <div class="tovar-top1">
            <div class="tovar-box" style="padding: 0 20px;">
              <div id="table" class="owl-carousel owl-theme">

                <?php foreach ($products_stoly as $product) { ?>
                  <div class="">
                    <div class="catalog-box1">
                      <div class="padding">
                        <a href="<?php echo $product['href']; ?>" rel="nofollow"><img class="lazyOwl" data-src="<?php echo $product['thumb']; ?>" src="" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                        <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <div class="catalog-box1-text"><?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?>
                        <br/>
                        <?php if ($product['template']==0) { ?>
                        Формат кухни: угловая/прямая/П-образная
                        <?php } ?>
                        </div>
                        <?php if ($product['price']) { ?>
                          <div class="catalog-box1-price">
                            <?php if (!$product['special']) { ?>
                              <?php if ($product['template']==0) { ?>
                                Цена за 1м<sup>2</sup>: <span><?php echo $product['price']; ?></span><br/>
                                Готовая модель: <span><?php echo $product['price_got']; ?></span><br/>
                                В рассрочку: <span><?php echo $product['price_ras']; ?></span> в мес.
                              <?php } else { ?>
                                Обычная цена: <span class="price-old"><?php echo $product['price_plus_30proc']; ?></span><br/>
                                Стоимость по акции: <span class="price-new"><?php echo $product['price_minus_10proc']; ?></span><br/>
                              <?php } ?>
                            <?php } else { ?>
                            Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } ?>
                          </div>
                          <?php } ?>
                          <?php if($product['new']){ ?>
                          <div class="tag-new">
                            <span>NEW</span>
                          </div>
                          <?php } ?>
                      </div>
                    </div>
                  </div>
                <?php } ?>

              </div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
      <?php } ?>
       <?php if($products_accessuary=false) { ?>
        <div id="access" class="container">
          <div class="tovar-title2">Аксессуары</div>

          <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
          <div class="tovar-top1">
            <div class="tovar-box">
              <div class="row products">

                <?php foreach ($products_accessuary as $product) { ?>
                  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="catalog-box1">
                      <div class="padding">
                        <a href="<?php echo $product['href']; ?>" rel="nofollow"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                        <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <div class="catalog-box1-text"><?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?>
                        <br/>
                        <?php if ($product['template']==0) { ?>
                        Формат кухни: угловая/прямая/П-образная
                        <?php } ?>
                        </div>
                        <?php if ($product['price']) { ?>
                          <div class="catalog-box1-price">
                            <?php if (!$product['special']) { ?>
                              <?php if ($product['template']==0) { ?>
                                Цена за 1м<sup>2</sup>: <span><?php echo $product['price']; ?></span><br/>
                                Готовая модель: <span><?php echo $product['price_got']; ?></span><br/>
                                В рассрочку: <span><?php echo $product['price_ras']; ?></span> в мес.
                              <?php } else { ?>
                                Обычная цена: <span class="price-old"><?php echo $product['price_plus_30proc']; ?></span><br/>
                                Стоимость по акции: <span class="price-new"><?php echo $product['price_minus_10proc']; ?></span><br/>
                              <?php } ?>
                            <?php } else { ?>
                            Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } ?>
                          </div>
                          <?php } ?>
                          <?php if($product['new']){ ?>
                          <div class="tag-new">
                            <span>NEW</span>
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
       <?php if(mb_stripos(strtolower($heading_title), 'кухня')!==false && $products_tehnika) { ?>
        <div class="container">
          <div class="tovar-title2">Техника</div>

          <div class="grey-pic"><img src="<?=$placeholder;?>" data-original="https://www.aldas.ru/images/grey-pic.png" alt=""></div>
          <div class="tovar-top1">
            <div class="tovar-box" style="padding: 0 20px;">
              <div id="tehnika" class="owl-carousel owl-theme">

                <?php foreach ($products_tehnika as $product) { ?>
                  <div class="">
                    <div class="catalog-box1">
                      <div class="padding">
                        <a href="<?php echo $product['href']; ?>" rel="nofollow"><img class="lazyOwl" data-src="<?php echo $product['thumb']; ?>" src="" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                        <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <div class="catalog-box1-text"><?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?>
                        <br/>
                        <?php if ($product['template']==0) { ?>
                        Формат кухни: угловая/прямая/П-образная
                        <?php } ?>
                        </div>
                        <?php if ($product['price']) { ?>
                          <div class="catalog-box1-price">
                            <?php if (!$product['special']) { ?>
                              <?php if ($product['template']==0) { ?>
                                Цена за 1м<sup>2</sup>: <span><?php echo $product['price']; ?></span><br/>
                                Готовая модель: <span><?php echo $product['price_got']; ?></span><br/>
                                В рассрочку: <span><?php echo $product['price_ras']; ?></span> в мес.
                              <?php } else { ?>
                                Обычная цена: <span class="price-old"><?php echo $product['price_plus_30proc']; ?></span><br/>
                                Стоимость по акции: <span class="price-new"><?php echo $product['price_minus_10proc']; ?></span><br/>
                              <?php } ?>
                            <?php } else { ?>
                            Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } ?>
                          </div>
                          <?php } ?>
                          <?php if($product['new']){ ?>
                          <div class="tag-new">
                            <span>NEW</span>
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
      </div>

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

$('.oneclick').on('click',function(){

  var obj = $(this).parent().find('input');
    itogdop1 = true;
    itogdop2 = false;
    $('#dop1 .tovar-box1-border').removeClass('red');

    if (obj.attr("checked")) {
      $(this).parent().removeClass('red');
      obj.removeAttr('checked');
    } else {
      $(this).parent().addClass('red');
      obj.attr('checked', 'checked');
    }
    $('#dop2 .tovar-box1 input').val(0).change();
      $('#dop2 .tovar-box1 .tovar-box1-border').removeClass('red');
    calcitog();
    setTimeout(function(){
        $('#z1').click();
      }, 300);

});

itogo = 0;
itogdop1 = false;
itogdop2 = false;
itogdop3 = 0;
$('#dop2 input').on('change',function(){
  itogo = 0;
  html='<div class="nhar">Выбранные модули</div>';
  html='<ul class="tabs-list modul">';
  $('#dop2 .tovar-box1').each(function() {

    if($(this).find('input').val()>0){
      quantity = $(this).find('input').val();
      name = $(this).find('.tovar-box1-text').html();
      price = $(this).find('.price').attr('value');
      summa = quantity*price;
      itogo = itogo + summa;
      html+="<li>"+name+": </br>"+quantity+" шт х "+price+" руб. = <span>"+summa+" руб.</span></li>"
    }

  });
  html+='</ul>';
  html+='<div class="endsumma"></br>ИТОГО: '+itogo+' руб.</div>';
  html+='<br/>Стоимость без доставки, сборки и установки.';
  html+='<br/>Техника и столешница не включена в стоимость.';
  $("#dop2 .itog").html(html);

});

$('#dop2 .tovar-box1-minus, #dop3 .tovar-box1-minus').on('click',function(){

  vall = $(this).next().find('input').val();
  if(vall >1){
    $(this).next().find('input').val(~~vall-1).change();
    if(~~vall-1 >0){
      itogdop2 = true;
    } else {
      $(this).parent().parent().prev().prev().removeClass('red');
      itogdop2 = false;
    }
  } else {
    itogdop2 = false;
    $(this).next().find('input').val(0).change();
    $(this).parent().parent().prev().prev().removeClass('red');
  }
  calcitog();
});

$('#dop2 .tovar-box1-plus, #dop3 .tovar-box1-plus').on('click',function(){
    itogdop2 = false;

    vall = $(this).prev().find('input').val();
    $(this).prev().find('input').val(~~vall+1).change();

    $('#dop1 .tovar-box1-border').removeClass('red');
    $('#dop1 input').removeAttr('checked');

    if(~~vall+1 >0){

      $(this).parent().parent().prev().prev().addClass('red');
      itogdop2 = true;
      itogdop1 = false;
    } else {

      $(this).parent().parent().prev().prev().removeClass('red');
    }
    calcitog();
});

sumdop3 = 0;
dop3_html = '';

$('#dop3 input').on('click',function(){
   sumdop3 = 0;
   dop3_html = '<ul class="tabs-list modul">';
   $('#dop3 input:checked').each(function() {
        price = $(this).parent().parent().parent().parent().find('.price').attr('value');
        sumdop3 = sumdop3 + ~~price;
        dop3_html += '<li>'+$(this).parent().parent().parent().parent().find('.tovar-box1-text').html()+': цена <span>'+~~price+' руб.</span></li>';
    });
     dop3_html +='</ul>';
  calcitog();

});
$('#dop3 .tovar-box1-border').on('click',function(){
  dop3_html = '<ul class="tabs-list modul">';
  sumdop3 = 0;
    var obj = $(this).parent().find('input');
    if (obj.attr("checked")) {
      $(this).removeClass('red');
      obj.removeAttr('checked');
    } else {
      $(this).addClass('red');
     obj.attr('checked', 'checked');
    }

    $('#dop3 input:checked').each(function() {
        price = $(this).parent().parent().parent().parent().find('.price').attr('value');
        sumdop3 = sumdop3 + ~~price;
        dop3_html += '<li>'+$(this).parent().parent().parent().parent().find('.tovar-box1-text').html()+': цена <span>'+~~price+' руб.</span></li>';
    });
     dop3_html +='</ul>';

    calcitog();
});

$('#dop1 .tovar-box1-border').on('click',function(){
  itogdop1 = true;
  itogdop2 = false;
  $('#dop1 .tovar-box1-border').removeClass('red');
   var obj = $(this).parent().find('input');
    if (obj.attr("checked")) {
      $(this).removeClass('red');
      obj.removeAttr('checked');
    } else {
      $(this).addClass('red');
     obj.attr('checked', 'checked');
    }

    $('#dop2 .tovar-box1 input').val(0).change();
    $('#dop2 .tovar-box1 .tovar-box1-border').removeClass('red');
  calcitog();
});
function calcitog(){
  html_body ='';
  html  = '<div id="modal-agree" class="modal">';
  html += '  <div class="modal-dialog">';
  html += '    <div class="modal-content">';
  html += '      <div class="modal-header">';
  html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
  html += '        <h4 class="modal-title">Ваш предварительный заказ</h4>';
  html += '      </div>';
  html_body += '      <div class="modal-body">';
  html_body += '      <div class="left"><h1 style="display:none;"><?php echo $heading_title; ?></h1>';

  if(itogdop1){
    price = $('#dop1 input:checked').parent().find('.price').attr('value');
    res = sumdop3 + ~~price;

    dop1_img = $('#dop1 input:checked').parent().find('img').attr('src');
    dop1_name = $('#dop1 input:checked').parent().find('.tovar-box1-text').html();
    dop1_price = price;
    html_body += '      Кухня '+dop1_name+' - цена: <span style="color: #E74C3C;font-size:16px;">'+dop1_price+' руб.</span></b>';
    //html_body += '      <img src="'+$('base').attr('href') + dop1_img+'" width="150"/><br/>';
    html_body += '      <img src="'+ dop1_img+'" width="150"/><br/>';

  }else if(itogdop2){
    res = itogo + sumdop3;
    h = $('.tabs-list.modul').html();
    html_body += '      <ul class="tabs-list modul">'+h+'</ul>';
  }else {
    res = sumdop3;
  }

  $('#itog').html(res);
  //$('#rasrochka').html(~~res*0.6/6);
  $('#rasrochka').html(~~(res/2/6));
  $('#predoplata').html(~~(res/2));
  html_body += '      <div class="endsumma" style="color: #E74C3C;font-size:20px;"><b>ИТОГО:'+res+' руб.</b></div>';
  html_body += dop3_html+'</div>';

    html_body += '      <div class="right"><div class="fio">Имя: <input type="text" name="name" value=""/><br/>';
    html_body += '      Телефон: <input type="text" name="tel" value=""/><br/>';
    html_body += '      E-mail: <input type="text" name="email" value=""/><br/>';
    html_body += '      Комментарий: <textarea name="comment" style="width:155px;"></textarea></div></div>';
    html += html_body;
  html += '      <div class="catalog-button"><a class="send">Отправить заказ</a>';
  html += '      </div>';
  html += '    </div';
  html += '  </div>';
  html += '</div>';

  $('#modal').html(html);
}

$('#z1').on('click',function(){
  $('#modal-agree').modal('show');
});
$('#z2').on('click',function(){
  $('#modal-agree h1').after('<b>Вызов замерщика</b><br/><br/>');
  $('#modal-agree').modal('show');
});


$('.fancy-checkbox span').on('click',function(){
    var obj = $(this).parent().find('input');
    //$(this).parent().parent().parent().prev().prev().addClass('red');
    if (obj.attr("checked")) {
      $(this).parent().parent().parent().prev().prev().removeClass('red');
    } else {
      $(this).parent().parent().parent().prev().prev().addClass('red');
    }
});

$(document).ready(function() {


  $("#owl-demo").owlCarousel({
      lazyLoad: true,
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
      lazyLoad: true,
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


$('.ff1').on('click',function(){
  $('#modal-fasad').modal('show');
});
$('.ff2').on('click',function(){
  $('#modal-colors').modal('show');
});
/*$('.ff3').on('click',function(){
  $('#modal-stol').modal('show');
});*/

/*$('.ff4').on('click',function(){
  $('#modal-access').modal('show');
});*/

//-->
</script>

<div id="modal" > </div>

  <div id="modal-fasad" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Варианты фасадов</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">
              <a class="colours" onclick="$('#modal-fasad .close').click();$('.ff2').click();">Варианты цветов >></a>
              <ul>
                <li><a href="#tabs2-0">Массив дуба</a></li>
                <li><a href="#tabs2-1">МДФ эмаль</a></li>
                <li><a href="#tabs2-2">Пластик</a></li>
              </ul>
              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php foreach ($data['dop3'] as $dop3) { ?>
                        <div class="tovar-box1 thumbnails2">
                          <div class="tovar-box1-border">
                          <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>">
                            <img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                </div>
              </div>

              <div id="tabs2-1">
                <div class="1tovar-top1">

                  <div class="1tovar-box"><h3>Фасады Эмаль рубашка</h3>
                    <div class="wrapper">

                      <?php foreach ($fasady_emal_r as $dop3) { ?>
                        <div class="tovar-box1 thumbnails2">
                          <div class="tovar-box1-border">
                            <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                  <div class="1tovar-box"><h3>Фасады Эмаль без рубашки</h3>
                    <div class="wrapper">

                      <?php foreach ($fasady_emal_br as $dop3) { ?>
                        <div class="tovar-box1 thumbnails2">
                          <div class="tovar-box1-border">
                            <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                  <div class="1tovar-box"><h3>Эмаль Глухие</h3>
                    <div class="wrapper">

                      <?php foreach ($fasady_emal_g as $dop3) { ?>
                        <div class="tovar-box1 thumbnails2">
                          <div class="tovar-box1-border">
                           <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"> <img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>

                </div>
              </div>

              <div id="tabs2-2">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php foreach ($fasady_plastik as $dop3) { ?>
                        <div class="tovar-box1 thumbnails2">
                          <div class="tovar-box1-border">
                            <a class="href" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                </div>
              </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div id="modal-stol" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Столешницы</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">
              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php foreach ($stol as $dop3) { ?>
                        <div class="tovar-box1 thumbnails3">
                          <div class="tovar-box1-border">
                            <a class="" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>"><img src="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"></a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                </div>
              </div>
          </div>

        </div>
      </div>
    </div>
  </div>


  <? if(false){ ?>
  <div id="modal-access" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Аксессуары</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">

              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">

                      <?php foreach ($access as $dop3) { ?>
                        <div class="tovar-box1 thumbnails3">
                          <div class="tovar-box1-border">
                            <a class="" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>"href="<?php echo MAIN_HTTPS_SERVER.'image/'.$dop3['popup']; ?>">
                            <img src="<?=$placeholder;?>" data-original="<?php echo $dop3['thumb'];?>" alt="<?php echo $dop3['name'];?>" title="<?php echo $dop3['name'];?>">
                            </a>
                          <div class="price"><?php echo $dop3['name'];?></div>
                          <div class="description"><?php echo $dop3['description'];?></div>
                          </div>
                        </div>
                      <?php } ?>

                    </div>
                  </div>
                </div>
              </div>

          </div>

        </div>
      </div>
    </div>
  </div>
  <? } ?>

  <div id="modal-colors" class="modal" style="display:none">
    <div class="modal-dialog" style="width:90%;">
      <div class="modal-content">
        <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title">Цвета</h3>
        </div>
        <div class="modal-body">
          <div id="tabs2" class="tabs">

              <div id="tabs2-0">
                <div class="1tovar-top1">
                  <div class="1tovar-box">
                    <div class="wrapper">
                            <div id="tab_fasad" class="tabss tableft">
                              <?php foreach ($fasag_png as $key => $fasag_p) { ?>
                                <style>
                                #tabss<?=$key;?>:checked ~ #contentt<?=$key;?> {
                                  display: block;
                                }
                                </style>
                                <input id="tabss<?=$key;?>" type="radio" name="tabsss" <?if($key==0){?>checked<?}?>>
                                <label for="tabss<?=$key;?>" title="<?=$fasag_p['name'];?>" key="<?=$key;?>"><?=$fasag_p['name']?></label>
                              <?php } ?>

                               <?php foreach ($fasag_png as $key => $fasag_p) { ?>

                               <section id="contentt<?=$key;?>">
                                  <div class="bg">

                                    <div class="bg1"><img src="<?=$fasag_p['bg'];?>"/></div>
                                    <div class="c_replace bg2" style="background:rgba(255,255,51,0.57);">
                                      <img  src="https://www.aldas.ru/images/fasady_png/<?=$key;?>/yellow.png" class="color_png bg2"/>
                                    </div>
                                    <div class="clear"></div>
                                  </div>
                                </section>
                                <?php } ?>
                            </div>

                            <div id="tab_ral" class="tabss">

                              <?php foreach ($colors_tabs as $key => $color) { ?>
                                <style>
                                #tab<?=$key;?>:checked ~ #content<?=$key;?> {
                                  display: block;
                                }
                                </style>
                                <input id="tab<?=$key;?>" type="radio" name="tabs"  <?if($key==1){?>checked<?}?>>
                                <label for="tab<?=$key;?>" title="<?=$color['name_ton_ru'];?>" color="<?=$color['name_ton_en']?>" key="<?=$key;?>" bg="background:rgba(<?=$color['bgrbg'][0];?>,<?=$color['bgrbg'][1];?>,<?=$color['bgrbg'][2];?>,0.57);"style="background:<?=$color['bg'];?>;"><?=$color['name_ton_ru']?></label>
                              <?php } ?>
                              <?php foreach ($colors_tabs as $key1 => $colors) { ?>
                                <section id="content<?=$key1;?>">
                                  <?php foreach ($colors['colors'] as $key => $color) { ?>
                                  <div class="col">
                                    <div class="color_h" color="<?=$color['name_ton_en']?>" colorh="<?=$color['color_h'];?>" bg="background:rgba(<?=$color['rgba'][0];?>,<?=$color['rgba'][1];?>,<?=$color['rgba'][2];?>,0.57);" style="background:<?=$color['color_h'];?>;color:<?=$color['color'];?>">
                                      <div class="name_color"><?=$color['name_rall'];?><span> - <?=$color['name_ru'];?></span></div>
                                    </div>

                                  </div>

                                  <?php } ?>

                               </section>
                              <?php } ?>
                            </div>


                    </div>
                  </div>
                </div>
              </div>

          </div>

        </div>
      </div>
    </div>
  </div>

<script>
  var price = <?=$intprice;?>;
</script>
<?php
/*вставляем калькулятор*/
//$calc_tpl = file_get_contents(DIR_APPLICATION.'view/theme/default/template/product/calc.tpl');

$find = array(
  '{price}',
  '{model}',
  '{heading_title}'
);

$replace = array(
  'price' => $price,
  'model'  => $model,
  'heading_title'   => $heading_title
);
//$calc_tpl = str_replace($find, $replace, $calc_tpl);
//echo $calc_tpl;
?>
<script><!--
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

//$("a[href='#tabs-1']").click();

  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
  $('.thumbnails_').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true,
      tCounter: '%curr% из %total%'
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
  $('.thumbnails4').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
  $('.thumbnails5').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});

$(document).ready(function() {
  $.easing.elasout = function(x, t, b, c, d) {
    var s=0.70158;var p=0;var a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < Math.abs(c)) { a=c; var s=p/4; }
    else var s = p/(2*Math.PI) * Math.asin (c/a);
    return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
  };
  $('.ff4').click(function() {
    //$.scrollTo('#access', 1100, {easing:'elasout'})
    $.scrollTo('.dop_products', 3000, {easing:'elasout'})
  });
});

//--></script>

<script type="text/javascript"><!--
$(document).ready(function() {
  page_stol=1;
  show=4;
  var owl = $('#table');
  dataCarosell = owl.owlCarousel({
    items: 4,
    //autoPlay: 3000,
    navigation: true,
    //navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    navigationText: ['', ''],
    pagination: false,
    lazyLoad: true,
    transitionStyle: true,
    afterMove: function(){
        //console.log('itemsAmount-'+this.itemsAmount);
        //console.log('currentItem-'+this.currentItem);
        if(this.currentItem+6 >= this.itemsAmount){
          //console.log('load');
          i = this.currentItem;
          page_stol = page_stol + 1;
          $.ajax({
             url: 'index.php?route=product/product/getstol',
             type: 'POST',
             data: {
                 page: page_stol,
                 json: 'json',
                 sort: 'RAND()',
                 category_id: '134'
             },
             success: function(html) {
                 dataCarosell.data('owlCarousel').addItem(html);
                 dataCarosell.data('owlCarousel').jumpTo(i);
             },
             error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
              }
         });
        }
    },
    afterAction: function(el){
    }
  });

  page_tehnika=1;
  show2=4;
  var owl2 = $('#tehnika');
  dataCarosell2 = owl2.owlCarousel({
    items: 4,
    //autoPlay: 3000,
    navigation: true,
    //navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    navigationText: ['', ''],
    pagination: false,
    lazyLoad: true,
    transitionStyle: true,
    afterMove: function(){
        if(this.currentItem+6 >= this.itemsAmount){
          i = this.currentItem;
          page_tehnika = page_tehnika + 1;
          //135,'p.sort_order'
          $.ajax({
             url: 'index.php?route=product/product/getstol',
             type: 'POST',
             data: {
                 page: page_tehnika,
                 json: 'json',
                 sort: 'p.sort_order',
                 category_id: '135'
             },
             success: function(html) {

                 dataCarosell2.data('owlCarousel').addItem(html);
                 dataCarosell2.data('owlCarousel').jumpTo(i);
             },
             error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
              }
         });
        }
    },
    afterAction: function(el){

    }
  });

});
$('.modal').on('shown.bs.modal', function () {
  console.log('555');
    lazy.update();
});
--></script>

<script src="<?php echo MAIN_SERVER; ?>catalog/view/javascript/jquery.scrollTo-min.js" type="text/javascript"></script>



<?php echo $footer; ?>
