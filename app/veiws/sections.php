<!--  Sections ::
sections: sectionId, sectionName, sectionStaus, sectionLocation, sectionDesc, sectionDate, username
-->

<table class="table table-hover table-bordered sectionTable">
    <tr class="danger">
        <th>Id</th>
        <th>Nazwa sekcji</th>
        <th>Staus</th>
        <th>Lokalizacja</th>
        <th>Opis sekcji</th>
        <th>Data</th>
        <th>Autor</th>
        <th>Edycja</th>
    </tr>
    <?php
    for ($i = 0; $i < count($SecDataDisplay); $i++) {
        echo "            
                <tr>
                    <td>{$SecDataDisplay[$i]['id']}</td>
                    <td>{$SecDataDisplay[$i]['sectionName']}</td>
                    <td>{$SecDataDisplay[$i]['sectionStaus']}</td>
                    <td>{$SecDataDisplay[$i]['sectionLocation']}</td>
                    <td>{$SecDataDisplay[$i]['sectionDesc']}</td>
                    <td>{$SecDataDisplay[$i]['sectionDate']}</td>
                    <td>{$SecDataDisplay[$i]['username']}</td>
                    <td>
                        <a href='?page=Sections&action=delete&id={$SecDataDisplay[$i]['id']}'><img src='resources/images/delete.png'></a>
                        <a href='?page=Sections&action=edit&id={$SecDataDisplay[$i]['id']}'><img src='resources/images/edit.png'></a>
                    </td>
                </tr>
            ";
        }
    ?>
    
</table>