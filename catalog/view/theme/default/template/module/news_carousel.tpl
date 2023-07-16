<div class="bl4">
      <div class="container">

        <div class="h2 dflex">
          <h2 class="before_green">Наше портфолио с отзывами клиентов</h2>
          <a href="/otzyvy/" class="btn arrow">Все отзывы</a>
        </div>
        <div class="swiper bl4_wrapper">
          <div class="swiper-wrapper">
            <?php foreach ($articles as $article) { ?>
              <a class="swiper-slide" href="<?php echo $article['link']; ?>" alt="<?php echo $article['title']; ?>" >
                <img class="quote" src="images/new/quote.svg" alt="quote">
                <img class="image" src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>"/>
                <div class="info">
                  <!-- <div class="author">Юлия М.</div> -->
                  <div class="date"></div>
                </div>
                <div class="name"><?php echo $article['title']; ?></div>
                <div class="text"><?php echo $article['description']; ?></div>
            </a>
            <?php } ?>
            
          </div>
          <div class="button-next"></div>
          <div class="button-prev"></div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </div>

<script>
 document.addEventListener('DOMContentLoaded', function(){

  var swiper = new Swiper(".bl4_wrapper", {
        /*pagination: {
          el: ".swiper-pagination",
        },*/
        slidesPerView: 2,
            spaceBetween: 24,
        pagination: {
              el: ".swiper-pagination",
          clickable: true,
            },
        navigation: {
          nextEl: ".button-next",
          prevEl: ".button-prev",
        },
		
		    breakpoints: {
          '440': {
            slidesPerView: 2,
            spaceBetween: 20,
          },
          '768': {
            slidesPerView: 3,
            spaceBetween: 40,
          },
          '1000': {
            slidesPerView: 4,
            spaceBetween: 50,
          },
        },
		  
    });

});
</script>