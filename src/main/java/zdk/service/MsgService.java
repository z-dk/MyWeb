package zdk.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zdk.bean.Message;
import zdk.bean.MessageExample;
import zdk.bean.MessageExample.Criteria;
import zdk.dao.MessageMapper;

@Service
public class MsgService {
	
	@Autowired
	MessageMapper messageMapper;

	public void insertMsg(Message msg) {
		Date time = new Date();
		msg.setDateTime(time);
		messageMapper.insertSelective(msg);
	}

	public List<Message> getallmsg(boolean flag) {
		
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		criteria.andStatusEqualTo(flag);
		example.setOrderByClause("m_id DESC");
		
		List<Message> msgs = messageMapper.selectByExample(example);
		
		return msgs;
	}

	public void changeStatus(int mId,boolean status) {
		Message record = new Message();
		record.setmId(mId);
		record.setStatus(status);
		messageMapper.updateByPrimaryKeySelective(record);
	}

	

}
