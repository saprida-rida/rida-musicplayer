<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistem Informasi Entertaiment">
    <meta name="author" content="Saprida">
    <meta name="keywords" content="Sistem, informasi, entertaiment">
    <title>Sistem Informasi Entertaiment</title>
    <link rel="stylesheet" href="<?php echo ASSET; ?>css/style.css">
</head>
<body>
    
<main>
    <header>
        <img src="header1.jpg" alt="">
    </header>

    <nav>
        <ul>
            <li>
                <a href="index.php" class="active">Home</a>
            </li>
            <li>
                <a href="index.php?page=login_form">Login</a>
            </li>
    </nav>

    <section>
        <?php
            if (isset($_GET['page'])) {
                include $_GET['page'] . ".php";
            } else {
                include "main_index.php";
            }

        ?>
    </section>

    <footer>
        Copyright &copy; 2021
    </footer>
</main>

</body>
</html>