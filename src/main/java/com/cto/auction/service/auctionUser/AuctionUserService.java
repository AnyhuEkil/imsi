package com.cto.auction.service.auctionUser;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cto.auction.repository.auctionUser.AuctionUserDAO;
import com.cto.auction.vo.auctionUser.AuctionUser;

@Service
public class AuctionUserService {
	@Autowired(required=false)
	private AuctionUserDAO dao;
	
	public AuctionUser loginCheck(AuctionUser mem){
		return dao.loginCheck(mem);
	}
	
	public void auctionUserInsert(AuctionUser ins){
		dao.auctionUserInsert(ins);
	}
	
	public void logout(HttpSession session){
		session.invalidate();
	}
	
	public AuctionUser auctionUserInfo(AuctionUser info, HttpSession session){
		info.setEmail((String) session.getAttribute("email"));
		return dao.auctionUserInfo(info);
	}
	
	public void auctionUserUpdate(AuctionUser upt){
		dao.auctionUserUpdate(upt);
	}
	
	public void auctionUserDelete(AuctionUser del, HttpSession session){
		dao.auctionUserDelete(del);
		session.invalidate();
	}

	public List<AuctionUser> auctionUserList(AuctionUser list) {
		return dao.auctionUserList(list);
	}
	
	
	
}
