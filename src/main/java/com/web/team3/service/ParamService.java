package com.web.team3.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.web.team3.vo.ParamVO;

@Service
public class ParamService {
	private static List<ParamVO> paramList = new ArrayList<ParamVO>();

	public int insertParam(ParamVO param) {
		int num = 1;
		if (paramList.size() != 0) {
			ParamVO tmpParam = paramList.get(paramList.size()-1);
			num = tmpParam.getNum()+1;
		}
		param.setNum(num);
		if (paramList.add(param)) {
			return 1;
		}
		return 0;
	}
	
	public List<ParamVO> getParams(){
		return paramList;
	}
}
