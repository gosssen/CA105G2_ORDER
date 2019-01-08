<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shopping_cart.model.ShoppingCart" %>
<jsp:useBean id="goodsSvc" scope="page" class="com.goods.model.GoodsService" />
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>購物車結帳頁面</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<div><c:import url="/frontend/navbar_front-end.html" charEncoding="UTF-8"/></div>
</head>
<body>

<hr><p><center>

	<table class="table table-bordered table-striped table-hover"> 
		<thead>
			<tr>
				<th>商品編號</th>
				<th>活動主題編號</th>
				<th>商品名稱</th>
				<th>商品單價</th>
				<th>商品數量</th>
				<th>商品狀態</th>
			</tr>
		</thead>
	
	<%
		Vector<ShoppingCart> buylist = (Vector<ShoppingCart>) session.getAttribute("shoppingcart");
		String amount =  (String) request.getAttribute("amount");
	%>	
	<%	for (int i = 0; i < buylist.size(); i++) {
			ShoppingCart order = buylist.get(i);
			String goods_no = order.getGoods_no();
			String evetit_no = order.getEvetit_no();
			String goods_name = order.getGoods_name();
			Integer goods_price = order.getGoods_price();
			Integer goods_quantity = order.getGoods_quantity();	
			String goods_status = order.getGoods_status();
			
			
	%>
	<tr>
		<td><div align="center"><b><%=goods_no%></b></div></td>
		<td><div align="center"><b><%=evetit_no%></b></div></td>
		<td><div align="center"><b><%=goods_name%></b></div></td>
		<td><div align="center"><b><%=goods_price%></b></div></td>
		<td><div align="center"><b><%=goods_quantity%></b></div></td>
		<td><div align="center"><b><%=goods_status%></b></div></td>
		
	</tr>
	<%
		}
	%>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><div align="center"><font color="red"><b>總金額：</b></font></div></td>
		<td></td>
		<td> <font color="red"><b>$<%=amount%></b></font> </td>
	</tr>
</table>
<p><a href="<%=request.getContextPath()%>/frontend/shopping_cart/EShop.jsp">是否繼續購物</a>
</center>
</body>
</html>
