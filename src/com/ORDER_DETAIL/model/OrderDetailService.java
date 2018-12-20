package com.ORDER_DETAIL.model;

import java.sql.Timestamp;
import java.util.List;

public class OrderDetailService {

	private OrderDetailDAO_interface dao;
	
	public OrderDetailService() {
		dao = new OrderDetailDAO();
	}
	
	public OrderDetailVO addOrderDetail(String orderNo, String goodsNo, Double goodsBonus,	Double goodsPc ) {
		
		OrderDetailVO orderDetailVO = new OrderDetailVO();
		
		orderDetailVO.setOrderNo(orderNo);
		orderDetailVO.setGoodsNo(goodsNo);
		orderDetailVO.setGoodsBonus(goodsBonus);
		orderDetailVO.setGoodsPc(goodsPc);

		dao.insert(orderDetailVO);
		
		return orderDetailVO;
	}
	
	public OrderDetailVO updateOrderDetail(String goodsNo, Double goodsBonus,	Double goodsPc ) {
		
		OrderDetailVO orderDetailVO = new OrderDetailVO();
		
//		orderDetailVO.setOrderNo(orderNo);
		orderDetailVO.setGoodsNo(goodsNo);
		orderDetailVO.setGoodsBonus(goodsBonus);
		orderDetailVO.setGoodsPc(goodsPc);
		dao.update(orderDetailVO);
		
		return orderDetailVO;
	}
	
	public void deleteOrderDetail(String orderNo) {
		dao.delete(orderNo);
	}
	
	public OrderDetailVO getOneOrderDetail(String orderNo) {
		return dao.findByPrimaryKey(orderNo);
	}
	
	public List<OrderDetailVO> getAll() {
		return dao.getAll();
	}
	
}
