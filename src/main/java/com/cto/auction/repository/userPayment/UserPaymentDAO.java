package com.cto.auction.repository.userPayment;

import org.springframework.stereotype.Repository;

import com.cto.auction.vo.userPayment.UserPayment;

@Repository
public interface UserPaymentDAO {
	public UserPayment userPaymentInfo(UserPayment pay);
	public void myPageUserPaymentProc(UserPayment ins);
	
	
	
	
	
	
}
