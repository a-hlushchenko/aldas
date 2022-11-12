/************************ AJAX PRODUCT PAGE LOADER ************************/
/************************    DOMUS159@GMAIL.COM    ************************/
/********************** проверено на ocStore 2.1.x **********************/
  
var pagination_exist = true; // оставить пагинацию и добавить кнопку
var button_more = true; // наличие кнопки "загрузить ещё"
var top_offset = 100; // высота отступа от верха окна, запускающего arrow_top
var window_height = 0; // высота окна
var product_block_offset = 0; // отступ от верха окна блока, содержащего контейнеры

var product_block = ''; // определяет div, содержащий товары
var pages_count = 0; // счетчик массива ссылок пагинации
var pages = []; // массив для ссылок пагинации
var waiting = false;

function getNextProductPage(pages, pages_count) {
  //console.log('getNextProductPage');
  if (waiting) return;
    if (pages_count >= pages.length) return;
  waiting = true;
  $(product_block).parent().after('<div id="ajax_loader"><img src="catalog/view/theme/default/image/ajax-loader-horizontal.gif" /></div>');
  $.ajax({
    url:pages[pages_count], 
    type:"GET", 
    data:'',
    success:function (data) {
      $data = $(data);
      $('#ajax_loader').remove();
      if ($data) {         
        if ($data.find('.prod_grid').length > 0)    {
          $(product_block).parent().append($data.find('.prod_grid').parent().html());
          //if (product_block == '.product-grid') {$('#grid-view').trigger('click')};
        } /*else {
          $(product_block).parent().append($data.find('.product-grid').parent().html());
          if (product_block == '.product-list') {$('#list-view').trigger('click')};
        }*/
        if (pagination_exist) {
          $('.catalog-number').html($data.find('.catalog-number'));
        }
        // $('script').each(function(){eval($(this).text())});
      
        $('img[data-original]').each(function(){

          if($(this).attr('src')!='http://www.aldas.ru/image/cache/placehold-571x325..png'){
            $("img[data-original]").lazyload({
                threshold : 500,
                effect : "fadeIn"
            });
          }
        });
      }
      waiting = false;
    }
  });
  if (pages_count+1 >= pages.length) {$('.load_more').hide();};
}

function scroll_to_top() {
    $('html, body').animate({
    scrollTop: 0
  }, 300, function() {
    $('.arrow_top').remove();
  });  
}

function getProductBlock() {
    /*if ($('.product-list').length > 0) {
        product_block = '.product-list';
    } else {
        product_block = '.product-grid';
    }
    return product_block;*/
    return '.prod_grid';
}

$(document).ready(function(){ 
    window_height = $(window).height();
    product_block = getProductBlock();
    //console.log(product_block);
  var button_more_block = $('#load_more').html(); //
  var arrow_top = $('#arrow_top'); //
    if ($(product_block).length > 0) {
      
        product_block_offset = $(product_block).offset().top;
        var href = $('.catalog-number').find('li:last a').attr('href');
        $('.catalog-number').each(function(){
          //console.log(href);
        if (href) {
          TotalPages = href.substring(href.indexOf("page=")+5);
          First_index = $(this).find('li.active span').html();
          i = parseInt(First_index) + 1;
          while (i <= TotalPages) {
            pages.push(href.substring(0,href.indexOf("page=")+5) + i);
            i++;
          }
        }   
        }); 
    
      $(window).scroll(function(){
        if (arrow_top) {
          if ($(document).scrollTop() > top_offset) {
            $('#arrow_top').show();
          } else {
            $('#arrow_top').hide();
          } 
        }
      });
    
    if (button_more && href) {
      $('.catalog-number').parent().parent().before(button_more_block);
      if (!pagination_exist) {
        $('.catalog-number').parent().parent().remove();
      } else {
        $('.catalog-number').parent().parent().find('.col-sm-6.text-right').remove();
      }
      $('.load_more').click( function(event) {
        event.preventDefault();
        getNextProductPage(pages, pages_count);
        pages_count++;
      });
    } else if (href) { 
      $('.catalog-number').parent().parent().hide();
      $(window).scroll(function(){
        product_block = getProductBlock();
        product_block_height = $(product_block).parent().height();
        if (pages.length > 0) {
          if((product_block_offset+product_block_height-window_height)<($(this).scrollTop())){
            getNextProductPage(pages, pages_count);
            pages_count++;
          }
        }
      });
    }
    }
  
});