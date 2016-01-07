<!--  add new section ::
sections: sectionId, sectionName, sectionStaus, sectionLocation, sectionDesc, sectionDate, username
-->

<form class="mainSettingsForm add" action="" method="post">
    <h1>Edytuj sekcję:</h1>

    <label>Nazwa sekcji:</label>
    <input type="text" name="sectionName" placeholder="Wprowadź nazwę sekcji" value="<?php echo $recSecdata['sectionName']; ?>">

    <p>
        <label>Status sekcji:</label>
        <select name="sectionStaus">
            <?php
            if ($recSecdata['sectionStaus'] == "active") {
                echo '
                    <option value="active">Active</option>
                    <option value="disActive">Disactive</option>                    
                    ';
            } else {
                echo '
                    <option value="disActive">Disactive</option>                    
                    <option value="active">Active</option>
                    ';
            }
            ?>


        </select>
    </p>

    <p>
        <label>Lokalizacja sekcji:</label>
        <select name="sectionLocation">
            <?php
                if($recSecdata['sectionLocation'] == "Side")
                {
                    echo '
                        <option value="Side">Side</option>
                        <option value="Body">Body</option>
                          ';
                }
                else
                {
                    echo '
                        <option value="Body">Body</option>
                        <option value="Side">Side</option>
                          ';
                }
            
            ?>
            
        </select>
    </p>

    <label>Opis sekcji:</label>
    <textarea name="sectionDesc" placeholder="Wprowadź opis sekcji"><?php echo $recSecdata['sectionDesc']; ?></textarea>    
    <input class="btn-primary" type="submit" name="submit" value="Edit">    
</form>
