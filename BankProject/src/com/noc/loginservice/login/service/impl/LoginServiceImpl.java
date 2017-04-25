package com.noc.loginservice.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.noc.loginservice.login.api.User;
import com.noc.loginservice.login.dao.impl.LoginDAO;
import com.noc.loginservice.login.service.LoginService;
import com.noc.loginservice.utils.Loggers;
import com.noc.mailingservice.service.MailService;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDAO udao;

	@Autowired
	private MailService ms;

	public boolean  findUser(User user){
		Loggers.LOGIN_LOGGER.debug("LoginService.findUser");
		boolean flag=udao.findUser(user);
		Loggers.LOGIN_LOGGER.debug("LoginService.findUser return :"+flag);
		return flag;
	}
	public boolean  findUserEmail(User user){
		Loggers.LOGIN_LOGGER.debug("LoginService.findUserEmail");
		boolean flag=udao.findUserEmail(user.email);
		/*Random random=new Random();
		int tempOTP=random.nextInt(10000);
		log.debug("OTP: "+tempOTP);*/

		ms.sendMail("tspraksmind1@gmail.com",user.email,"ForgotPassword","Hello.. :: '"+user.email
				+"'\n You got this becasue of ur forgot ur password\n\n"
				+ "\n Please note ur OPT(One time password):'"+user.tempOTP+"'"
				+ "\n Please follow the link:: \n http://localhost:2020/login/forgotpass.spring ");
		Loggers.LOGIN_LOGGER.debug("Mail send to : "+user.email);
		Loggers.LOGIN_LOGGER.debug("LoginService.findUserEmail return :"+flag);
		return flag;
	}

	public boolean changePass(User userSs, User userNew){
		Loggers.LOGIN_LOGGER.debug("LoginService.changePass");
		boolean flag=false;

		if(userNew.otp == userSs.tempOTP){
			Loggers.LOGIN_LOGGER.debug("OTP Correct:"+userNew.otp  +"== "+userSs.tempOTP);

			if(userNew.newPassword.equals(userNew.conformPassword)){
				flag=udao.changePass(userSs.email,userNew.newPassword);
				Loggers.LOGIN_LOGGER.debug("LoginService.changePass return :"+flag);
				return flag;
			} else{
				Loggers.LOGIN_LOGGER.debug(""+userNew.newPassword+"=!"+userNew.conformPassword);
				Loggers.LOGIN_LOGGER.debug("LoginService.changePass : password(s) not matching");
				Loggers.LOGIN_LOGGER.debug("LoginService.changePass return : flase");
				return flag;
					
			}
		}
		Loggers.LOGIN_LOGGER.debug("LoginService.changePass : otp not match");
		Loggers.LOGIN_LOGGER.debug("LoginService.changePass return : flase");
		return flag;
	}
	
}
