<form action="" method="post" class="mainSettingsForm">  
    <label>Nazwa strony:</label>
    <input type="text" name="site_name" value="<?php echo $displayData['site_name'];?>">
    <label>Link strony:</label>
    <input type="text" name="site_url" value="<?php echo $displayData['site_url'];?>">    
    <label>Email</label>
    <input type="email" name="site_email" value="<?php echo $displayData['site_email'];?>">
    <div style="clear: both"></div>
    <label>Opis strony</label>
    <textarea name="site_dcsc"><?php echo $displayData['site_dcsc'];?></textarea>
    <div style="clear: both"></div>
    <label>Tagi</label>
    <textarea name="site_tags"><?php echo $displayData['site_tags'];?></textarea>
    <div style="clear: both"></div>
    <label>Home panel notes</label>
    <textarea name="site_homepanel"><?php echo $displayData['site_homepanel'];?></textarea>
    <div style="clear: both"></div>
    <label>Facebook link</label>
    <input type="text" name="fb" value="<?php echo $displayData['fb'];?>">
    <div style="clear: both"></div>
    <label>Twitter link</label>
    <input type="text" name="tw" value="<?php echo $displayData['tw'];?>">
    <div style="clear: both"></div>
    <label>Youtube link</label>
    <input type="text" name="yt" value="<?php echo $displayData['yt'];?>">
    <div style="clear: both"></div>
    <label>RSS link</label>
    <input type="text" name="rss" value="<?php echo $displayData['rss'];?>">    
    <input type="hidden" name="username" value="<?php echo $_SESSION['username'];?>">
    
    <input class="btn-lg btn-primary" type="submit" value="Update" name="submit">
    
</form>
