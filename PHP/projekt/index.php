<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="AI Project">
    <meta name="keywords" content="html, css, mysql, php">
    <meta name="author" content="Albert Ząbkiewicz">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Free shitpost website</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Coda+Caption:wght@800&family=Jaldi&family=Russo+One&display=swap" rel="stylesheet">
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/tinymce.js"></script>
</head>
<body>
    <?php
        session_start();
        if(isset($_SESSION['user'])){
            echo '<style>
                    .signup{ display: none }
                    .signin{ display: none }
                    .logout{ display: block }
                 </style>';
        }
    ?>
    <header>
        <h3>PhpMyAnim</h3>
        <label for="btn-register">
            <input id="btn-register" type="radio" name="register" />
            <div class="popup">
                <form action="register.php" method="post">
                    Name: <input type="text" name="user_name" required><br>
                    Login: <input type="text" name="user_login" required minlength="3"><br>
                    Password: <input type="password" name="user_password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
                    <input type="submit" name="registersub" value="Sign Up"><br>
                </form>
                <label for="btn-register-close">
                    <input id="btn-register-close" type="radio" name="register" />
                    <span>X</span>
                </label>
            </div>
            <a class="signup">Sign Up</a>
        </label>
        <label for="btn-login">
            <input id="btn-login" type="radio" name="login" />
            <div class="popup">
                <form action="login.php" method="post">
                    Login: <input type="text" name="user_login" required><br>
                    Password: <input type="password" name="user_password" required><br>
                    <input type="submit" name="loginsub" value="Sign In"><br>
                </form>
                <label for="btn-login-close">
                    <input id="btn-login-close" type="radio" name="login" />
                    <span>X</span>
                </label>
            </div>
            <a class="signin">Sign In</a>
        </label>
        <form class="logout" action="logout.php" method="post">
            <input id="btn-logout" type="submit" name="logout" value="Log out">
        </form>
    </header>
    <main>
        <form method="post" class="postmake">
            <!-- <textarea id="mce"></textarea> -->
        </form>
        <div class="article">
            <div class="head">
                <div class="post_img"></div>
                <h1 class="post_author">Krystian Wasylik</h1>
                <svg class="post_heart" viewBox="0 0 32 29.6">
                    <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
	                c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                </svg> 
            </div>
            <div class="content">
                <h2 class="post_title">Tytuł fajnego posta</h2>
                <p class="post_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, magni. Consectetur maiores esse omnis molestias distinctio consequatur perferendis error. Sit unde velit nesciunt nostrum ea fugiat iste doloremque, non nihil deleniti blanditiis repellat id provident aliquam asperiores dolore eveniet cupiditate porro fugit. Nisi, quasi ullam magnam magni assumenda maiores facilis debitis dolores odit necessitatibus. Consequuntur odit voluptate tempora autem nisi saepe dolor possimus, aliquid tempore, fuga necessitatibus odio dicta nobis pariatur ipsum excepturi quis. Sed in nemo nisi ex error sint amet asperiores inventore impedit perferendis tempore facilis est dolorem corrupti eveniet esse ab, quis quod. Blanditiis tempore commodi obcaecati.</p>
                <div class="post_date">09.11.2021</div>
            </div>
        </div>
        <div class="article">
            <div class="head">
                <div class="post_img"></div>
                <h1 class="post_author">Krystian Wasylik</h1>
                <svg class="post_heart" viewBox="0 0 32 29.6">
                    <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
	                c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                </svg> 
            </div>
            <div class="content">
                <h2 class="post_title">Tytuł fajnego posta</h2>
                <p class="post_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, magni. Consectetur maiores esse omnis molestias distinctio consequatur perferendis error. Sit unde velit nesciunt nostrum ea fugiat iste doloremque, non nihil deleniti blanditiis repellat id provident aliquam asperiores dolore eveniet cupiditate porro fugit. Nisi, quasi ullam magnam magni assumenda maiores facilis debitis dolores odit necessitatibus. Consequuntur odit voluptate tempora autem nisi saepe dolor possimus, aliquid tempore, fuga necessitatibus odio dicta nobis pariatur ipsum excepturi quis. Sed in nemo nisi ex error sint amet asperiores inventore impedit perferendis tempore facilis est dolorem corrupti eveniet esse ab, quis quod. Blanditiis tempore commodi obcaecati.</p>
                <div class="post_date">09.11.2021</div>
            </div>
        </div>
        <div class="article">
            <div class="head">
                <div class="post_img"></div>
                <h1 class="post_author">Krystian Wasylik</h1>
                <svg class="post_heart" viewBox="0 0 32 29.6">
                    <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
	                c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                </svg> 
            </div>
            <div class="content">
                <h2 class="post_title">Tytuł fajnego posta</h2>
                <p class="post_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, magni. Consectetur maiores esse omnis molestias distinctio consequatur perferendis error. Sit unde velit nesciunt nostrum ea fugiat iste doloremque, non nihil deleniti blanditiis repellat id provident aliquam asperiores dolore eveniet cupiditate porro fugit. Nisi, quasi ullam magnam magni assumenda maiores facilis debitis dolores odit necessitatibus. Consequuntur odit voluptate tempora autem nisi saepe dolor possimus, aliquid tempore, fuga necessitatibus odio dicta nobis pariatur ipsum excepturi quis. Sed in nemo nisi ex error sint amet asperiores inventore impedit perferendis tempore facilis est dolorem corrupti eveniet esse ab, quis quod. Blanditiis tempore commodi obcaecati.</p>
                <div class="post_date">09.11.2021</div>
            </div>
        </div>
        <div class="article">
            <div class="head">
                <div class="post_img"></div>
                <h1 class="post_author">Krystian Wasylik</h1>
                <svg class="post_heart" viewBox="0 0 32 29.6">
                    <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
	                c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                </svg> 
            </div>
            <div class="content">
                <h2 class="post_title">Tytuł fajnego posta</h2>
                <p class="post_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, magni. Consectetur maiores esse omnis molestias distinctio consequatur perferendis error. Sit unde velit nesciunt nostrum ea fugiat iste doloremque, non nihil deleniti blanditiis repellat id provident aliquam asperiores dolore eveniet cupiditate porro fugit. Nisi, quasi ullam magnam magni assumenda maiores facilis debitis dolores odit necessitatibus. Consequuntur odit voluptate tempora autem nisi saepe dolor possimus, aliquid tempore, fuga necessitatibus odio dicta nobis pariatur ipsum excepturi quis. Sed in nemo nisi ex error sint amet asperiores inventore impedit perferendis tempore facilis est dolorem corrupti eveniet esse ab, quis quod. Blanditiis tempore commodi obcaecati.</p>
                <div class="post_date">09.11.2021</div>
            </div>
        </div>
    </main>
    <footer></footer>
    <span class="error">
        <?php
            if(isset($_GET['status'])){
                echo "<style>.error{ display: block; animation: fade 2s linear 2s; }</style>";
                switch ($_GET['status']) {
                    case 'logerror':
                        echo "Invalid input";
                        break;
                    case 'regerror':
                        echo "Login is taken";
                        break;
                    case 'regok':
                        echo "Registration succesful. You can log in now";
                        break;
                    case 'dberror':
                        echo "Database error";
                        break;
                    case 'empty':
                        echo "Empty fields";
                        break;
                }
            }
        ?>
    </span>
</body>
</html>