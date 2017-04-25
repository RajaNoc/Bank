package com.noc.mailingservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.noc.loginservice.utils.Loggers;

@Service
public class MailService
{
	@Autowired
	private MailSender mailSender;
 	 
	public void sendMail(String from, String to, String subject, String msg) {
		Loggers.LOGIN_LOGGER.debug("MailService.sendMail");
		SimpleMailMessage message = new SimpleMailMessage();
 
		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		Loggers.LOGIN_LOGGER.debug(message);
		mailSender.send(message);	
		Loggers.LOGIN_LOGGER.debug("MailService.sendMail completed");
	}
}