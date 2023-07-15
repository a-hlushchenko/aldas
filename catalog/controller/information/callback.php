<?php

class ControllerInformationCallback extends Controller
{
	private $error = array();
	private $email = 'd-emon@inbox.ru';

	public function index()
	{
	}
	///////////////////// отправка заявки 1
	public function send1()
	{


		/*if(isset($this->request->post['send'])){
			$this->request->post = $this->request->post['send'];
		}*/
		/*$this->config->set();*/
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send1()) {


			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Уточнить цену - Кухни Альдас';
			$text = "Артикул: " . $this->request->post['model'];
			$text .= "\nТовар: " . $this->request->post['title'];
			$text .= "\nФ.И.О.: " . $this->request->post['name'];
			$text .= "\nE-mail, Телефон: " . $this->request->post['tel'];
			$text .= "\nТип кухни: " . $this->request->post['type1'];
			$text .= "\nШирина: " . $this->request->post['width'];
			$text .= "\nДлинна: " . $this->request->post['height'];
			$text .= "\nФурнитура: " . $this->request->post['fur1'];

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			//$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));




			$tomail = array();
			$tomail['subject'] = $subject;
			$tomail['text'] = $text;
			//$mail_id = $this->tobase($tomail);

			/*$text .= "\nОтправить письмо: <a href='http://www.mebel-zevs.ru/index.php?route=information/callback/send1&send=".$mail_id."'>".$text;*/
			/*$mail->setTo($this->$email);
   			$mail->send();*/

			//if($this->request->get['send']){
			$mail->setTo($this->config->get('config_email'));
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}

			//} 
			//echo "письмо успешно отправлено";
			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send1()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите ФИО';
		}
		/*if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail!';
		}*/
		/*if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
      		$this->error['tel'] = $this->language->get('error_tel');
    	}*/
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send2()
	{
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send2()) {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Заказ готовой кухни - Кухни Альдас';
			$text = "Артикул: " . $this->request->post['model'];
			$text .= "\nТовар: " . $this->request->post['title'];
			$text .= "\nФ.И.О.: " . $this->request->post['name'];
			$text .= "\nE-mail, Телефон: " . $this->request->post['tel'];
			$text .= "\n\nЦена: " . $this->request->post['price'] . " за 1 м.кв.";
			if (isset($this->request->post['dost'])) {
				$text .= "\nДоставка: Да - " . $this->request->post['dost'] . ' руб.';
			} else {
				$text .= "\nДоставка: Нет";
			}
			if (isset($this->request->post['sbor'])) {
				$text .= "\nСборка: Да - " . $this->request->post['sborka'] . ' руб.';
			} else {
				$text .= "\nСборка: Нет";
			}

			$text .= "\n=================================";
			$text .= "\nИТОГО: " . $this->request->post['total'] . " руб.";


			//$text .= "\nШирина: ".$this->request->post['width'];
			//$text .= "\nДлинна: ".$this->request->post['height'];
			//$text .= "\nФурнитура: ".$this->request->post['fur2'];

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send2()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите ФИО';
		}
		/*if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail!';
		}*/
		/*if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
      		$this->error['tel'] = $this->language->get('error_tel');
    	}*/
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send3()
	{
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send3()) {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Вызов замерщика - Кухни Альдас';
			$text = "Артикул: " . $this->request->post['model'];
			$text .= "\nТовар: " . $this->request->post['title'];
			$text .= "\nФ.И.О.: " . $this->request->post['name'];
			$text .= "\nE-mail, Телефон: " . $this->request->post['tel'];
			$text .= "\nАдрес: " . $this->request->post['adress'];
			/*$text .= "\nШирина: ".$this->request->post['width'];
			$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));

			if (isset($this->request->post['file']) && $this->request->post['file']) {

				$this->load->model('tool/upload');
				$upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);

				$filename = $upload_info['filename'];
				$new_filename = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));

				rename(DIR_UPLOAD . $filename, DIR_UPLOAD . $new_filename);
				$mail->addAttachment(DIR_UPLOAD . $new_filename);
			}

			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send3()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите ФИО';
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send3_1()
	{

		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send3_1()) {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])

			$subject = 'Рассчитать проект - Кухни Альдас';

			$this->createLead($this->request->post, $subject);

			$text = "Артикул: " . $this->request->post['model'];
			$text .= "\nТовар: " . $this->request->post['title'];
			$text .= "\nФ.И.О.: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			$text .= "\nE-mail: " . $this->request->post['email'];
			$text .= "\nКомментарий: " . $this->request->post['comment'];
			/*$text .= "\nШирина: ".$this->request->post['width'];
			$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/

			if (isset($this->request->post['otvet'])) {
				if ($this->request->post['otvet'] = 'mail') {
					$text .= "\nКуда ответить: Ответить на почту";
				} elseif ($this->request->post['otvet'] = 'telefone') {
					$text .= "\nКуда ответить: Перезвонить";
				}
			}

			$this->createLeadAmocrm($this->request->post, $subject, $text);

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));

			if (isset($this->request->post['file']) && $this->request->post['file']) {

				$this->load->model('tool/upload');
				$upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);

				$filename = $upload_info['filename'];
				$new_filename = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));

				rename(DIR_UPLOAD . $filename, DIR_UPLOAD . $new_filename);
				$mail->addAttachment(DIR_UPLOAD . $new_filename);
			}

			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}
			if (isset($this->request->post['file']) && $this->request->post['file']) {
				unlink(DIR_UPLOAD . $new_filename);
			}



			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send3_1()
	{
		$this->language->load('information/callback');
		$emailCheck = $telCheck = true;
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите ФИО';
		}
		//if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
		if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail!';
		}
		if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
			$this->error['tel'] = $this->language->get('error_tel');
		}

		if ($emailCheck && $telCheck) {
			$emailGood = empty($this->error['email']);
			$telGood   = empty($this->error['tel']);
			if ($emailGood || $telGood) {
				if (!$emailGood) {
					unset($this->error['email']);
				}
				if (!$telGood) {
					unset($this->error['tel']);
				}
			}
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}



	public function send5()
	{
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send5()) {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Рассчитать кухню - Кухни Альдас';
			$this->createLead($this->request->post, $subject);
			//$text = "Артикул: ".$this->request->post['model'];
			//$text .= "\nТовар: ".$this->request->post['title'];
			$text = "\nИмя.: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			$text .= "\nE-mail: " . $this->request->post['email'];
			$text .= "\nКомментарий: " . $this->request->post['comment'];
			/*$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/

			$this->createLeadAmocrm($this->request->post, $subject, $text);

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send5()
	{
		$this->language->load('information/callback');
		$emailCheck = $telCheck = true;
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите Имя';
		}
		if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail';
		}
		if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
			$this->error['tel'] = $this->language->get('error_tel');
		}

		if ($emailCheck && $telCheck) {
			$emailGood = empty($this->error['email']);
			$telGood   = empty($this->error['tel']);
			if ($emailGood || $telGood) {
				if (!$emailGood) {
					unset($this->error['email']);
				}
				if (!$telGood) {
					unset($this->error['tel']);
				}
			}
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send6()
	{
		$json = array();

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send6()) {



			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			if (isset($this->request->post['title']) && $this->request->post['title']) {
				$subject = $this->request->post['title'] . ' - Альдас';
			} else {
				$subject = 'Рассчитать кухню - Кухни Альдас';
			}
			$this->createLead($this->request->post, $subject);

			//$text = "Артикул: ".$this->request->post['model'];
			//$text .= "\nТовар: ".$this->request->post['title'];
			if (isset($this->request->post['model']) && $this->request->post['model']) {
				$text = "\nМодель товара: " . $this->request->post['model'];
			}
			if (isset($this->request->post['nameproduct']) && $this->request->post['nameproduct']) {
				$text = "\nНазвание товара: " . $this->request->post['nameproduct'];
			}

			$text = "\nИмя: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			$text .= "\nE-mail: " . $this->request->post['email'];
			$text .= "\nАдрес и комментарий: " . $this->request->post['comment'];
			/*$text .= "\nШирина: ".$this->request->post['width'];
			$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/

			//$this->log->write(print_r($this->request->post,1));

			if (isset($this->request->post['otvet'])) {
				if ($this->request->post['otvet'] = 'mail') {
					$text .= "\nКуда ответить: Ответить на почту";
				} elseif ($this->request->post['otvet'] = 'telefone') {
					$text .= "\nКуда ответить: Перезвонить";
				}
			}
			$this->createLeadAmocrm($this->request->post, $subject, $text);

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));


			//$this->log->write(print_r($this->request->post,1));

			if (isset($this->request->post['file']) && $this->request->post['file']) {

				$this->load->model('tool/upload');
				$upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);

				$filename = $upload_info['filename'];
				$new_filename = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));

				rename(DIR_UPLOAD . $filename, DIR_UPLOAD . $new_filename);
				$mail->addAttachment(DIR_UPLOAD . $new_filename);
			}

			//$this->log->write(print_r($mail,1));
			$mail->send();
			$mail->setTo('gdemonm@gmail.com');
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}

			if (isset($this->request->post['file']) && $this->request->post['file']) {
				unlink(DIR_UPLOAD . $new_filename);
			}



			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send6()
	{
		$this->language->load('information/callback');
		$emailCheck = $telCheck = true;
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите Имя';
		}
		//if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
		if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail';
		}
		if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
			$this->error['tel'] = $this->language->get('error_tel');
		}

		if ($emailCheck && $telCheck) {
			$emailGood = empty($this->error['email']);
			$telGood   = empty($this->error['tel']);
			if ($emailGood || $telGood) {
				if (!$emailGood) {
					unset($this->error['email']);
				}
				if (!$telGood) {
					unset($this->error['tel']);
				}
			}
		}


		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send7()
	{
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send7()) {



			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Вызвать змерщика - Кухни Альдас';

			$this->createLead($this->request->post, $subject);

			//$text = "Артикул: ".$this->request->post['model'];
			//$text .= "\nТовар: ".$this->request->post['title'];
			$text = "\nИмя: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			//$text .= "\nАдрес: ".$this->request->post['adress'];
			/*$text .= "\nШирина: ".$this->request->post['width'];
			$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/
			$this->createLeadAmocrm($this->request->post, $subject, $text);

			$mail = new Mail();

			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));

			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send7()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите Имя';
		}
		/*if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail!';
		}*/
		if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
			$this->error['tel'] = $this->language->get('error_tel');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function send8()
	{
		$json = array();
		$this->language->load('information/callback');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send8()) {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Заявка на заказ товара - Кухни Альдас';
			$text = "Артикул: " . $this->request->post['model'];
			$text .= "\nТовар: " . $this->request->post['title'];
			$text .= "\nИмя.: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			//$text .= "\nE-mail: ".$this->request->post['email'];
			$text .= "\nКомментарий: " . $this->request->post['comment'];
			/*$text .= "\nДлинна: ".$this->request->post['height'];
			$text .= "\nФурнитура: ".$this->request->post['fur3'];*/

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_send8()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите Имя';
		}
		/*if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail';
		}*/
		if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
			$this->error['tel'] = $this->language->get('error_tel');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
	/*protected function tobase($post) {
  		$post = serialize($post);
  		$this->db->query("INSERT INTO " . DB_PREFIX . "send_mail SET subject = '" . $this->db->escape($post['subject']) . "', text = '" . $this->db->escape($post['text']) . "', status = 0");
  		return $this->db->getLastId();
  	}*/
	public function sendCalcZakaz()
	{

		$json = array();
		$this->language->load('information/callback');

		/*$json['post'] = $this->request->post;
		$this->log->write(print_r($this->request->post,1));*/
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['validate']) && $this->validate_sendCalcZakaz($this->request->post['validate'])) {

			$subject = $this->request->post['titleforma'] . ' - Кухни Альдас';

			$new_filename = '';
			if (isset($this->request->post['file']) && $this->request->post['file']) {

				$this->load->model('tool/upload');
				$upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);

				$filename = $upload_info['filename'];
				$new_filename = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));
				if (file_exists(DIR_UPLOAD . $filename)) {
					rename(DIR_UPLOAD . $filename, DIR_UPLOAD . $new_filename);
				}
			}



			if (isset($this->request->post['mater'])) {
			} else {
				$this->request->post['mater'] = 'Не выбрано';
			}
			$text = "Артикул: " . $this->request->post['model'];
			if (isset($this->request->post['nameproduct']) && $this->request->post['nameproduct']) {
				$text .= "\nНазвание товара: " . $this->request->post['nameproduct'];
			}
			$text .= "\nТовар(страница): " . $this->request->post['title'];
			//$text .= "\n=============================";
			if (isset($this->request->post['mater']) && $this->request->post['mater']) {
				$text .= "\nМатериал фасада: " . $this->request->post['mater'];
			}
			if (isset($this->request->post['kompl'])) {
				$text .= "\nКомплектация: " . $this->request->post['kompl'];
			}
			if (isset($this->request->post['furnit'])) {
				$text .= "\nФурнитура: " . $this->request->post['furnit'];
			}
			if (isset($this->request->post['dlina'])) {
				$text .= "\nДлинна(м): " . $this->request->post['dlina'];
			}
			if (isset($this->request->post['height'])) {
				$text .= "\nВысота(м): " . $this->request->post['height'];
			}
			if (isset($this->request->post['pricetotal'])) {
				$text .= "\nИтоговая цена: " . $this->request->post['pricetotal'];
			}
			//$text .= "\n=============================";
			$text .= "\n\nИмя: " . $this->request->post['name'];
			$text .= "\nТелефон: " . $this->request->post['tel'];
			if (isset($this->request->post['email'])) {
				$text .= "\nE-mail: " . $this->request->post['email'];
			}
			if (isset($this->request->post['comment'])) {
				$text .= "\nСообщение: " . $this->request->post['comment'];
			}
			if (isset($this->request->post['adress'])) {
				$text .= "\nАдрес: " . $this->request->post['adress'];
			}
			if (isset($this->request->post['otvet'])) {
				$text .= "\nОтветить на: " . $this->request->post['otvet'];
			}

			$this->createLead($this->request->post, $subject, $new_filename);
			$this->createLeadAmocrm($this->request->post, $subject, $text);


			$mail = new Mail();

			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			//$mail->setTo('d-emon@inbox.ru');
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));

			if ($new_filename) {
				$mail->addAttachment(DIR_UPLOAD . $new_filename);
			}

			$this->log->write(print_r($mail, 1));
			//$mail->setTo('gdemonm@gmail.com');
			$mail->send();

			/*$mail->smtp_hostname = 'localhost';
			$mail->smtp_username = 'info@mebel-bruno.ru';
			$mail->smtp_password = html_entity_decode('x51N202w', ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = '587';*/

			//$mail->send();


			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = 'Ваша заявка успешно отправлена!';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
	protected function validate_sendCalcZakaz($validate = false)
	{
		$this->language->load('information/callback');

		$results = explode(',', $validate);
		$emailCheck = $telCheck = false;
		foreach ($results as $key => $value) {
			if ($value == 'email') {
				$emailCheck = true;
				if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
					$this->error['email'] = 'Неверный E-Mail';
				}
			} elseif ($value == 'name') {
				if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
					$this->error['name'] = 'Введите Ф.И.О.';
				}
			} elseif ($value == 'tel') {
				$telCheck = true;
				if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
					$this->error['tel'] = $this->language->get('error_tel');
				}
			} else {
				$this->error['error'] = 'Поле не описано';
			}
		}

		if ($emailCheck && $telCheck) {
			$emailGood = empty($this->error['email']);
			$telGood   = empty($this->error['tel']);
			if ($emailGood || $telGood) {
				if (!$emailGood) {
					unset($this->error['email']);
				}
				if (!$telGood) {
					unset($this->error['tel']);
				}
			}
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	protected function createLead($post, $title = false)
	{
		return;
		$json = array();
		//$json['roistat'] = isset($_COOKIE['roistat_visit']) ? $_COOKIE['roistat_visit'] : null;
		$json['UF_CRM_1490251077'] = isset($_COOKIE['roistat_visit']) ? $_COOKIE['roistat_visit'] : null;
		$json['COMMENTS'] = '';

		if (isset($post['model']) && $post['model']) {
			$json['COMMENTS'] .= "\nМодель товара: " . $post['model'];
		}
		if (isset($post['nameproduct']) && $post['nameproduct']) {
			$json['COMMENTS'] .= "\nНазвание товара: " . $post['nameproduct'];
		}

		$json['LOGIN'] = 'gdemonm@gmail.com';
		$json['PASSWORD'] = '123321qwe68510';
		$json['STATUS_ID'] = 'NEW';
		$json['SOURCE_ID'] = 'WEB';

		$json['TITLE'] = $title;
		$json['COMPANY_TITLE'] = 'Альдас';
		$json['NAME'] = $post['name'];
		$json['PHONE_WORK '] = $post['tel'];
		if (isset($post['comment']) && $post['comment']) {
			$json['COMMENTS'] .= "\nКомментарий: " . $post['comment'];
		}
		if (isset($post['email']) && $post['email']) {
			$json['EMAIL_OTHER'] = $post['email'];
		}


		$CRM_HOST = 'aldasibruno.bitrix24.ru';
		$CRM_PORT = '443';
		$CRM_PATH = '/crm/configs/import/lead.php';

		if (isset($post['otvet'])) {
			if ($post['otvet'] = 'mail') {
				$json['COMMENTS'] .= "\nКуда ответить: Ответить на почту";
			} elseif ($post['otvet'] = 'telefone') {
				$json['COMMENTS'] .= "\nКуда ответить: Перезвонить";
			}
		}

		//$this->log->write(print_r($json,1));
		$fp = fsockopen("ssl://" . $CRM_HOST, $CRM_PORT, $errno, $errstr, 30);
		if ($fp) {
			// prepare POST data
			$this->log->write(print_r('отправляем лид', 1));
			$this->log->write(print_r($json, 1));

			$strPostData = '';
			$postData = $json;

			foreach ($postData as $key => $value)
				$strPostData .= ($strPostData == '' ? '' : '&') . $key . '=' . urlencode($value);

			// prepare POST headers
			$str = "POST " . $CRM_PATH . " HTTP/1.0\r\n";
			$str .= "Host: " . $CRM_HOST . "\r\n";
			$str .= "Content-Type: application/x-www-form-urlencoded\r\n";
			$str .= "Content-Length: " . strlen($strPostData) . "\r\n";
			$str .= "Connection: close\r\n\r\n";

			$str .= $strPostData;
			// send POST to CRM
			fwrite($fp, $str);

			// get CRM headers
			$result = '';
			while (!feof($fp)) {
				$result .= fgets($fp, 128);
			}
			fclose($fp);

			// cut response headers
			$response = explode("\r\n\r\n", $result);
			//$this->log->write(print_r('result='.$result,1));
			//$this->log->write(print_r('response='.$response,1));
			$output = print_r($response[1], 1);
			$this->log->write(print_r('output=' . $output, 1));
		} else {
			$this->log->write('Create Lead --- Connection Failed! ' . $errstr . ' (' . $errno . ')');
			//echo ;
		}
	}

	protected function createLeadAmocrm($post, $title = '', $text)
	{

		//OTc4NjliMWZiNmJjYzU5ZjA3N2VhNjM0YzcwMDg1ZDk6MjA2MTYw

		if (isset($post['email']) && $post['email']) {
			$email = $post['email'];
		} else {
			$email = '';
		}
		if (isset($post['comment']) && $post['comment']) {
			$comment = $post['comment'] . "\n\n" . $text;
		} else {
			$comment = $text;
		}
		$roistatData = array(
			'roistat' => isset($_COOKIE['roistat_visit']) ? $_COOKIE['roistat_visit'] : 'nocookie',
			'key'     => 'OTc4NjliMWZiNmJjYzU5ZjA3N2VhNjM0YzcwMDg1ZDk6MjA2MTYw', // Ключ для интеграции с CRM, указывается в настройках интеграции с CRM.
			'title'   => 'Заявка с сайта - ' . $title, // Название сделки
			'comment' => $comment, // Комментарий к сделке
			'name'    => $post['name'], // Имя клиента
			'email'   => $email, // Email клиента
			'phone'   => $post['tel'], // Номер телефона клиента
			'order_creation_method' => '', // Способ создания сделки (необязательный параметр). Укажите то значение, которое затем должно отображаться в аналитике в группировке "Способ создания заявки"
			'is_need_callback' => '0', // После того, как в Roistat создается заявка, Roistat инициирует обратный звонок на номер клиента, если значение параметра равно 1 и в Ловце лидов включен индикатор обратного звонка.
			//'callback_phone' => '<Номер для переопределения>', // Переопределяет номер, указанный в настройках обратного звонка.
			'sync'    => '0', //
			'is_need_check_order_in_processing' => '1', // Включение проверки заявок на дубли
			'is_need_check_order_in_processing_append' => '1', // Если создана дублирующая заявка, в нее будет добавлен комментарий об этом
			//'is_skip_sending' => '1', // Не отправлять заявку в CRM.
			'is_skip_sending' => '0', // Не отправлять заявку в CRM.
			'fields'  => array(
				// Массив дополнительных полей. Если дополнительные поля не нужны, оставьте массив пустым.
				// Примеры дополнительных полей смотрите в таблице ниже.
				// Помимо массива fields, который используется для сделки, есть еще массив client_fields, который используется для установки полей контакта.
				//"charset" => "Windows-1251", // Сервер преобразует значения полей из указанной кодировки в UTF-8.
			),
		);

		// Метод добавляет комментарий к сделке
		/*$roistatData = array(
		    'key'     => '', // Ключ для интеграции с CRM, указывается в настройках интеграции с CRM.
		    'id'   => '', // Идентификатор заявки, который вернул при ее создании метод /api/proxy/1.0/leads/add)
		    'title'    => '', // Заголовок для комментария, необязателен
		    'message' => '', // Комментарий к сделке
		);

		file_get_contents("https://cloud.roistat.com/api/proxy/1.0/leads/messages/add?" . http_build_query($roistatData));
		*/

		/*
		Пример дополнительных полей массива 'fields' => array(). Требуются для установки значений дополнительных полей в CRM.

			amoCRM


			'price' => 123, // Поле бюджет в amoCRM.
			'responsible_user_id' => 3, // Ответственный по сделке.
			'1276733' => 'Текст', // Заполнение доп. поля с ID 1276733. Дополнительное поле может быть заполнено как у сделки, так и у контакта. В случае заполнения поля контакта также необходимо указать ID этого поля.

			'status_id' => 123123, // Создавать лид с определенным статусом в определенной воронке. Указывать необходимо ID статуса.
			'pipeline_id' => 123123, // Создавать лид с в определенной воронке. Указывать необходимо ID воронки.

			// Подробную информацию о наименовании полей и получить список дополнительных полей вы можете в документации amoCRM: https://developers.amocrm.ru/rest_api/#lead.
			// Более подробную информацию по работе с дополнительными полями в amoCRM вы можете получить у службы поддержки Roistat.
			'tags' => 'Тег1, Тег2', // Название тегов через запятую.
			*/


		$this->log->write(print_r('отправляем лид createLeadAmocrm', 1));
		$this->log->write(print_r($roistatData, 1));

		$res = file_get_contents("https://cloud.roistat.com/api/proxy/1.0/leads/add?" . http_build_query($roistatData));

		$this->log->write(print_r($res, 1));
	}

	private $test = true;

	public function send4_n()
	{
		$json = array();
		$this->language->load('information/callback');
		if ($this->test) {
			$json['success'] = '<dov class="success_text">Ваша заявка успешно отправлена!</div>';
			$this->response->setOutput(json_encode($json));
			return;
		}

		//if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate_send4()) {
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {

			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			$subject = 'Заказ - Кухни Альдас';
			$html = $this->request->post['text'];

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setTo('d-emon@inbox.ru');
			//$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender('Альдас');
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			//$mail->setText(strip_tags(html_entity_decode($html, ENT_QUOTES, 'UTF-8')));
			$mail->setText('');
			//$html = 'test';
			$mail->setHtml(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r(ail,1));
					$mail->send();
				}
			}

			$json['success'] = '<div class="alert alert-success">Ваша заявка успешно отправлена!</div>';
			//echo 'Ваша заявка успешно отправлена!';

		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}

	protected function validate_send4()
	{
		$this->language->load('information/callback');
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = 'Введите ФИО';
		}
		/*if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
			$this->error['email'] = 'Неверный E-Mail!';
		}*/
		/*if ((utf8_strlen($this->request->post['tel']) < 3) || (utf8_strlen($this->request->post['tel']) > 32)) {
      		$this->error['tel'] = $this->language->get('error_tel');
    	}*/
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
	/////////////////////////////////

	public function send_n()
	{
		$json = array();
		$this->language->load('information/callback');

		if ($this->test) {
			$json['success'] = '<dov class="success_text">Ваша заявка успешно отправлена!</div>';
			$this->response->setOutput(json_encode($json));
			return;
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {


			//sprintf($this->language->get('email_subject_send1'), $this->request->post['name'])
			if (isset($this->request->post['form_name'])) {
				$subject = $this->request->post['form_name'];
			} else {
				$subject = 'Алдас заявка';
			}


			//$this->createLead($this->request->post, $subject);

			//$text = "Артикул: ".$this->request->post['model'];
			//$text .= "\nТовар: ".$this->request->post['title'];
			$text = '';
			if (isset($this->request->post['type'])) {
				$text .= "\nТип заявки: " . $this->request->post['type'];
			}
			if (isset($this->request->post['callto'])) {
				$text .= "\nКуда ответить: " . $this->request->post['callto'];
			}
			if (isset($this->request->post['name'])) {
				$text .= "\nИмя: " . $this->request->post['name'];
			}
			if (isset($this->request->post['tel'])) {
				$text .= "\nТелефон: " . $this->request->post['tel'];
			}
			if (isset($this->request->post['email'])) {
				$text .= "\nE-mail: " . $this->request->post['email'];
			}

			// калькулятор
			if (isset($this->request->post['mater'])) {
				$text .= "\n Материал: " . $this->request->post['mater'];
			}
			if (isset($this->request->post['furnit'])) {
				$text .= "\n Фурнитура: " . $this->request->post['furnit'];
			}
			if (isset($this->request->post['kompl'])) {
				$text .= "\n Комплектация: " . $this->request->post['kompl'];
			}
			if (isset($this->request->post['dlina'])) {
				$text .= "\n Длинна: " . $this->request->post['dlina'];
			}
			if (isset($this->request->post['pricetotal'])) {
				$text .= "\n Примерная стоимость: " . $this->request->post['pricetotal'];
			}


			$mail = new Mail();

			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			//$mail->setFrom('www-data@faida-mebel.ru');
			$mail->setSender($this->request->post['name']);
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(strip_tags(html_entity_decode($text, ENT_QUOTES, 'UTF-8')));

			if (isset($this->request->post['file']) && $this->request->post['file']) {

				$this->load->model('tool/upload');
				$upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);

				$filename = $upload_info['filename'];
				$new_filename = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));

				rename(DIR_UPLOAD . $filename, DIR_UPLOAD . $new_filename);
				$mail->addAttachment(DIR_UPLOAD . $new_filename);
			}

			//$mail->send();
			//$this->createLeadAmocrm($this->request->post, $subject, $text);

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					//$this->log->write(print_r($mail,1));
					//$mail->send();
				}
			}


			//$json['success'] = '<div class="success">Ваша заявка успешно отправлена!</div>';
			$json['success'] = '<dov class="success_text">Ваша заявка успешно отправлена!</div>';
		} else {
			if ($this->error) {
				$json['error'] = $this->error;
			}
		}
		$this->response->setOutput(json_encode($json));
	}
}
