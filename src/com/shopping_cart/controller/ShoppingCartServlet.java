package com.shopping_cart.controller;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.shopping_cart.model.ShoppingCart;

public class ShoppingCartServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res)	throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		// res.setContentType("text/html; charset=UTF-8");
		// PrintWriter out = res.getWriter();

		HttpSession session = req.getSession();
		Vector<ShoppingCart> buylist = (Vector<ShoppingCart>) session.getAttribute("shoppingcart");
		String action = req.getParameter("action");

		if (!action.equals("CHECKOUT")) {

			// 刪除購物車中的書籍
			if (action.equals("DELETE")) {
				String del = req.getParameter("del");
				int d = Integer.parseInt(del);
				buylist.removeElementAt(d);
			}
			// 新增書籍至購物車中
			else if (action.equals("ADD")) {
				boolean match = false;

				// 取得後來新增的書籍
				ShoppingCart agoods = getShoppingCart(req);

				// 新增第一本書籍至購物車時
				if (buylist == null) {
					buylist = new Vector<ShoppingCart>();
					buylist.add(agoods);
				} else {
					for (int i = 0; i < buylist.size(); i++) {
						ShoppingCart goods = buylist.get(i);

						// 假若新增的書籍和購物車的書籍一樣時
						if (goods.getGoods_no().equals(agoods.getGoods_no())) {
							goods.setGoods_quantity(goods.getGoods_quantity() + agoods.getGoods_quantity());
							buylist.setElementAt(goods, i);
							match = true;
						} // end of if name matches
					} // end of for

					// 假若新增的書籍和購物車的書籍不一樣時
					if (!match)
						buylist.add(agoods);
				}
			}

			session.setAttribute("shoppingcart", buylist);
			String url = "/frontend/shopping_cart/ShoppingCart.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}

		// 結帳，計算購物車書籍價錢總數
		else if (action.equals("CHECKOUT")) {
			float total = 0;
			for (int i = 0; i < buylist.size(); i++) {
				ShoppingCart order = buylist.get(i);
				int goods_price = order.getGoods_price();
				int goods_quantity = order.getGoods_quantity();
				total += (goods_price * goods_quantity);
			}

			String amount = String.valueOf(total);
			req.setAttribute("amount", amount);
			String url = "/Checkout.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, res);
		}
	}

	private ShoppingCart getShoppingCart(HttpServletRequest req) {
		
		String goods_no = req.getParameter("goods_no");
		String evetit_no = req.getParameter("evetit_no");
		String goods_name = req.getParameter("goods_name");
		String goods_price = req.getParameter("goods_price");
		String goods_quantity = req.getParameter("goods_quantity");	
		String forsales_a = req.getParameter("forsales_a");
		String goods_status = req.getParameter("goods_status");
		
		ShoppingCart shoppingCart = new ShoppingCart();
		
		shoppingCart.getGoods_no();
		shoppingCart.getEvetit_no();
		shoppingCart.getGoods_name();
		shoppingCart.getGoods_price();
		shoppingCart.getGoods_quantity();
		shoppingCart.getForsales_a();
		shoppingCart.getGoods_status();
		return shoppingCart;
	}

}
