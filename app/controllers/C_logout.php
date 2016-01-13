<?php
/*
 * Logout
 */
session_destroy();
header('Location:index.php');
?>
<script>
    location.href = "index.php";
</script>