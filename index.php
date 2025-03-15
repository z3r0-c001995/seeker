<?php 
include 'db.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seek</title>
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.js"></script> <!-- JavaScript file -->
</head>
<body>
    <header>
        <div class="logo">Logo</div>
        <nav>
            <a href="#">home</a>
            <a href="#">services</a>
            <a href="#">contact</a>
        </nav>
        <a href="login.php" class="login-btn">Login</a>
    </header>
    
    <main>
        <form id="search-form">
            <input type="text" name="query" id="search-input" placeholder="Who do you seek?" autocomplete="off">
            <button type="submit">Seek</button>
        </form>
        
        <section class="results">
            <p>Start typing to search...</p>
        </section>
    </main>
    
    <footer>
        <p>seek &copy;2025</p>
    </footer>
</body>
</html>
