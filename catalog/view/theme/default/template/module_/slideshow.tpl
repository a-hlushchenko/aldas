<style>
.camera-title{font-family:'Candara';font-size:55px;color:#fffc;width:50%;line-height:50px;position:relative;margin-top:5%;padding-bottom:1.5%;margin-bottom:2.5%;}
.camera-title:after{content:'';position:absolute;bottom:0;left:0;width:83%;height:0;border-bottom:1px solid #fff;}
.camera-title1{font-family:'Times New Roman';font-size:18px;color:#fffc;width:50%;margin-bottom:2.5%;line-height:25px}
.camera-button{background:#478c83;font-family:'Candara';font-size:20px;padding:20px 84px;border-radius:10px;color:#fff;line-height:20px;display:inline-block;}
.camera-button:hover{color:#fff;background:#47aa9d;text-decoration:none;}
.camera_prev,.camera_next{display:none;}
@-webkit-keyframes imageAnimation {
 100%{
  -webkit-transform:scale(1.05)  translateX(-30px);
  transform:scale(1.05)  translateX(-30px);
  -webkit-animation-timing-function: ease-in;
  animation-timing-function: ease-in;
 }}
@keyframes imageAnimation {
 100%{
  -webkit-transform:scale(1.05)  translateX(-30px);
  transform:scale(1.05)  translateX(-30px);
  -webkit-animation-timing-function: ease-in;
  animation-timing-function: ease-in;
 }
}
.cameracurrent img{ animation:imageAnimation 8s ease infinite 0s }
@media (min-width: 120px){
  .camera-title{width:100%;}
}
@media (min-width: 768px){
.camera_pag {width: 750px;}
}
@media (min-width: 992px){
.camera_pag {width: 970px;}
.camera-title{width:70%;}
}
@media (min-width: 1200px){
.camera_pag {width: 1170px;}
}
.camera_pag {padding-right:20px;padding-left:20px;margin-right:auto;margin-left:auto;}
</style>
<div class="slider"> 
    <div class="camera_wrap">
        <?php foreach ($banners as $banner) { ?>
        <div data-src="<?php echo $banner['image']; ?>">
            <div class="camera-caption fadeIn">
            	<div class="container">
	                <div class="camera-title"><?php echo $banner['title']; ?></div>
	                <div class="camera-title1"><?php echo $banner['title2']; ?></div>
	                <!-- <div class="camera-text"><?php echo $banner['description']; ?></div> -->
	                <a href="<?php echo $banner['link']; ?>" class="camera-button">ПОДРОБНЕЕ</a>
	            </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
<script type="text/javascript"><!--
  $(document).ready(function(){
      //jQuery('.camera_wrap').camera({fx: 'curtainSliceLeft',height: '54.02%'});              
      jQuery('.camera_wrap').camera({
      	fx: 'curtainSliceLeft',
      	pagination: true,
      	Navigation: false,
        height:"505px",
      	maxHeight:"505px",
      	maxwidth:"100%",
      	time: 6000,/*
      	transPeriod: 100*/
      });              
  });
</script>
