<!DOCTYPE html>
<html dir="" lang="<?php echo $lang; ?>">
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"> 

<script async src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body class="">
<style>
#menu{

}
</style>
<?php if ($categories) { ?>

  <nav id="menu" class="navbar menu">
    <div class="navbar-header"><span id="category" class="visible-xs"></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        
        <?php foreach ($categories as $keyy => $category) {  ?>
        <?php if ($category['children']) { ?>

          <?php foreach ($category['children'] as $key => $children) { if($key=='') continue;?>

          <li class="dropdown"><a href="<?php //echo $children['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $key; ?></a>
            <div class="dropdown-menu">
            <div class="v"></div>
              <div class="dropdown-inner">
                <?php if(count($children)>10){ ?>
                <?php foreach (array_chunk($children, ceil(count($children) / 2)) as $child) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($child as $chil) { ?>
                    <li><a href="<?php echo $chil['href']; ?>"><?php echo $chil['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                <?php } ?>
                <?php } else { ?>

                <ul class="list-unstyled">
                  <?php foreach ($children as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                  <?php if($key=='Кухни') { ?>
                  <li><a href="katalog/">Каталог кухонь</a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
            </div>
              
          </li>
          <?php } ?>
        <?php } elseif ($category['children2']) {  ?>

          <li class="dropdown h1200"><a href="<?php //echo $children['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?=$category['name'];?></a>
            <div class="dropdown-menu">
            <div class="v"></div>
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <?php foreach ($category['children2'] as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </div>
              
          </li>
        <?php } ?>
        <?php } ?>
          <li class="h1200"><a href="https://mebel-bruno.ru/">ШКАФЫ</a></li>
          <li class="tel2"><a class="roistatphone" onclick="window.location = $(this).attr('href');" href="tel:84993471227">8 (499) 347-12-27</a></li>
      </ul>

    </div>  
  </nav>

<?php } ?>

<script>
  $(function(){
    
    $('.dropdown').on('show.bs.dropdown', function(e){
        $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
    
    });
    $('.dropdown').on('hide.bs.dropdown', function(e){
    
        e.preventDefault();
  var self = this;
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp(400, function(){
    
            $(self).removeClass('open');
            $(self).find('.dropdown-toggle').attr('aria-expanded','false');
        });
    });
});
</script>
</body>
</html>