<?php // functions.php


    $dbhost  = 'localhost';    // Расположение базы данных.
    $dbname  = 'comixDB';      // Имя базы данных.
    $dbuser  = 'Ilya';         // Имя пользователя базы данных.
    $dbpass  = 'Vecnfyu69';    // Пароль пользователя базы данных.
    $appname = "Dandy_messenger";        // Название социальной сети.
    $connection = new mysqli($dbhost, $dbuser, $dbpass, $dbname);   // Переменная хранит данные для подключения к БД.
  
      if ($connection->connect_error) die($connection->connect_error);


      function createTable($name, $query)   // Функция создает таблицу если она еще не создана.
        {
          queryMysql("CREATE TABLE IF NOT EXISTS $name($query)");
          echo "Table '$name' created or already exists.<br>";
        }


      function queryMysql($query) // Функция исполняет запрос к БД.
        {
          global $connection;
          $result = $connection->query($query);
          if (!$result) die($connection->error);
          return $result;
        }


      function destroySession() // Фунуция завершает текущую сессию.
        {
          $_SESSION=array();
          if (session_id() != "" || isset($_COOKIE[session_name()]))
            setcookie(session_name(), '', time()-2592000, '/');
          session_destroy();
        }


      function sanitizeString($var) // Функция обезвреживает данные
        {
          global $connection;
          $var = strip_tags($var);
          $var = htmlentities($var);
          $var = stripslashes($var);
          return $connection->real_escape_string($var);
        }


      function showProfile($user) // Функция показывает данные профиля
        {
          if (file_exists("$user.jpg"))
            echo "<img src='$user.jpg' style='float:left;'>";

          $result = queryMysql("SELECT * FROM profiles WHERE user='$user'");

          if ($result->num_rows)
            {
              $row = $result->fetch_array(MYSQLI_ASSOC);
              echo stripslashes($row['text']) . "<br style='clear:left;'><br>";
            }
        }
?>
