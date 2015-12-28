<?php
// display exist banners    
$tablename = "banners";
$type = 'slider';

$displaybanner = new Display($tablename);
$BannerDataDisplay = $displaybanner->getAllDataByStatusType($type);
//`id`, `bannerName`, `bannerDesc`, `bannerUrl`, `status`, `createdBy`, `CreatedDate`

echo '<ul class="bxslider">';
for($i =0; $i < count($BannerDataDisplay); $i++)
{
    echo '<li><img src="app/'.$BannerDataDisplay[$i]['bannerUrl'].'" /></li>';
}
echo '</ul>';

echo '<div id="bx-pager">';
for($i =0; $i < count($BannerDataDisplay); $i++)
{
    echo '<a data-slide-index='. $i .'>'.$BannerDataDisplay[$i]['bannerDesc'].'</a>';
}
echo '</div>';

?>




<?php
// display exist banners    
$tablename = "banners";
$type = 'uslugi';

$displaybanner = new Display($tablename);
$BannerDataDisplay = $displaybanner->getAllDataByStatusType($type);
//`id`, `bannerName`, `bannerDesc`, `bannerUrl`, `status`, `createdBy`, `CreatedDate`

echo '<section class="main">
      <ul class="ch-grid">';

for($i =0; $i < count($BannerDataDisplay); $i++)
{
    echo '<li>'
         . '<div class="ch-item">'
            . '<img src="app/'.$BannerDataDisplay[$i]['bannerUrl'].'" />'
            . '<div class="ch-info">'
              . '<h3>'.$BannerDataDisplay[$i]['bannerDesc'].'</h3>'
              
            . '</div>'
         .'</div>'
         .'</li>';
}

echo '</ul>
     <div class="pozostale-wrap"><a class="pozostale-uslugi" href="mechanika-pojazdowa">Zobacz pozostałe usługi</a></div>
     </section>';
?>

<section id="cd-google-map">
    <div id="google-container"></div>
    <div id="cd-zoom-in"></div>
    <div id="cd-zoom-out"></div>
    <address>ul. Krośnieńska 110, 38-457 Świerzowa Polska</address> 
</section>

<section class="module parallax parallax-1">
        <p>MATNERCARS <br />Twój serwis samochodowy</p>
</section>