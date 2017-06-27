package com.cto.auction.service.userPayment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cto.auction.repository.userPayment.UserPaymentDAO;
import com.cto.auction.vo.userPayment.UserPayment;

@Service
public class UserPaymentService {
	@Autowired(required = false)
	private UserPaymentDAO dao;

	public void myPageUserPaymentProc(UserPayment upt) {
		dao.myPageUserPaymentProc(upt);
	}
	
	public UserPayment userPaymentInfo(UserPayment pay){
		return dao.userPaymentInfo(pay);
	}

}
