<!--noindex-->
<div id="modal-online-raschet" class="modal">
  <div class="modal-dialog">
    <div class="modal-content1"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <div class="id3_1 new"> 
        <div class="title">Онлайн расчет</div>
        <div class="forma_content2">

          <div class="tcontent">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="name2">Материал фасада</div>
                <div class="cont">
                  <input type="radio" id="mater1" name="mater" data-kef="1" value="ЛДСП"/><label for="mater1">ЛДСП 
                  <span class="tipbubble1" for="mater1">Фасады ЛДСП покрытые Итальянским пластиком ARPA. Современный стиль и яркая фактура.</span></label>
                  <input type="radio" id="mater2" name="mater" data-kef="1.1" value="Эмаль (МДФ)" /><label for="mater2">Эмаль (МДФ)
                  <span class="tipbubble1">Фасады из МДФ с защитным покрытием (пленка или эмаль). Классический стиль и оптимальная стоимость</span></label> 
                  <input type="radio" id="mater3" name="mater" data-kef="1.2" value="Массив дуба" /><label for="mater3">Массив дерева
                  <span class="tipbubble1">Фасады из массива дуба или ясеня. Индивидуальность в сочетании с классическим стилем. Премиальное решение</span></label> 
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="name2">Комплектация</div>
                <div class="cont">
                  <input type="radio" id="koml1" name="kompl" data-price="0" value="Стандарт"  checked/><label for="koml1">Стандарт
                  <span class="tipbubble1">Базовая комплектация - корпус ЛДСП и фурнитура РФ, элементы декора отсутствуют</span></label> 
                  <input type="radio" id="koml2" name="kompl" data-price="2500" value="Комфорт" /><label for="koml2">Комфорт
                  <span class="tipbubble1">Популярная комплектация из  стандартных элементов.  Карниз и цоколь входит в комплект, элементы декора отсутствуют</span></label> 
                  <input type="radio" id="koml3" name="kompl" data-price="5000" value="Престиж" /><label for="koml3">Престиж
                  <span class="tipbubble1">Индивидуальные размеры и насыщенная комплектация. Все элементы декора присутствуют и определяются индивидуально</span></label> 
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="name2">Фурнитура</div>
                  <div class="cont">
                    <input type="radio" id="furnit1" name="furnit" data-price="0" value="Стандарт" checked/><label for="furnit1">Стандарт
                    <span class="tipbubble1">Фурнитура со стандартной системой доводки. Используются шариковые подшибники в системе направляющих</span></label> 
                    <input type="radio" id="furnit2" name="furnit" data-price="4000" value="BLUM премиум" /><label for="furnit2">BLUM премиум
                    <span class="tipbubble1">Современные технологии, максимальный комфорт (бесшумные системы доводки). Премиальные решение от компании BLUM / Австралия</span></label> 
                  </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="name2">Размеры</div>
                <div class="cont">
                  <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <span class="name">Длина (см):</span> <input type="text" name="dlina" value="150" />
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                      <span class="name">Высота (см):</span> <input type="text" name="height" value="150" />
                    </div>
                  </div>
                  <div class="forma_content2">
                    <div class="endsum">Итоговая стоимость: <span></span></div>
                    <input type="hidden" name="model" value="<?=$model;?>"/>
                    <input type="hidden" name="nameproduct" value="<?=$name;?>"/>
                    <input type="hidden" name="pricetotal" id="pricetotal" value="<?php echo $price; ?>"/>
                    <div class="tipbubble1">Для уточнения деталей и расчета конечной стоимости - отправьте заявку</div>
                    <div class="but1 fleft"><a href="" onclick="return false;" class="button b1"  data-loading-text="Отправляется... <i class='fa fa-circle-o-notch fa-spin'></i>">Заказать</a></div>
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
<!--/noindex-->

<script>

  $('#modal-online-raschet .but1').on('click',function(){
    $('#modal-zakaz1').modal('show');  
    return false;
  });

    $('input[name="dlina"], input[name="height"]').keyup(function(eventObject){
      calc();
    });

    $('input[name="mater"] + label').on('click',function(){
      kef1 = parseFloat($('#'+$(this).attr('for')).attr('data-kef'));
      calc();
    });
    $('input[name="kompl"] + label').on('click',function(){
      kef2 = parseFloat($('#'+$(this).attr('for')).attr('data-price'));
      calc();
    });
    $('input[name="furnit"] + label').on('click',function(){
      kef3 = parseFloat($('#'+$(this).attr('for')).attr('data-price'));
      calc();
    });
    var price = <?=$intprice;?>;
    var kef1=parseInt($('input[name="mater"]:checked').attr('data-kef'));
    var kef2=parseInt($('input[name="kompl"]:checked').attr('data-price'));
    var kef3=parseInt($('input[name="furnit"]:checked').attr('data-price'));
    var sum =0;

    function calc(){
      
      lenght = parseFloat($('input[name="dlina"]').val().replace(",", "."));
      if(!lenght){
        lenght =0;
      }
      height = parseFloat($('input[name="height"]').val().replace(",", "."));
      if(!height){
        height =0;
      }

      if(kef1>0){} else {
        $('.endsum span').html('Укажите материал фасада!'); 
        return false;
      }
      sum = (price*kef1+kef2+kef3)*(lenght/100);
      var oldSum = sum * 1.3;
      var newSum = oldSum * 0.8;

      
      $('.endsum span').fadeOut('slow', function() {
        $('.endsum span').html(newSum.toFixed()+' р.' + ' <span class="old-project-price">' + oldSum.toFixed() + ' р.</span>');
        $('.endsum span').fadeIn('slow');
      });
      $('#pricetotal').attr('value',newSum.toFixed()+' р.'); 
    }
    calc();

  </script>
