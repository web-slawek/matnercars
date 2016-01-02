<?php
include 'includes/functions.php';
?>

<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="<?php echo $siteInfo['site_dcsc']; ?>" />
        <meta name="keywords" content="<?php echo $siteInfo['site_tags']; ?>" />
        <title><?php echo $siteInfo['site_name']; ?></title>

        <link href="site/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />

        <!--Dołączenie skrytpu javascript biblioteki jquery -->
        <script src="site/js/jquery-1.11.2.min.js" type="text/javascript"></script>
        <script src="site/js/jquery.bxslider.min.js" type="text/javascript"></script>
        <script src="site/js/parallax.js" type="text/javascript"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyChfD3tCnOOVszyYhg7rknb0BjLtqVhCiA "></script>
        <script src="site/js/scripts.js" type="text/javascript"></script>

        <link href="site/css/common.css" rel="stylesheet" type="text/css"/>

        <link href="site/css/bootstrap/custom-dropdown-menu.css" rel="stylesheet" type="text/css"/>
        <link href="site/css/bootstrap/bootstrap-dialog.min.css" rel="stylesheet" type="text/css"/>
        <link href="site/css/jquery.bxslider.css" rel="stylesheet" type="text/css"/>
        <link href="site/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="site/css/responsive.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="container">
            <div class="logo"><a href="/"><img src="site/img/matner-logo.png" alt=""/></a></div>
            <div class="contact-wrap">
                <div class="fast-contact">
                    <h1>694 880 525</h1>
                    <h1>668 788 630</h1>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">          
                    <a class="navbar-brand" href="o-firmie">O firmie</a>
                    <a class="navbar-brand" href="mechanika-pojazdowa">Mechanika pojazdowa</a>
                    <a class="navbar-brand" href="tuning">Tuning</a>
                    <a class="navbar-brand" href="pomoc-drogowa">Pomoc drogowa</a>
                    <a class="navbar-brand" href="kontakt">Kontakt</a>
                </div>
            </div>
        </nav>
        <div class="wrapper">

            <?php
            if (isset($_GET['action'])) {

                $strona = $_GET['action'];

                switch ($strona) {
                    case 'index':
                        include 'site/index.php';
                        break;
                    case $strona:
                        if (file_exists('site/' . $strona . '.php')) {
                            include ('site/' . $strona . '.php');
                        } else {
                            include ('site/body.php');
                        }
                        break;
                    default:
                        include 'site/slider.php';
                }
            } else {
                include 'site/index.php';
            }
            ?>
        </div>

        <footer class="footer-wrap">
            <div class="container">
                <div class="footer-left">
                    <ul>
                        <li><a href="o-firmie">O firmie</a></li>
                        <li><a href="mechanika-pojazdowa">Mechanika pojazdowa</a></li>
                        <li><a href="tuning">Tuning</a></li>
                        <li><a href="pomoc-drogowa">Pomoc drogowa</a></li>
                        <li><a href="kontakt">Kontakt</a></li>
                    </ul>
                    <div class="logo-footer">
                        <a href="#">
                            <img src="site/img/matner-logo.png" alt=""/>
                        </a>
                    </div>
                </div>
                <div class="footer-right">               
                    <div class="mail"><span></span><a href="#">serwis@matnercars.pl</a></div>
                    <div class="telefon"><span></span>694 880 525 | 668 788 630</div>
                    <div class="facebook"><span></span><a href="#">Znajdź nas na Facebooku</a></div>
                    <div class="copy"><span></span>Matnercars 2015. Wszystkie prawa zastrzezone.</div>
        <!--                    <p>&copy </p>-->
                </div>
            </div>
        </footer>
        <script>
            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 700) {
                        $(this).addClass("slide");
                    }
                });
            });
        </script>
    </body>
</html>