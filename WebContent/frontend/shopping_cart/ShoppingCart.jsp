<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shopping_cart.model.ShoppingCart" %>
<%@ page import="com.goods.model.*"%>

<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>購物車內容</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<div><c:import url="/frontend/navbar_front-end.html" charEncoding="UTF-8"/></div>
</head>
<body>

<%Vector<ShoppingCart> buylist = (Vector<ShoppingCart>) session.getAttribute("shoppingcart");%>
<%if (buylist != null && (buylist.size() > 0)) {%>

<img src="images/tomcat.gif"> <font size="+3">目前您購物車的內容如下：</font><p>
	<table class="table table-bordered table-striped table-hover"> 
		<thead>
			<tr>
				<th>商品編號</th>
				<th>活動主題編號</th>
				<th>商品名稱</th>
				<th>商品圖片</th>
				<th>商品單價</th>
				<th>促銷方案</th>
				<th>商品數量</th>
				<th>商品狀態</th>
			</tr>
		</thead>
		
		<%
		 for (int index = 0; index < buylist.size(); index++) {
			 ShoppingCart order = buylist.get(index);
		%>
		
		<tbody>
			<tr>
				<td><%=order.getGoods_no()%></td>
				<td><%=order.getEvetit_no()%></td>
				<td><%=order.getGoods_name()%></td>
				<td><img src="<%=request.getContextPath()%>/goods/goodsImg1.do?goods_no=<%=order.getGoods_no()%>" width=100px height= auto /></td>
				<td><%=order.getGoods_price()%></td>
				<td><%=order.getForsales_a()%></td>
				
<%-- 				<td><%=order.getGoods_quantity()%></td> --%>
				<td>
				<button class="ec-qty-minus">-</button>
				<input type="text" id="ordernum" name="goods_quantity" size="2" value=<%=order.getGoods_quantity()%>>
				<button class="ec-qty-plus">+</button>
				</td>
				
				<td><%=order.getGoods_status()%></td>
				<td>
		        	<form name="deleteForm" action="<%=request.getContextPath()%>/shopping_cart/ShoppingCart.do" method="POST">
					<input type="hidden" name="action" value="DELETE">
					<input type="hidden" name="del" value="<%= index %>">
					<input type="submit" value="刪除"></div>
		        	</form>
		        </td>
			</tr>
		</tbody>
		<%}%>
	</table>
	
<p>
	<form name="checkoutForm" action="<%=request.getContextPath()%>/shopping_cart/ShoppingCart.do" method="POST">
	    <input type="hidden" name="action"	value="CHECKOUT"> 
	    <input type="submit" value="付款結帳">
	</form>
<%}%>

	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		$(".ec-qty-minus").on("click", function(){
			var _num = parseInt($("#ordernum").val(), 10)-1;
				if (_num > 0) {
					$('#ordernum').val(_num);
				}
		});
		
		$(".ec-qty-plus").on("click", function(){
			var _num = parseInt($("#ordernum").val(), 10)+1;
				$('#ordernum').val(_num);
		});
	</script>
</body>


</html>