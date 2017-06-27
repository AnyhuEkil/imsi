package com.cto.auction.controller.userPayment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cto.auction.service.userPayment.UserPaymentService;
import com.cto.auction.vo.userPayment.UserPayment;

@Service
@RequestMapping("/*")
public class UserPaymentController {
	@Autowired(required=false)
	private UserPaymentService service;
	
	
}
