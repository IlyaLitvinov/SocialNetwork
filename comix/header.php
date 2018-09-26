<!DOCTYPE html>
<html>
	<head>

<!-- SCM Music Player http://scmplayer.co -->
<script type="text/javascript" src="http://scmplayer.co/script.js" 
data-config="{'skin':'skins/black/skin.css','volume':50,'autoplay':true,'shuffle':true,'repeat':1,'placement':'top','showplaylist':false,'playlist':[{'title':'main','url':'https://cs1-78v4.vkuseraudio.net/p10/d6da236b00e91c.mp3?extra=XvqxJHVl08gczGe5deRxJWGlAgYErLoAnLuZ8RD-rJMzA1z3QGGkQsAGKM2o8S96H8ScFuRjV7Lb7_OtY_3eM-HE4xgckoe-QoWsiHERC6lrRnuP4TiSoG-y_1-6pjhGDqrGNJL9A5oBVRIE'}]}" ></script>
<!-- SCM Music Player script end -->


		<?php 	
			require_once 'functions.php';
			echo "<title>$appname</title>" 
		?>

		<link rel='stylesheet' href='styles.css' type='text/css'>

		<iframe src="http://ntmaker.gfto.ru/newneontext/?image_height=200&image_width=700&image_font_shadow_width=30&image_font_size=80&image_background_color=08080A&image_text_color=FF91A9&image_font_shadow_color=F7406B&image_url=&image_text=Dendy_Messenger&image_font_family=Nickainley&" frameborder='no' scrolling='no' width="700" height="200"></iframe><!-- Неоновая надпись названия сайта -->

    </head>

		<?php // header.php

		  session_start();

		  require_once 'functions.php';

		  $userstr = '';

		  if (isset($_SESSION['user']))
		  {
		    $user     = $_SESSION['user'];
		    $loggedin = TRUE;
		    $userstr  = "$user";
		  }
		  else $loggedin = FALSE;

		  echo
		       "<body>".
		       "<div class='appname'>$userstr</div>"            .
		       "<script src='javascript.js'></script>";

		  if ($loggedin)
		  {
		    echo "<br ><ul class='menu'>" .
		         "<li><a href='members.php?view=$user'>Домик</a></li>" .
		         "<li><a href='members.php'>Пасажиры</a></li>"         .
		         "<li><a href='friends.php'>Друзья</a></li>"         .
		         "<li><a href='messages.php'>Сообщения</a></li>"       .
		         "<li><a href='profile.php'>Рассказать</a></li>"    .
		         "<li><a href='games.php'>Игры</a></li>"  .
		         "<li><a href='logout.php'>Покинуть</a></li></ul><br>";
		  }
		  else
		  {
		    echo ("<br><ul class='menu'>" .
		          "<a href='index.php'>Главная</a><br><br>"                .
		          "<a href='signup.php'>Регистрация</a><br><br>"            .
		          "<a href='login.php'>Войти</a></ul><br><br><br>");
		  }
?>
