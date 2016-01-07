<!--  add new section ::
sections: sectionId, sectionName, sectionStaus, sectionLocation, sectionDesc, sectionDate, username
-->

<form class="mainSettingsForm add" action="" method="post">
    <h1>Dodaj nową sekcję:</h1>
    
    <label>Nazwa sekcji:</label>
    <input type="text" name="sectionName" placeholder="Wprowadź nazwę sekcji">
    
    <p>
    <label>Status sekcji:</label>
    <select name="sectionStaus">
        <option value="active">Active</option>
        <option value="disActive">Disactive</option>
    </select>
    </p>
    
    <p>
    <label>Lokalizacja sekcji:</label>
    <select name="sectionLocation">
        <option value="Side">Side</option>
        <option value="Body">Body</option>
    </select>
    </p>
    
    <label>Opis sekcji:</label>
    <textarea name="sectionDesc" placeholder="Wprowadź opis sekcji"></textarea>    
    <input class="btn-primary" type="submit" name="submit" value="Add">    
</form>
