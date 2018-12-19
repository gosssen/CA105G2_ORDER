<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ORDER_HISTORY.model.*"%>

<%
	OrderHistoryVO orderHistoryVO = (OrderHistoryVO) request.getAttribute("orderHistoryVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>訂單紀錄新增 - addOrderHistory.jsp</title>

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
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>訂單紀錄新增 - addOrderHistory_input.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料新增：</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤：</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="OrderHistory.do" name="form1">
<table>
<!-- 	<tr> -->
<!-- 		<td>訂單編號：<font color=red><b>*</b></font></td> -->
<%-- 		<td><%=orderHistoryVO.getOrderNo()%></td> --%>
<!-- 	</tr> -->
	<tr>
		<td>會員編號：<font color=red><b>*</b></font></td>
		<td><input type="TEXT" name="memberNo" size="15" 
			 value="<%= (orderHistoryVO==null)? "M000001" : orderHistoryVO.getMemberNo()%>" /></td>
	</tr>
	<tr>
		<td>訂單總金額：</td>
		<td><input type="TEXT" name="orderPrice" size="15"
			 value="<%= (orderHistoryVO==null)? "1000000" : orderHistoryVO.getOrderPrice()%>" /></td>
	</tr>
	
	<jsp:useBean id="OrderHistorySvc" scope="page" class="com.ORDER_HISTORY.model.OrderHistoryService" />
	
	<tr>
		<td>付款方式：<font color=red><b>*</b></font></td>
		<td><select size="1" name="payMethods">
			<c:forEach var="orderHistoryVO" items="${OrderHistorySvc.all}">
				<option value="${orderHistoryVO.payMethods}">${orderHistoryVO.payMethods}
			</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td>出貨方式：<font color=red><b>*</b></font></td>
		<td><select size="1" name="shippingMethods">
			<c:forEach var="orderHistoryVO" items="${OrderHistorySvc.all}">
				<option value="${orderHistoryVO.shippingMethods}" >${orderHistoryVO.shippingMethods}
			</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td>訂購日期：</td>
		<td><input name="orderDate" id="f_date1" type="text" ></td>
	</tr>
	<tr>
		<td>出貨日期：</td>
		<td><input name="orderEtd" id="f_date2" type="text" ></td>
	</tr>
	<tr>
		<td>取貨日期：</td>
		<td><input name="pickupDate" id="f_date3" type="text" ></td>
	</tr>
	<tr>
		<td>收件人地址：</td>
		<td><input type="TEXT" name="receiverAdd" size="45"
			 value="<%= (orderHistoryVO==null)? "320桃園市中壢區福德一路177巷60弄2號" : orderHistoryVO.getReceiverAdd()%>" /></td>
	</tr>
	<tr>
		<td>收件人名稱：</td>
		<td><input type="TEXT" name="receiverName" size="15" 
			 value="<%= (orderHistoryVO==null)? "Peter1" : orderHistoryVO.getReceiverName()%>" /></td>
	</tr>
	<tr>
		<td>收件人電話：</td>
		<td><input type="TEXT" name="receiverTel" size="15" 
			 value="<%= (orderHistoryVO==null)? "0912345678" : orderHistoryVO.getReceiverTel()%>" /></td>
	</tr>
	<tr>
		<td>訂單狀態：<font color=red><b>*</b></font></td>
		<td><select size="1" name="orderStatus">
			<c:forEach var="orderHistoryVO" items="${OrderHistorySvc.all}">
				<option value="${orderHistoryVO.orderStatus}" >${orderHistoryVO.orderStatus}
			</c:forEach>
		</select></td>
	</tr>

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="送出新增"></FORM>
</body>



<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->
<% 
  java.sql.Timestamp orderDate = null;
  try {
		orderDate = orderHistoryVO.getOrderDate();
   } catch (Exception e) {
		orderDate = new java.sql.Timestamp(System.currentTimeMillis());
   }
  
  java.sql.Timestamp orderEtd = null;
  try {
		orderEtd = orderHistoryVO.getOrderEtd();
   } catch (Exception e) {
		orderEtd = new java.sql.Timestamp(System.currentTimeMillis());
   }
  
  java.sql.Timestamp pickupDate = null;
  try {
		pickupDate = orderHistoryVO.getPickupDate();
   } catch (Exception e) {
		pickupDate = new java.sql.Timestamp(System.currentTimeMillis());
   }
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/OrderHistory/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/OrderHistory/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/OrderHistory/datetimepicker/jquery.datetimepicker.full.js"></script>

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
 	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
 		   value: '<%=orderDate%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });

        $('#f_date2').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
 		   value: '<%=orderEtd%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $('#f_date3').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
 		   value: '<%=pickupDate%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
   
        // ----------------------------------------------------------以下用來排定無法選擇的日期-----------------------------------------------------------

        //      1.以下為某一天之前的日期無法選擇
        //      var somedate1 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});

        
        //      2.以下為某一天之後的日期無法選擇
        //      var somedate2 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


        //      3.以下為兩個日期之外的日期無法選擇 (也可按需要換成其他日期)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //		             ||
        //		            date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});
        
</script>
</html>