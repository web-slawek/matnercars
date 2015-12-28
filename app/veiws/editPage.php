<!--
 `pages` :: `id`, `page_name`, `page_content`, `page_status`, `page_visits`, `sectionId`, `page_image`, `page_date`, `createdBy`
-->
<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<script>
    tinymce.init({
        selector: '#mytextarea'
    });
</script>
<form class="mainSettingsForm add newPage" action="" method="post" enctype="multipart/form-data">
    <h1>Edit Page:</h1>

    <label>Page Name</label>
    <input type="text" name="page_name" placeholder="plese write the page name here" value="<?php echo $pagedata['page_name'];?>">
    
    <label>The Content</label>
    <textarea id="mytextarea" name="page_content" placeholder="plese write the page content here"><?php echo $pagedata['page_content'];?></textarea>
    
    <p>
    <label>Page Status</label>
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
    <label>Page Section</label>
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
    <label>Page Image</label>
    <input type="file" name="page_image[]" multiple="" />    
    <img src="<?php echo $pagedata['page_image'];?>">
    </p>
        
    <input type="submit" name="submit" value="Edit">           
     
</form>