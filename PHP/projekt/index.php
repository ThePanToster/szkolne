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
    <link rel="stylesheet" href="css/index.css">
    <script>
        function postEdit(self){
            var art_id = self.parentElement.parentElement.id.substr(3);
            self.parentElement.nextSibling.nextSibling.innerHTML = '<form method="post" class="postmake" action="article_edit.php"><div><input type="text" name="title" placeholder="Article title"><textarea id="mce" name="text"></textarea></div><input type="hidden" name="id_article" value="'+art_id+'"><input type="submit" value="&#x2714;" name="article_edit"></form>';
        }
    </script>
</head>
<body>
    <?php
        session_start();

        if(isset($_SESSION['user'])){
            $user = $_SESSION['user'];
            echo '<style>
                    .signup{ display: none }
                    .signin{ display: none }
                    .logout{ display: block }
                    .postmake{ display: flex }
                    .post_bin{ display: block }
                    .post_heart{ display: block }
                    .post_author{ margin-right: 8em }
                    .post_edit{ display: block }
                    .user_img{ display: block }
                 </style>';
        }
    ?>
    <header>
        <h3><a href="index.php">PhpMyAnim</a></h3>
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
        <label for="btn-logout">
            <form class="logout" action="logout.php" method="post">
                <input id="btn-logout" type="submit" name="logout" value="Log out">
            </form>
        </label>
        <?php
            if(isset($_SESSION['user'])){
                echo    '<div class="user_img"';
                if (file_exists('profpics/'.$user['id_user'].'.png')){
                    echo ' style="background-image: url(\'profpics/'.$user['id_user'].'.png\')"';
                }
                echo       '></div>';
            }
        ?>
    </header>
    <main>
        <form method="post" class="postmake" action="article_add.php">
            <div>
                <input type="text" name="title" placeholder="Article title">
                <textarea id="mce" name="text"></textarea>
            </div>
            <input type="submit" value="+" name="article_add">
        </form>
        <?php

            require('connect.php');
            $query = "SELECT id_article, articles.date, likes, title, content, name, articles.id_user FROM articles LEFT JOIN users ON articles.id_user=users.id_user";
            $result = mysqli_query($connection, $query);
            if(isset($_SESSION['user'])){
                $user = $_SESSION['user'];
            }

            if($result){
                while ($row = mysqli_fetch_array($result)){
                    echo '<div class="article" id="art'.$row['id_article'].'">
                            <div class="head">
                                <div class="post_img"';
                                if (file_exists('profpics/'.$row['id_user'].'.png')){
                                    echo ' style="background-image: url(\'profpics/'.$row['id_user'].'.png\')"';
                                }
                    echo       '></div>
                                <h1 class="post_author">'.$row['name'].'</h1>
                                <svg class="post_edit" onclick="postEdit(this)" ';
                                if (isset($_SESSION['user'])){
                                    if ($user['id_user']!=$row['id_user']){
                                        echo 'style="visibility:hidden;cursor:default" ';
                                    }
                                }
                    echo        'viewBox="0 0 24 24"><path d="M7.127 22.562l-7.127 1.438 1.438-7.128 5.689 5.69zm1.414-1.414l11.228-11.225-5.69-5.692-11.227 11.227 5.689 5.69zm9.768-21.148l-2.816 2.817 5.691 5.691 2.816-2.819-5.691-5.689z"/></svg>
                                <label for="btn-bin'.$row['id_article'].'" id="btn-bin-label">
                                <form class="postdelete" action="article_delete.php" method="post"';
                                if (isset($_SESSION['user'])){
                                    if ($user['id_permission']<50 && $user['id_user']!=$row['id_user']){
                                        echo ' style="display: none"';
                                    }
                                }
                    echo        '><svg class="post_bin" viewBox="0 0 109.484 122.88" enable-background="new 0 0 109.484 122.88">
                                <g><path fill-rule="evenodd" clip-rule="evenodd" d="M2.347,9.633h38.297V3.76c0-2.068,1.689-3.76,3.76-3.76h21.144 c2.07,0,3.76,1.691,3.76,3.76v5.874h37.83c1.293,0,2.347,1.057,2.347,2.349v11.514H0V11.982C0,10.69,1.055,9.633,2.347,9.633 L2.347,9.633z M8.69,29.605h92.921c1.937,0,3.696,1.599,3.521,3.524l-7.864,86.229c-0.174,1.926-1.59,3.521-3.523,3.521h-77.3 c-1.934,0-3.352-1.592-3.524-3.521L5.166,33.129C4.994,31.197,6.751,29.605,8.69,29.605L8.69,29.605z M69.077,42.998h9.866v65.314 h-9.866V42.998L69.077,42.998z M30.072,42.998h9.867v65.314h-9.867V42.998L30.072,42.998z M49.572,42.998h9.869v65.314h-9.869 V42.998L49.572,42.998z"/></g>
                                </svg>
                                <input type="hidden" name="id_article" value="'.$row['id_article'].'">
                                <input id="btn-bin'.$row['id_article'].'" type="submit" name="article_delete" style="display:none">
                                </form>
                                </label>
                                <svg class="post_heart" viewBox="0 0 32 29.6">
                                    <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                                    c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                                </svg>
                            </div>
                            <div class="content">
                                <h2 class="post_title">'.$row['title'].'</h2>
                                <p class="post_text">'.$row['content'].'</p>
                                <div class="post_date">'.$row['date'].'</div>
                            </div>
                          </div>';
                }
            }
            else{
                echo "Database error";
            }
        ?>
    </main>
    <footer><p>Made by Albert Ząbkiewicz</p></footer>
    <span class="error">
        <?php
            if(isset($_GET['status'])){
                echo "<style>.error{ display: block; animation: fade 2s linear 2s forwards; }</style>";
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
                    case 'addok':
                        echo "Article added";
                        break;
                    case 'editok':
                        echo "Article changed succesfully";
                        break;
                    case 'delok':
                        echo "Article removed succesfully";
                        break;
                    case 'dberror':
                        echo "Database error";
                        break;
                    case 'empty':
                        echo "Empty fields";
                        break;
                    default:
                        echo "???";
                }
            }
        ?>
    </span>
</body>
</html>