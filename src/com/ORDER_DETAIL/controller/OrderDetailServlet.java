package com.ORDER_DETAIL.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.ORDER_DETAIL.model.*;

public class OrderDetailServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		if ("getOne_For_Display".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String str = req.getParameter("orderNo");
				if (str == null || (str.trim()).length() == 0) {
					errorMsgs.add("請輸入訂單編號");
				}
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/select_page.jsp");
					failureView.forward(req, res);
					return;
				}
				String orderNo = null;
				try {
					orderNo = new String(str);				
				} catch (Exception e) {
					errorMsgs.add("訂單編號格式不正確");
				}
				
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/select_page.jsp");
					failureView.forward(req, res);
					return;
				}
				
				OrderDetailService orderDetailSvc = new OrderDetailService();
				OrderDetailVO orderDetailVO = orderDetailSvc.getOneOrderDetail(orderNo);
				if (orderDetailVO == null) {
					errorMsgs.add("查無資料");
				}
				
				if (!errorMsgs.isEmpty()) {
					RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/select_page.jsp");
					failureView.forward(req, res);
					return;
				}
				
				req.setAttribute("orderDetailVO", orderDetailVO);
				String url = "/OrderDetail/listOneOrderDetail.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);
				successView.forward(req, res);
				
			}  catch (Exception e) {
				errorMsgs.add("無法取得資料：" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/select_page.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("getOne_For_Update".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String orderNo = new  String(req.getParameter("orderNo"));
				
				OrderDetailService orderDetailSvc = new OrderDetailService();
				OrderDetailVO orderDetailVO = orderDetailSvc.getOneOrderDetail(orderNo);
				
				req.setAttribute("orderDetailVO", orderDetailVO);
				String url = "/OrderDetail/update_OrderDetailVO_input.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);
				successView.forward(req, res);
				
			} catch (Exception e) {
				errorMsgs.add("無法取得要修改的資料：" + e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/listAllOrderDetail.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String orderNo = new String(req.getParameter("orderNo").trim());
				String goodsNo = new String(req.getParameter("goodsNo").trim());
				Double goodsBonus = null;
				try {
					goodsBonus = new Double(req.getParameter("goodsBonus").trim());
				} catch (NumberFormatException e) {
					goodsBonus = 0.0;
					errorMsgs.add("請填入實際交易金額。");
				}
				Double goodsPc = null;
				try {
					goodsPc = new Double(req.getParameter("goodsBonus").trim());
				} catch (NumberFormatException e) {
					goodsPc = 0.0;
					errorMsgs.add("請填入商品數量。");
				}
				
								
				OrderDetailVO orderDetailVO = new OrderDetailVO();
				orderDetailVO.setOrderNo(orderNo);
				orderDetailVO.setGoodsNo(goodsNo);
				orderDetailVO.setGoodsBonus(goodsBonus);
				orderDetailVO.setGoodsPc(goodsPc);;
	
				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("orderDetailVO", orderDetailVO); 
					RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/update_OrderDetail_input.jsp");
					failureView.forward(req, res);
					return;
				}
				
				OrderDetailService orderDetailSvc = new OrderDetailService();
				orderDetailVO = orderDetailSvc.updateOrderDetail(goodsNo, goodsBonus, goodsPc);
			
				req.setAttribute("orderDetailVO", orderDetailVO); 
				String url = "/OrderDetailVO/listOrderDetail.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);
				successView.forward(req, res);
				
			} catch (Exception e) {
				errorMsgs.add("修改資料失敗："+e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/update_OrderDetail_input.jsp");
				failureView.forward(req, res);
			}
		}
		
		if ("insert".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String orderNo = new String(req.getParameter("orderNo").trim());
				String goodsNo = new String(req.getParameter("goodsNo").trim());
				
				Double goodsBonus = null;
				try {
					goodsBonus = new Double(req.getParameter("goodsBonus").trim());
				} catch (NumberFormatException e) {
					goodsBonus = 0.0;
					errorMsgs.add("請填入實際交易金額。");
				}
				Double goodsPc = null;
				try {
					goodsPc = new Double(req.getParameter("goodsPc").trim());
				} catch (NumberFormatException e) {
					goodsPc = 0.0;
					errorMsgs.add("請填入商品數量。");
				}
				
				OrderDetailVO orderDetailVO = new OrderDetailVO();
				orderDetailVO.setGoodsNo(goodsNo);
				orderDetailVO.setGoodsBonus(goodsBonus);
				orderDetailVO.setGoodsPc(goodsPc);;
				
				if (!errorMsgs.isEmpty()) {
					req.setAttribute("orderDetailVO", orderDetailVO); 
					RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/addOrderDetail.jsp");
					failureView.forward(req, res);
					return;
				}
				
				OrderDetailService orderDetailSvc = new OrderDetailService();
				orderDetailVO = orderDetailSvc.addOrderDetail(orderNo, goodsNo, goodsBonus, goodsPc);
				
				
				String url = "/OrderDetail/listAllOrderDetail.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);
				successView.forward(req, res);
				
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req.getRequestDispatcher("/OrderDetail/addOrderDetail.jsp");
				failureView.forward(req, res);
			}		
		}
		
		if ("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
		
			try {
				String orderNo = new String(req.getParameter("orderNo"));
				OrderDetailService orderDetailSvc = new OrderDetailService();
				orderDetailSvc.deleteOrderDetail(orderNo);
				
				String url = "/OrderDetail/listAllOrderDetail.jsp";
				RequestDispatcher successView = req.getRequestDispatcher(url);
				successView.forward(req, res);
				
			} catch (Exception e) {
				errorMsgs.add("刪除資料失敗:" + e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/OrderDetail/listAllOrderDetail.jsp");
				failureView.forward(req, res);
			}
		}
		
	}
}
