<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<%@ page import="com.ORDER_HISTORY.model.*"%>

<%
    OrderHistoryService orderHistorySvc = new OrderHistoryService();
    List<OrderHistoryVO> list = orderHistorySvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>所有員工資料 - listAllOrderHistory.jsp</title>

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
</style>

<style>
  table {
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
	width: 100%; 
  }
  table, th, td {
    border: 1px solid #3366ff;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有員工資料 - listAllOrderHistory.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

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
		<th>修改</th>
		<th>刪除</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="orderHistoryVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
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
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/OrderHistory/OrderHistory.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="orderNo"  value="${orderHistoryVO.orderNo}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/OrderHistory/OrderHistory.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="orderNo"  value="${orderHistoryVO.orderNo}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>