package com.order_detail.model;

import java.util.*;

public interface OrderDetailDAO_interface {
	public void insert(OrderDetailVO orderDetailVO);
    public void update(OrderDetailVO orderDetailVO);
    public void delete(String order_no);
    public OrderDetailVO findByPrimaryKey(String order_no);
    public List<OrderDetailVO> getAll();
    public void insertOrderHistory (OrderDetailVO orderDetailVO, java.sql.Connection con);
    
}