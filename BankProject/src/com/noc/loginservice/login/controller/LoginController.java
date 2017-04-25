package com.noc.loginservice.login.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.noc.loginservice.login.api.User;
import com.noc.loginservice.login.dao.LoginDAOI;
import com.noc.loginservice.login.service.LoginService;
import com.noc.loginservice.utils.Loggers;

@Controller
public class LoginController {

	@Autowired
	private LoginDAOI udao;

	@Autowired
	private LoginService loginService;

	@RequestMapping(value="/login.spring", method=RequestMethod.GET)
	public ModelAndView loginForm()throws Exception {
		Loggers.LOGIN_LOGGER.debug("LoginController.loginForm");
		Loggers.LOGIN_LOGGER.debug("...............................");
		return new ModelAndView("login");
	}

	@RequestMapping(value="/login.spring", method=RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute("user") User user)throws Exception  {
		Loggers.LOGIN_LOGGER.debug("LoginController.processLogin");
		boolean flag=loginService.findUser(user);
		Loggers.LOGIN_LOGGER.debug(flag);
		if(flag==false){
			Loggers.LOGIN_LOGGER.debug(user.getUserName()+"!=="+user.getPassword());
			Loggers.LOGIN_LOGGER.debug("...............................");
			return new ModelAndView("login");

		}
		Loggers.LOGIN_LOGGER.debug(user.getUserName()+"=="+user.getPassword());
		Loggers.LOGIN_LOGGER.debug("...............................");
		return new ModelAndView("dashboard");
	}
	@RequestMapping(value="/forgotform.spring",method=RequestMethod.GET)
	public ModelAndView forgetPassForm(){
		System.out.println("LoginController.forgetPassForm");

		return new ModelAndView("forgotpass");

	}


	@RequestMapping(value="/forgotpass.spring",method=RequestMethod.GET)
	public ModelAndView forgotPasswordForm()throws Exception  {
		Loggers.LOGIN_LOGGER.debug("LoginController.forgotPasswordForm");
		Loggers.LOGIN_LOGGER.debug("...............................");
		return new ModelAndView("changepass");

	}


	@RequestMapping(value="/forgotpass.spring",method=RequestMethod.POST)
	public ModelAndView forgotPassword(User user,WebRequest wr)throws Exception  {
		Loggers.LOGIN_LOGGER.debug("LoginController.forgotPassword");
		Random random=new Random();
		int tempOTP=random.nextInt(10000);
		Loggers.LOGIN_LOGGER.debug("OTP: "+tempOTP);
		user.tempOTP=tempOTP;
		
		boolean flag=loginService.findUserEmail(user);
		Loggers.LOGIN_LOGGER.debug(flag);
		if(flag){
			wr.setAttribute("userFirst",user,WebRequest.SCOPE_SESSION);
		}
		if(flag==false){
			Loggers.LOGIN_LOGGER.debug("forgotPassword changes fail");
			Loggers.LOGIN_LOGGER.debug("...............................");
			return new ModelAndView("forgotpass");
		}
		Loggers.LOGIN_LOGGER.debug("forgotPassword changes success");
		Loggers.LOGIN_LOGGER.debug("...............................");
		return new ModelAndView("changepass","user",user);
	}


	@RequestMapping(value="changepassword.spring",method=RequestMethod.POST)
	public ModelAndView changePassword(User userNew,HttpSession session)throws Exception{
		Loggers.LOGIN_LOGGER.debug("LoginController.changePassword");
		User userSs=(User)session.getAttribute("userFirst");
		/*String email=user1.getEmail();
		user.setEmail(email);*/
		
		boolean flag=loginService.changePass(userSs,userNew);

		if(flag==false){
			Loggers.LOGIN_LOGGER.debug("password changes fail");
			Loggers.LOGIN_LOGGER.debug("...............................");
			return new ModelAndView("changefail");
		}
		Loggers.LOGIN_LOGGER.debug("password changes success ");
		Loggers.LOGIN_LOGGER.debug("...............................");		
		return new ModelAndView("changesuccess");
	}
}
