<?php
$oferujemy = 'oferujemy';

$tablename = "pages";
$displaypages = new Display($tablename);
$PagesDataDisplay = $displaypages->getSectionByName($strona);

//var_dump($PagesDataDisplay);

for ($i = 0; $i < count($PagesDataDisplay); $i++) {
    echo ' 
            <section id="banner">
                <h2>' . $PagesDataDisplay[$i]['page_name'] . '</h2>
                <p>' . $PagesDataDisplay[$i]['page_content'] . '</p>
           </section>
        ';
}

$displayoferta = new Display($tablename);

$OfertaDisplay = $displayoferta->getSectionByName($oferujemy);

?>


<div class="firma">
    <div class="title">Co warto wiedziec ?</div>
    <div class="container">
        <div class="left-menu col-md-3">
            <h3>Oferujemy:</h3>
            <ul>
                <?php
            for ($i = 0; $i < count($OfertaDisplay); $i++) {
                echo ' 
                <li class="list-group-item">
                    <span id="tresc-'. $OfertaDisplay[$i]['id'] .'">' . $OfertaDisplay[$i]['page_name'] . '</span>
                </li>
                ';
            }
            ?> 
            </ul>
        </div>
        <div class="right-content col-md-9">
            <?php
            for ($i = 0; $i < count($OfertaDisplay); $i++) {
                echo '       
            <div class="tresc-'. $OfertaDisplay[$i]['id'] .'">
                <h3>' . $OfertaDisplay[$i]['page_name'] . '</h3>
                <p>' . $OfertaDisplay[$i]['page_content'] . '</p>
            </div>
            ';
            }
            ?>  
        </div>
    </div>
</div>
<section id="cd-google-map">
    <div id="google-container"></div>
    <div id="cd-zoom-in"></div>
    <div id="cd-zoom-out"></div>
    <address>ul. Krośnieńska 110, 38-457 Świerzowa Polska</address> 
</section>