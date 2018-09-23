package zdk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import zdk.bean.Admin;
import zdk.bean.Message;
import zdk.bean.Msg;
import zdk.service.AdminService;
import zdk.service.MsgService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	MsgService msgService;

	//管理员登录模块
	
	@RequestMapping("/toadminlogin")
	public ModelAndView adlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/adlogin");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/check",method=RequestMethod.POST)
	public Msg checkAdLogin(Admin admin,HttpServletRequest request) {
		Admin ad = adminService.getAdmin(admin.getAdName());
		if(ad==null||ad.equals("")) {
			return Msg.fail();
		}else if(admin.getAdPassword().equals(ad.getAdPassword())) {
			request.getSession().setAttribute("adName",ad.getAdName());
			request.getSession().setAttribute("adId",ad.getAdId());
			
			return Msg.success().add("admin", ad);
		}
		return Msg.fail();
	}
	
	@RequestMapping("/toadminpage")
	public ModelAndView toAdminPage(Admin admin) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("admin",admin);
		List<Message> msgs = getWaitCheckMsg(false);
		List<Message> msgses = getWaitCheckMsg(true);
		mv.addObject("msgs",msgs);
		mv.addObject("msgses",msgses);
		mv.setViewName("admin/admin");
		return mv;
	}
	
	//管理员业务处理模块
	@ResponseBody
	@RequestMapping("/getwaitmsg")
	public List<Message> getWaitCheckMsg(boolean flag) {
		List<Message> msgs= msgService.getallmsg(flag);
		return msgs;
	}
	
	@ResponseBody
	@RequestMapping(value="/changestatus",method=RequestMethod.POST)
	public Msg changeStatus(int mId,boolean status) {
		msgService.changeStatus(mId,status);
		return Msg.success();
	}
	
}
