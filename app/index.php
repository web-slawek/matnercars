<?php
session_start();

if(!isset($_SESSION['username']))
{    
    include 'C_LoginController.php';
    die();
}
//session_destroy();

?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matnercars</title>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="resources/css/style.css" type="text/css">

        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/bootstrap.js"></script>

    </head>
    <body>
        <div class="container">
            <header>
                <img src="resources/images/logo.png" alt="logo">
                <h2>Witaj 
<?php if(isset($_SESSION['username']))
{
     echo $_SESSION['username'].",   <a href='?page=logout'>Wyloguj się</a>";
}

?>
                </h2>
            </header>
            <div class="clear"></div>
            <div class="contents">
                <aside>
                    <nav>
                        <a class="btn-danger active" href="index.php">Strona główna</a>
                        <a class="btn-danger" href="?page=MainSettings">Ustawienia</a>
                        <a class="btn-danger" href="?page=Sections">Sekcje</a>
                        <a class="btn-danger" href="?page=Pages">Strony</a>
                        <a class="btn-danger" href="?page=Library">Galeria</a>
                        <a class="btn-danger" href="?page=Banners">Bannery</a>
                    </nav>
                </aside>
                <section id="page">
                    <?php
                    if (@$_GET['page']) {
                        $url = "controllers/C_".$_GET['page'] . ".php";
                        if (is_file($url)) {
                            include $url;
                        } else {
                            echo 'requested file is not found !';
                        }
                    } else {
                        include './main.php';
                    }
                    ?>
                </section>
            </div>
            <div class="clear"></div>
            <footer>
                <p>Wszystkie prawa zastrzeżone - Matnercars 2015</p>
            </footer>
        </div>
    </body>
</html>
