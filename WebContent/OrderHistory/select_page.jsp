<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>�q������d��</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12"></div>
			<h4><a href="select_page.jsp"><img src="images/LOGO1.png" width="70" height="50" border="0"><b>����</b></a></h4>
			<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">�q������d��</h3>
					</div>
				<div class="panel-body">
				<c:if test="${not empty errorMsgs}">
					<font style="color:red">�Эץ��H�U���~:</font>
						<ul>
						    <c:forEach var="message" items="${errorMsgs}">
								<li style="color:red">${message}</li>
							</c:forEach>
						</ul>
				</c:if>
	
						<a href='listAllOrderHistory.jsp'>�d�ߥ����q�����</a><br><br>  						
	
				<FORM METHOD="post" ACTION="OrderHistory.do" >
				    <b>��J�q��s�� (�pO2018121710001):</b>
				    <input type="text" name="orderNo">
				    <input type="hidden" name="action" value="getOne_For_Display">
				    <input type="submit" value="�e�X">
				</FORM>
	
				<jsp:useBean id="OrderHistorySvc" scope="page" class="com.ORDER_HISTORY.model.OrderHistoryService" />
	
				<FORM METHOD="post" ACTION="OrderHistory.do" >
				  <b>��ܭq��s��:</b>
					<select size="1" name="orderNo">
						<c:forEach var="OrderHistoryVO" items="${OrderHistorySvc.all}" > 
							<option value="${OrderHistoryVO.orderNo}">${OrderHistoryVO.orderNo}
						</c:forEach>   
					</select>
					<input type="hidden" name="action" value="getOne_For_Display">
					<input type="submit" value="�e�X">
				</FORM>
	
				<FORM METHOD="post" ACTION="OrderHistory.do" >
					<b>��ܷ|���s��:</b>
					<select size="1" name="orderNo">
						<c:forEach var="OrderHistoryVO" items="${OrderHistorySvc.all}" > 
							<option value="${OrderHistoryVO.orderNo}">${OrderHistoryVO.memberNo}
						</c:forEach>   
					</select>
					<input type="hidden" name="action" value="getOne_For_Display">
					<input type="submit" value="�e�X">
				</FORM>
				</div>
			</div>
		</div>

		
		<div class="row">			
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">�q��޲z</h3>
				</div>
				<div class="panel-body">
					<a href='addOrderHistory.jsp'>�s�W�@���q�����</a>
				</div>
			</div>
		</div>
		
	</div>


	
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>