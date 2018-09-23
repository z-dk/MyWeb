package zdk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zdk.bean.Message;
import zdk.bean.Msg;
import zdk.service.MsgService;

@Controller
public class MsgController {
	
	@Autowired
	MsgService msgService;

	@ResponseBody
	@RequestMapping(value="/commitmsg",method=RequestMethod.POST)
	public Msg addMessage(Message msg) {
		msgService.insertMsg(msg);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/getmessages",method=RequestMethod.GET)
	public Msg getMessages(@RequestParam(value="pn",required=false, defaultValue="1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Message> msgs = msgService.getallmsg(true);
		PageInfo page = new PageInfo(msgs, 5);
		return Msg.success().add("pageInfo", page);
	}
	
}
