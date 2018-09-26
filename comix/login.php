<?php // login.php
  require_once 'header.php';
  echo "<div class='main'><h3> Объявите свой позывной и тайное слово, громко и четко, что бы в шалаше все поняли кто пришел!</h3>";
  $error = $user = $pass = "";

  if (isset($_POST['user']))
  {
    $user = sanitizeString($_POST['user']);
    $pass = sanitizeString($_POST['pass']);
    
    if ($user == "" || $pass == "")
        $error = "Не все назвали!<br>";
    else
    {
      $result = queryMySQL("SELECT user,pass FROM members
        WHERE user='$user' AND pass='$pass'");

      if ($result->num_rows == 0)
      {
        $error = "<span class='error'>Не подходят ваши данные! Абы кого не пускаем в шалаш!</span><br><br>";
      }
      else
      {
        $_SESSION['user'] = $user;
        $_SESSION['pass'] = $pass;
        die("Теперь проходите, нажмите на <a href='members.php?view=$user'>" .
            "эту надпись</a> что бы пройти на свое местечко.<br><br>");
      }
    }
  }

  echo <<<_END
    <form method='post' action='login.php'>$error
    <span class='fieldname'>Позывной:</span><input type='text'
      maxlength='16' name='user' value='$user'><br>
    <span class='fieldname'>Тайное слово:</span><input type='password'
      maxlength='16' name='pass' value='$pass'>
_END;
?>

    <br>
    <span class='fieldname'>&nbsp;</span>
    <input type='submit' value='Login'>
    </form><br></div>
  </body>
</html>
