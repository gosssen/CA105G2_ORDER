<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<%@ page import="com.ORDER_HISTORY.model.*"%>

<%
  OrderHistoryVO orderHistoryVO = (OrderHistoryVO) request.getAttribute("orderHistoryVO");
%>

<html>
<head>
<title>訂單紀錄 - ListOneOrderHistory.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
table {
	width: 100%;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>此頁暫練習採用 Script 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>員工資料 - ListOneOrderHistory.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>訂單編號</th>
		<th>會員編號</th>
		<th>訂單總金額</th>
		<th>付款方式</th>
		<th>出貨方式</th>
		<th>訂購日期</th>
		<th>出貨日期</th>
		<th>取貨日期</th>
		<th>送貨地址</th>
		<th>收件人名稱</th>
		<th>收件人電話</th>
		<th>訂單狀態</th>
	</tr>
	
	<tr>
<%-- 		<td><%=orderHistoryVO.getOrderNo()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getMemberNo()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getOrderPrice()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getPayMethods()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getShippingMethods()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getOrderDate()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getOrderEtd()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getPickupDate()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getReceiverAdd()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getReceiverName()%></td>  --%>
<%-- 		<td><%=orderHistoryVO.getReceiverTel()%></td> --%>
<%-- 		<td><%=orderHistoryVO.getOrderStatus()%></td> --%>
		
 		<td>${orderHistoryVO.orderNo}</td>
		<td>${orderHistoryVO.memberNo}</td>
		<td>${orderHistoryVO.orderPrice}</td>
		<td>${orderHistoryVO.payMethods}</td>
		<td>${orderHistoryVO.shippingMethods}</td>
		<td><fmt:formatDate value="${orderHistoryVO.orderDate}" pattern="yyyy-MM-dd"/></td>
		<td><fmt:formatDate value="${orderHistoryVO.orderEtd}" pattern="yyyy-MM-dd"/></td>
		<td><fmt:formatDate value="${orderHistoryVO.pickupDate}" pattern="yyyy-MM-dd"/></td>
		<td>${orderHistoryVO.receiverAdd}</td>
		<td>${orderHistoryVO.receiverName}</td> 
		<td>${orderHistoryVO.receiverTel}</td>
		<td>${orderHistoryVO.orderStatus}</td>  
	</tr>
</table>

</body>
</html>