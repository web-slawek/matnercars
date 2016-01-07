<!--
 `pages` :: `id`, `page_name`, `page_content`, `page_status`, `page_visits`, `sectionId`, `page_image`, `page_date`, `createdBy`
-->
<!--<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<script>
    tinymce.init({
        selector: '#mytextarea'
    });
</script>-->

<script src="resources/ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="resources/ckeditor/sample.js" type="text/javascript"></script>

<form class="mainSettingsForm add newPage" action="" method="post" enctype="multipart/form-data">
    <h1>Edytuj stronę:</h1>

    <label>Nazwa strony:</label>
    <input type="text" name="page_name" placeholder="Wprowadź nazwę strony" value="<?php echo $pagedata['page_name'];?>">
    
<!--    <label>Treść strony:</label>-->
    <textarea id="editor" name="page_content" placeholder="Wprowadź treść strony"><?php echo $pagedata['page_content'];?></textarea>
    
    <p>
    <label>Status strony:</label>
    <?php
    if($pagedata['page_status'] == "active")
    {
        echo '
            <select name="page_status">
                <option value="active">Active</option>
                <option value="disActive">Disactive</option>
            </select>
';        
    }
    else
    {
        echo '
            <select name="page_status">                
                <option value="disActive">Disactive</option>
                <option value="active">Active</option>
            </select>
'; 
    }
    
    ?>
    
    </p>
    
    <p>
    <label>Sekcja strony:</label>
    <select name="sectionId">
        <option value="active">Choose a Section Name: </option>
        <?php
        for ($i = 0; $i < count($PageDataDisplay); $i++)
        {
            //$SecDataDisplay[$i]['sectionName'];
            echo "<option value='{$PageDataDisplay[$i]['id']}'>{$PageDataDisplay[$i]['sectionName']}</option>";
        }
        ?>
    </select>
    </p>
    
    <p>
    <label>Obrazek strony:</label>
    <input type="file" name="page_image[]" multiple="" />    
    <img src="<?php echo $pagedata['page_image'];?>">
    </p>
        
    <input type="submit" name="submit" value="Edit">           
     
</form>

<script>
	initSample();
</script>