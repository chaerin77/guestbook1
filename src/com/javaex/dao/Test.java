package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class Test {

	public static void main(String[] args) {

		//Dao 테스트용
		GuestbookDao guestbookDao = new GuestbookDao();
		//guestbookDao.getList();
		List<GuestbookVo> gbList = guestbookDao.getList();
		
		System.out.println(gbList.toString());
		//테스트 해서 안나왔던 이유 -> db에서 커밋 안날려서 그럼~
	}

}
