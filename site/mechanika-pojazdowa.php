<!--<li class="slideanim"></li>-->

<?php
$mechanika = 'mechanika-pojazdowa';

$tablename = "pages";
$displaypages = new Display($tablename);
$PagesDataDisplay = $displaypages->getSectionByName($strona);

//var_dump($PagesDataDisplay);

echo '<section class="mechanika">
      <h2>Mechanika pojazdowa</h2>
      <section class="container">
      <ul>';
for ($i = 0; $i < count($PagesDataDisplay); $i++) {
    echo ' 
            <li>
                <img src="app/'.$PagesDataDisplay[$i]['page_image'].'" alt=""/>
                <h4>' . $PagesDataDisplay[$i]['page_name'] . '</h4>
                <p>' . $PagesDataDisplay[$i]['page_content'] . '</p>
            </li>
        ';
}
echo '</ul>'
   . '</section>'
   . '</section>';

$displaymechanika = new Display($tablename);

$MechanikaDisplay = $displaymechanika->getSectionByName($mechanika);

?>
<!--
<section class="mechanika">
    <h2>Mechanika pojazdowa</h2>
    <div class="container">   
        <ul>
            <li>
                <img src="site/img/ikony/naprawy.png" alt=""/>
                <h4>
                    Remonty silników
                </h4>
                <p>
                    Podejmujemy się remontów generalnych nawet najbardziej skomplikowanych i zaawansowanych technicznie silników zarówno benzynowych jaki diesli. Dajemy nowe życie najbardzie wyekspoatowanym jednostkom napędowym, co pozwoli ich właścicielom cieszyć się bezawaryjną pracą swojego pojazdu.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/klucze.png" alt=""/>
                <h4>
                    Naprawy bieżące
                </h4>
                <p>
                    W przypadku zauważenia jakiejkolwiek usterki w samochodzie zalecamy możliwie szybkie usunięcie ich u wykwalifikowanych mechaników. Taki nawyk wpływa pozytywnie nie tylko na żywotność auta, ale również na niższe spalanie paliwa co bezpośrednio wpływa na oszczędności oraz bezpieczeństwo jazdy.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/olej.png" alt=""/>
                <h4>
                    Wymiany eksploatacyjne
                </h4>
                <p>
                    Wykonujemy kompleksowe przeglądy z wymianą elementów eksploatacyjnych takich jak: oleje, filtry powietrza, oleju, paliwa, przeciwpyłkowy, wymiany świec zapłonowych, płynów chłodniczych i hamulcowych. Wykonywanie przeglądów okresowych zapewnia trwałość oraz bezawaryjną eksploatację.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/zawieszenie.png" alt=""/>
                <h4>
                    Remonty zawieszeń
                </h4>
                <p>
                    Oferujemy kompleksowe remonty zawieszeń. Od diagnostyki, poprzez wymontowanie zawieszeń, wymianę lub regenerację zużytego lub wadliwego elementu, aż po złożenie i testowanie poprawności działania wyremontowanego zawieszenia.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/hamulce.png" alt=""/>
                <h4>
                    Serwis układów hamulcowych
                </h4>
                <p>
                    Sprawny układ hamulcowy i zawieszenie samochodu to podstawowe elementy wpływające na bezpieczeństwo jazdy. Tutaj nie ma mowy o półśrodkach, na tych układach nie można oszczędzać!
                </p>
            </li>
            <li>
                <img src="site/img/ikony/czesci.png" alt=""/>
                <h4>
                    Naprawy układów napędowych
                </h4>
                <p>
                    Remontujemy lub wymieniamy skrzynie biegów, mosty napędowe, dyferencjały, także w pojazdach wyposażonych w napęd na obie osie.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/clima.png" alt=""/>
                <h4>
                    Serwis klimatyzacji
                </h4>
                <p>
                    Przeprowadzamy kompleksowe przeglądy oraz naprawy klimatyzacji samochodowych, wymiany filtrów klimatyzacji, sprawdzanie szczelność układu, uzupełnianie czynnika chłodzącego R-134, wymiany lub regeneracja uszkodzonych elementów.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/turbo.png" alt=""/>
                <h4>
                    Regeneracja lub wymiana turbo
                </h4>
                <p>
                    W naszej ofercie znajdują się nowe lub regenerowane turbosprężarki. Zapewniamy wymianę oraz serwis i przeglądy turbin. Sprawny układ doładowania to moc w Twoim aucie!
                </p>
            </li>
            <li>
                <img src="site/img/ikony/diagnostyka.png" alt=""/>
                <h4>
                    Diagnostyka komputerowa
                </h4>
                <p>
                    Wykonujemy: testy, adaptacje, kodowanie modułów, kasowanie błędów, itp.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/wulkanizacja.png" alt=""/>
                <h4>
                    Wulkanizacja
                </h4>
                <p>
                    Oferujemy wymianę opon, wyważanie kół oraz na życzenie klienta możemy zamówić nowe opony w odpowiednio dobranym rozmiarze.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/akumulator.png" alt=""/>
                <h4>
                    Wymiany akumulatorów
                </h4>
                <p>
                    Dobierzemy właściwy akumulator do Państwa samochodu, przywieziemy, zamontujemy (w większości przypadków), sprawdzimy prąd ładowania oraz jego upływność w trakcie postoju auta, jeśli zajdzie potrzeba przeprowadzimy adaptację nowego akumulatora, odbierzemy zużyty akumulator.
                </p>
            </li>
            <li>
                <img src="site/img/ikony/tlumnik.png" alt=""/>
                <h4>
                    Wymiana tłumików
                </h4>
                <p>
                    Wyemieniamy uszkodzone elementy tłumików lub całe układy zależnie od indywidualnego stanu. Dobry tłumnik to zarówno moc Twojego samochodu jak i cicha podróż.
                </p>
            </li>
                        <li>
                            <img src="content/img/ikony/pomoc24.png" alt=""/>
                            <h4>
                                Pomoc drogowa 24/h
                            </h4>
                            <p>
                                Zapewniamy naszym klientom całodobową, mobilną pomoc na drodze. Gdy braknie paliwa, przebijesz oponę lub Twój samochód odmówi współpracy, zadzwoń do nas a na pewno coś na to zaradzimy.
                            </p>
                        </li>
        </ul>
    </div>
</section>-->
<section id="cd-google-map">
    <div id="google-container"></div>
    <div id="cd-zoom-in"></div>
    <div id="cd-zoom-out"></div>
    <address>ul. Krośnieńska 110, 38-457 Świerzowa Polska</address> 
</section>
