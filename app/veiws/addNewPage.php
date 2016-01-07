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
    <h1>Dodaj nową stronę:</h1>
<!--<div id="editor">
    <h1>Hello world!</h1>
    <p>I'm an instance of <a href="http://ckeditor.com">CKEditor</a>.</p>
</div>-->
    <label>Nowa nazwa strony</label>
    <input type="text" name="page_name" placeholder="Wprowadź nazwę strony">

<!--    <label>The Content</label>-->
<!--    <textarea name="page_content" placeholder="plese write the page content here"></textarea>-->
    <textarea name="page_content" placeholder="Wprowadź treść strony" id="editor"></textarea>
    <p>
        <label>Status strony</label>
        <select name="page_status">
            <option value="active">Active</option>
            <option value="disActive">Disactive</option>
        </select>
    </p>
    <p>
        <label>Sekcja strony</label>
        <select name="sectionId">
            <option value="active">Wybierz nazwę sekcji: </option>
            <?php
            for ($i = 0; $i < count($PageDataDisplay); $i++) {
                //$SecDataDisplay[$i]['sectionName'];
                echo "<option value='{$PageDataDisplay[$i]['id']}'>{$PageDataDisplay[$i]['sectionName']}</option>";
            }
            ?>
        </select>
    </p>
    <p>
        <label>Obrazek strony</label>
        <input type="file" name="page_image[]" multiple="" />    
    </p>
    <input type="hidden" name="page_date" value="<?php echo date('d-m-y'); ?>" >

    <input type="submit" name="submit" value="Add">           
</form>

<script>
	initSample();
</script>