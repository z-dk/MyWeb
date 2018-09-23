package zdk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zdk.bean.Admin;
import zdk.bean.AdminExample;
import zdk.bean.AdminExample.Criteria;
import zdk.dao.AdminMapper;

@Service
public class AdminService {
	
	@Autowired
	AdminMapper adminMapper;

	public Admin getAdmin(String adName) {

		AdminExample example = new AdminExample();
		
		Admin ad = adminMapper.selectByAdName(adName);
		return ad;
	}

	
}
