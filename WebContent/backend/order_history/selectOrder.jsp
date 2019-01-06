<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>訂單管理</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<div><c:import url="/backend/navbar_back-end.html" charEncoding="UTF-8"/></div>

<body>

<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 col-sm-2"></div>
		<div class="col-xs-12 col-sm-8">
			<ol class="breadcrumb">
				<li>
					<a href="#">首頁</a>
				</li>
				<li>
					<a href="#">商品管理</a>
				</li>
				<li class="active">商品訂單管理</li>
			</ol>

			<div role="tabpanel">
			    <!-- 標籤面板：標籤區 -->
			    <ul class="nav nav-tabs" role="tablist">
			        <li role="presentation" class="active">
			            <a href="#history" aria-controls="history" role="tab" data-toggle="tab">訂單紀錄</a>
			        </li>
			        <li role="presentation">
			            <a href="#detail" aria-controls="detail" role="tab" data-toggle="tab">訂單明細</a>
			        </li>

			    </ul>
			
			    <!-- 標籤面板：內容區 -->
			    <div class="tab-content">
					<!-- 標籤面板：訂單紀錄 -->
			        <div role="tabpanel" class="tab-pane active" id="history">
			        	
					
						<c:if test="${not empty errorMsgs}">
							<font style="color:red">請修正以下錯誤:</font>
								<ul>
								    <c:forEach var="message" items="${errorMsgs}">
										<li style="color:red">${message}</li>
									</c:forEach>
								</ul>
						</c:if>
						<br><input type="button" class="btn btn-primary" value="查詢全部" onclick="location.href='listAllOrderHistory.jsp'">
						<input type="button" class="btn btn-primary" value="新增一筆訂單" onclick="location.href='addOrderHistoryAndOrderDetail.jsp'">
						<hr>

	
						<jsp:useBean id="OrderHistorySvc" scope="page" class="com.order_history.model.OrderHistoryService" />
						
						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_history/OrderHistory.do" >
						  <b>選擇訂單編號:</b>
							<select size="1" name="order_no">
								<c:forEach var="OrderHistoryVO" items="${OrderHistorySvc.all}" > 
									<option value="${OrderHistoryVO.order_no}">${OrderHistoryVO.order_no}
								</c:forEach>   
							</select>
							<input type="hidden" name="action" value="getOne_For_Display">
							<input type="submit" value="查詢" class="btn btn-info">
						</FORM>
	
						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_history/OrderHistory.do" >
							<b>選擇會員編號:</b>
							<select size="1" name="member_no">
								<c:forEach var="OrderHistoryVO" items="${OrderHistorySvc.allMemberNo}" > 
									<option value="${OrderHistoryVO}">${OrderHistoryVO}
								</c:forEach>   
							</select>
							<input type="hidden" name="action" value="getOne_For_MemAllOrd">
							<input type="submit" value="查詢" class="btn btn-info">
						</FORM>

			        </div>
					
					<!-- 標籤面板：訂單明細 -->
			        <div role="tabpanel" class="tab-pane" id="detail">
			        	
			        	<c:if test="${not empty errorMsgs}">
							<font style="color:red">請修正以下錯誤:</font>
								<ul>
								    <c:forEach var="message" items="${errorMsgs}">
										<li style="color:red">${message}</li>
									</c:forEach>
								</ul>
						</c:if>
											
						<br><input type="button" class="btn btn-primary" value="查詢全部" onclick="location.href='<%=request.getContextPath()%>/backend/order_detail/listAllOrderDetail.jsp'">
						<hr>
						
						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_detail/OrderDetail.do" >
						    <b>輸入訂單編號 (如O2018111110011):</b>
						    <input type="text" name="order_no">
						    <input type="hidden" name="action" value="getOne_For_Display">
						    <input type="submit" value="查詢" class="btn btn-info">
						</FORM>
			
						<jsp:useBean id="OrderDetailSvc" scope="page" class="com.order_detail.model.OrderDetailService" />
						
						<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order_detail/OrderDetail.do" >
						  <b>選擇訂單編號:</b>
							<select size="1" name="order_no">
								<c:forEach var="OrderDetailVO" items="${OrderDetailSvc.allOrderNo}" > 
									<option value="${OrderDetailVO}">${OrderDetailVO}
								</c:forEach>   
							</select>
							<input type="hidden" name="action" value="getAll_OrderDetail_For_A_OrderNo">
							<input type="submit" value="查詢" class="btn btn-info">
						</FORM>
					</div>
			    </div>
			</div>
		</div>
	</div>
</div>

	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });

        $('#f_date2').datetimepicker({
           theme: '',              //theme: 'dark',
           timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $('#f_date3').datetimepicker({
           theme: '',              //theme: 'dark',
           timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
</script>
</html>