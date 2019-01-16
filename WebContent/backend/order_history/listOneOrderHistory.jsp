<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<%@ page import="com.order_history.model.*"%>

<%
  OrderHistoryVO orderHistoryVO = (OrderHistoryVO) request.getAttribute("orderHistoryVO");
%>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
		<title>ETIckeTs - 訂單紀錄</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<!--[if lt IE 9]>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<jsp:include page="/backend/navbar_back-end.jsp" flush="true"/>
	<style>
		body{
			font-family:微軟正黑體!important;
		}
	</style>
	<body>
		<div class="container-fluid">
			<div class="col-xs-12 col-sm-1"></div>
			<div class="row">
				<div class="col-xs-12 col-sm-10">
<!-- 					<h4><a href="select_page.jsp"><img src="images/LOGO1.png" width="70" height="50" border="0"><b>首頁</b></a></h4> -->
					<div class="panel panel-info">
						<div class="panel-heading">
					  		<h3 class="panel-title">訂單紀錄</h3>
						</div>

							<table class="table table-bordered table-striped table-hover">

								<thead>
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
								</thead>
		
								<tbody>

									<tr>
								 		<td>${orderHistoryVO.order_no}</td>
										<td>${orderHistoryVO.member_no}</td>
										<td>${orderHistoryVO.order_price}</td>
										<td>
											${(orderHistoryVO.pay_methods == "CREDITCARD") ? '信用卡' : '' }
											${(orderHistoryVO.pay_methods == "EWALLET") ? '電子錢包' : '' }
										</td>
										<td>
											${(orderHistoryVO.shipping_methods == "STOREPICKUP") ? '超商取貨' : '' }
											${(orderHistoryVO.shipping_methods == "HOMEDELIVERY") ? '宅配' : '' }
										</td>
										</td>
										<td><fmt:formatDate value="${orderHistoryVO.order_date}" pattern="yyyy-MM-dd"/></td>
										<td><fmt:formatDate value="${orderHistoryVO.order_etd}" pattern="yyyy-MM-dd"/></td>
										<td><fmt:formatDate value="${orderHistoryVO.pickup_date}" pattern="yyyy-MM-dd"/></td>
										<td>${orderHistoryVO.receiver_add}</td>
										<td>${orderHistoryVO.receiver_name}</td> 
										<td>${orderHistoryVO.receiver_tel}</td>
										<td>
											${(orderHistoryVO.order_status == "PAYMENT1") ? '已付款' : '' }
											${(orderHistoryVO.order_status == "SHIPPING2") ? '出貨中' : '' }
											${(orderHistoryVO.order_status == "SHIPMENT3") ? '已出貨' : '' }
											${(orderHistoryVO.order_status == "COMPLETE4") ? '已完成' : '' }
											${(orderHistoryVO.order_status == "CANCEL5") ? '已取消' : '' }
										</td>
			
										<td>
										  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_history/OrderHistory.do" style="margin-bottom: 0px;">
										     <input type="submit" value="修改" class="btn btn-warning">
										     <input type="hidden" name="order_no"  value="${orderHistoryVO.order_no}">
										     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
										</td>
										<td>
										  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_history/OrderHistory.do" style="margin-bottom: 0px;">
										     <input type="submit" value="刪除" class="btn btn-danger">
										     <input type="hidden" name="order_no"  value="${orderHistoryVO.order_no}">
										     <input type="hidden" name="action" value="delete_OrderHistory"></FORM>
										</td>
										
									</tr>

								</tbody>
							</table>

					</div>

				</div>
			</div>
		</div>
		
		<script src="https://code.jquery.com/jquery.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>
