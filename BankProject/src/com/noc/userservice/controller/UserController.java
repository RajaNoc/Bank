package com.noc.userservice.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.noc.userservice.api.FileUploadForm;
import com.noc.userservice.service.UserService;
import com.noc.userservice.utils.Loggers;
import com.noc.userservice.vo.User;
import com.noc.userservice.vo.UserGroup;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value="/users.spring", method=RequestMethod.GET)
	public ModelAndView userHome(HttpServletRequest req, WebRequest wr)throws Exception{
		Loggers.USER_LOGGER.debug("UserController.userHome");

		String pageNos=(String)req.getParameter("pageNo");
		List<UserGroup> l=userService.userGroup();
		int size=l.size();
		int i=(int)Math.ceil(size/5.0);
		wr.setAttribute("pageNos", pageNos,wr.SCOPE_SESSION);
		wr.setAttribute("l", l, wr.SCOPE_SESSION);
		wr.setAttribute("i", i, wr.SCOPE_SESSION);
		System.out.println(i);

		int pageNo=Integer.parseInt(pageNos);
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;
			}}

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;

		if(last>size){
			last=size;
		}
		if(pageNo==1){

			System.out.println(size);
			List<UserGroup> ll=l.subList(0, last);
			System.out.println("retrning users.jsp");
			return new ModelAndView("users","grouplist",ll);
		}
		List<UserGroup> ll=l.subList(first, last);
		System.out.println("retrning users.jsp");
		return new ModelAndView("users","grouplist",ll);

	}
	/*
	 * @ Pagination for getting very first page
	 */

	@RequestMapping(value="/users.spring",params="operation=first", method=RequestMethod.GET)
	public ModelAndView userHomeFirst(HttpSession hs){
		Loggers.USER_LOGGER.debug("UserController.userHome");
		/*List<UserGroup> l=us.userGroup();*/
		List<UserGroup> l =(List<UserGroup>) hs.getAttribute("l");
		int size=l.size();
		System.out.println(size);
		List<UserGroup> ll=l.subList(0, (size+5)-size);
		System.out.println("retrning users.jsp");
		return new ModelAndView("users","grouplist",ll);

	}
	/*
	 * @ Pagination for getting Last page
	 */
	@RequestMapping(value="/users.spring",params="operation=last", method=RequestMethod.GET)
	public ModelAndView userHomeLast(HttpSession hs){
		Loggers.USER_LOGGER.debug("UserController.userHome");
		/*List<UserGroup> l=us.userGroup();*/
		List<UserGroup> l =(List<UserGroup>) hs.getAttribute("l");
		int size=l.size();
		System.out.println(size);
		List<UserGroup> ll=l.subList(size-5, size);
		System.out.println("retrning users.jsp");
		return new ModelAndView("users","grouplist",ll);
	}
	/*
	 * @ editing groupName
	 */
	@RequestMapping(value="/groupnameedit.spring",method=RequestMethod.GET)
	public ModelAndView userGroupnameEdit(String gname,String oldname){
		Loggers.USER_LOGGER.debug("UserController.userGroupnameEdit");
		boolean flag=userService.userGroupnameEdit(gname,oldname);

		if(flag){
			return new ModelAndView("editgroupname_s");
		}
		return new ModelAndView("update_f");

	}
	/**
	 * 
	 *for adding a usergroup name
	 *
	 */
	@RequestMapping(value="/addgroupname.spring",method=RequestMethod.GET)
	public ModelAndView userGroupnameAdd(UserGroup u){
		Loggers.USER_LOGGER.debug("UserController.userGroupnameAdd");
		boolean flag=userService.userGroupnameAdd(u);

		if(flag){
			return new ModelAndView("redirect:/users.spring?pageNo=1");
		}
		return new ModelAndView("add_f");

	}
	/*
	 * @ deleting group
	 */
	@RequestMapping(value="/groupnamedelete.spring",method=RequestMethod.GET)
	public ModelAndView userGroupnameDeletet(String gname,HttpSession hs){
		Loggers.USER_LOGGER.debug("UserController.userGroupnameDeletet");
		String i=(String)hs.getAttribute("pageNos");
		boolean flag=userService.userGroupnameDelete(gname);
		if(flag){
			/*return new ModelAndView("users");*/
			return new ModelAndView("redirect:/users.spring?pageNo="+i);
		}
		return new ModelAndView("delete_f");
	}

	@RequestMapping(value="/groupnamesearch.spring",method=RequestMethod.GET)
	public ModelAndView userGroupnameSearch(HttpServletRequest req,HttpServletResponse res,WebRequest wr){
		Loggers.USER_LOGGER.debug("UserController.userGroupnameSearch");

		String pageNos="1";
		String gname=(String)req.getParameter("gname");

		pageNos=(String)req.getParameter("pageNo");
		List<UserGroup> l=userService.userGroupnameSearch(gname);
		int size=l.size();
		int i=(int)Math.ceil(size/5.0);
		wr.setAttribute("l", l, wr.SCOPE_SESSION);
		wr.setAttribute("i", i, wr.SCOPE_SESSION);
		System.out.println(i);
		if(pageNos==null){
			pageNos="1";			
		}
		int pageNo=Integer.parseInt(pageNos);
		if(pageNo==0){
			pageNo=1;
		}

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;

			}}
		if(last>size){
			last=size;
		}
		if(pageNo==1){


			System.out.println(size);
			List<UserGroup> ll=l.subList(0, last);
			System.out.println("retrning users.jsp");
			return new ModelAndView("search","grouplist",ll);
		}
		List<UserGroup> ll=l.subList(first, last);
		System.out.println("retrning users.jsp");
		return new ModelAndView("search","grouplist",ll);

	}
	

	@RequestMapping(value="/users_AddUser.spring",method=RequestMethod.GET)
	public ModelAndView addUserTOGroupForm(User u){
		System.out.println("UserController.addUserTOGroup");

		return new ModelAndView("users_AddUser");

	}
	
	
	@RequestMapping(value="/addUser.spring",method=RequestMethod.POST)
	public ModelAndView addUserTOGroup(User u){
		System.out.println("UserController.addUserTOGroup");
		int flag=userService.addUserToGroup(u);
		if(flag>=0)
			Loggers.USER_LOGGER.debug("sucesss emails added is :"+flag);
		return new ModelAndView("redirect:/userlist.spring?pageNo=1");		
	}
	@RequestMapping(value="/userlist.spring", method=RequestMethod.GET)
	public ModelAndView userList(HttpServletRequest req,WebRequest wr)throws Exception{
		Loggers.USER_LOGGER.debug("UserController.userHome");

		String pageNos=(String)req.getParameter("pageNo");
		List<User> ul=userService.userList();
		int size=ul.size();
		int i=(int)Math.ceil(size/5.0);
		wr.setAttribute("pageNos", pageNos,wr.SCOPE_SESSION);
		wr.setAttribute("ul", ul, wr.SCOPE_SESSION);
		wr.setAttribute("i", i, wr.SCOPE_SESSION);
		System.out.println(i);

		int pageNo=Integer.parseInt(pageNos);

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;

			}}
		if(last>size){
			last=size;
		}
		if(pageNo==1){

			System.out.println(size);
			List<User> ll=ul.subList(0, last);
			System.out.println("retrning user_List.jsp");
			return new ModelAndView("user_List","userlist",ll);
		}
		List<User> ll=ul.subList(first, last);
		System.out.println("retrning user_List.jsp");
		return new ModelAndView("user_List","userlist",ll);
	}
	@RequestMapping(value="/userdelete.spring",method=RequestMethod.GET)
	public ModelAndView userDeletet(String uid,HttpSession hs){
		Loggers.USER_LOGGER.debug("UserController.userDeletet");

		boolean flag=userService.userDeletet(uid);
		if(flag){

			return new ModelAndView("redirect:/userlist.spring?pageNo=1");
		}
		return new ModelAndView("delete_f");
	}
	
	/**
	 * Group wise extracting
	 */
	@RequestMapping(value="/userlistbygroup.spring", params={"groupname"},method=RequestMethod.GET)
	public ModelAndView userListbygroup(HttpServletRequest req,WebRequest wr)throws Exception{
		Loggers.USER_LOGGER.debug("UserController.userListbygroup");
		String pageNos="1";
		String name=req.getParameter("groupname");
		System.out.println("UserController.userListByGroup"+name);
		
	    pageNos=(String)req.getParameter("pageNo");
		List<User> ulg=userService.userListByGroup(name);
		
		int size=ulg.size();
		int i=(int)Math.ceil(size/5.0);
		wr.setAttribute("pageNos", pageNos,wr.SCOPE_SESSION);
		wr.setAttribute("ulg", ulg, wr.SCOPE_SESSION);
		wr.setAttribute("i", i, wr.SCOPE_SESSION);
		System.out.println(i);
		
		
		if(pageNos==null){
			pageNos="1";			
		}
		int pageNo=Integer.parseInt(pageNos);
		if(pageNo==0){
			pageNo=1;
		}

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;

			}}
		if(last>size){
			last=size;
		}
		if(pageNo==1){

			System.out.println(size);
			List<User> ll=ulg.subList(0, last);
			System.out.println("retrning user_List.jsp");
			return new ModelAndView("user_List","userlist",ll);
		}
		List<User> ll=ulg.subList(first, last);
		System.out.println("retrning group wise list user_List.jsp");
		return new ModelAndView("user_List","userlist",ll);
	}
	
	@RequestMapping(value="/importuser.spring",method=RequestMethod.GET)
	public ModelAndView importUser(User u){
		System.out.println("UserController.importUser");

		return new ModelAndView("user_import");

	}
	@RequestMapping(value="/importuserdetails.spring",method=RequestMethod.POST)
	public ModelAndView importUserDetails(@ModelAttribute("uploadForm") FileUploadForm uploadForm,
			Model map, @RequestParam("file") MultipartFile file){
		System.out.println("UserController.importUserDetails");
		
		MultipartFile multipartFile = uploadForm.getFile();

		String fileName = "";
			
		if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File("C:/ABC"+ File.separator + "tmpFiles");
                System.out.println("FileSeparetor"+File.separator);
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + "import.csv");
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
               
            } catch (Exception e) {
            	e.printStackTrace();
            }
        } /*else {
                        
        }*/
	 
    	if (multipartFile != null) {
			fileName = multipartFile.getOriginalFilename();

		}
		map.addAttribute("files", fileName);

		String csvFile = "C:/ABC/tmpFiles/import.csv";
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
	 
		try {
	 
			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {
	 
			    // use comma as separator
				String[] country = line.split(cvsSplitBy);
				
				
		System.out.println("UserController.addUserTOGroup");
		int flag=userService.importUserTOGroup(country);
		if(flag>=0)
			Loggers.USER_LOGGER.debug("sucesss emails added is :"+flag);
		
	 	 
			}
	 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	 
		System.out.println("Done");
		
		return new ModelAndView("redirect:/userlist.spring?pageNo=1");
	}
	
	/**
	 * user mail search
	 */
	@RequestMapping(value="/usermailsearch.spring",method=RequestMethod.GET)
	public ModelAndView userMailSearch(HttpServletRequest req,HttpServletResponse res,WebRequest webRequest){
		Loggers.USER_LOGGER.debug("UserController.userMailSearch");

		String pageNos="1";
		String email=(String)req.getParameter("email");

		pageNos=(String)req.getParameter("pageNo");
		List<User> l=userService.userMailSearch(email);
		int size=l.size();
		int i=(int)Math.ceil(size/5.0);
		webRequest.setAttribute("ul", l, webRequest.SCOPE_SESSION);
		webRequest.setAttribute("ui", i, webRequest.SCOPE_SESSION);
		System.out.println(i);
		if(pageNos==null){
			pageNos="1";			
		}
		int pageNo=Integer.parseInt(pageNos);
		if(pageNo==0){
			pageNo=1;
		}

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;

			}}
		if(last>size){
			last=size;
		}
		if(pageNo==1){


			System.out.println(size);
			List<User> ull=l.subList(0, last);
			System.out.println("retrning users.jsp");
			return new ModelAndView("searchuser","ugrouplist",ull);
		}
		List<User> ull=l.subList(first, last);
		System.out.println("retrning users.jsp");
		return new ModelAndView("searchuser","ugrouplist",ull);

	}
}
