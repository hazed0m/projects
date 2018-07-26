<?php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
	$stroka = "";

    $to = "hazekk94@gmail.com";
    $sendfrom   = "";
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";
    $subject = "Timberk - заявка";

	//Заполните форму!
	if(isset($_GET['crp'], $_GET['name'], $_GET['phone']))
	{
		$message = "<h2>$subject</h2><br>"."<b>ФИО:</b> ".$_GET['name']."<br><b>Номер телефона:</b> ".$_GET['phone']."<br><br><b>Выбрали:</b><br>".$_GET['crp'];
		$send = mail ($to, $subject, $message, $headers);
		if ($send == 'true')
		{
			echo '<center><p style="color:green">Спасибо за заявку!</p><img src="assets/templates/img/ok.png"><p style="color:black">Менеджер перезвонит вам</p></center>';
		}
		else
		{
			echo '<center><p style="color:red"><b>Ошибка. Сообщение не отправлено!</b></p></center>';
		}
	}
	
	//Подписка!
	if(isset($_GET['crp'], $_GET['email']))
	{
		$message = "<h2>$subject</h2><br>"."<b>Подписка:</b><br><b>Email:</b> ".$_GET['email']."<br>";
		$send = mail ($to, $subject, $message, $headers);
		if ($send == 'true')
		{
			echo '<center><p style="color:white; font-size: 24px;">Спасибо за подписку!</p></center>';
		}
		else
		{
			echo '<center><p style="color:red"><b>Ошибка. Сообщение не отправлено!</b></p></center>';
		}
	}	
	
	//Контакты!
	if(isset($_GET['crp2'], $_GET['name'], $_GET['phone'], $_GET['email'], $_GET['comment']))
	{
		$message = "<h2>$subject</h2><br>"."<b>ФИО:</b> ".$_GET['name']."<br><b>Номер телефона:</b> ".$_GET['phone']."<br><b>E-mail:</b> ".$_GET['email']."<br><b>Текст:</b> ".$_GET['comment']."<br><b>Выбрали:</b><br>".$_GET['crp2'];
		$send = mail ($to, $subject, $message, $headers);
		if ($send == 'true')
		{
			echo '<center><p style="color:green">Спасибо за заявку!</p><img src="assets/templates/img/ok.png"><p style="color:black">Менеджер перезвонит вам</p></center>';
		}
		else
		{
			echo '<center><p style="color:red"><b>Ошибка. Сообщение не отправлено!</b></p></center>';
		}
	}
	
	if(isset($_GET['object'], $_GET['object2']))
	{
		$object = json_decode($_GET['object']);
		$object2 = json_decode($_GET['object2']);
		
		$stroka = '';
		foreach($object2 as $value)
		{
			foreach($value as $value2)
				$stroka .= $value2.'<br>';
			$stroka .= '<br>';
		}		
		
		foreach($object as $value)
		{
			foreach($value as $value2)
				$stroka .= $value2.'<br>';
			$stroka .= '<br>';
		}
		$message = "<h2>$subject</h2><br>".$stroka;
		$send = mail ($to, $subject, $message, $headers);

		var_dump($stroka);
	}	
} else {
    http_response_code(403);
    echo "Попробуйте еще раз";
}
?>
