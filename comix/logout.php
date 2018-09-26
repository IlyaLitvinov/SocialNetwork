<?php // Example 26-12: logout.php
  require_once 'header.php';

  if (isset($_SESSION['user']))
  {
    destroySession();
    echo "<div class='main'>Вы покинули родимый шалаш. Клацните " .
         "<a href='index.php'>эту ссылку</a> что бы обновить страницу.";
  }
  else echo "<div class='main'><br>" .
            "Вы не можете выйти из шалаша пока вы не вошли в шалаш (Великая китайская мудрость)";
?>

    <br><br></div>
  </body>
</html>
