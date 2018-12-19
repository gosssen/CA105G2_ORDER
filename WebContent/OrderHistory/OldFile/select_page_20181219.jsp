<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>IBM OrderHistory: Home</title>

<%--test commit 201812192004 --%>
<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>IBM OrderHistory: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for IBM OrderHistory: Home</p>

<h3>�q������d��:</h3>
	
<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllOrderHistory.jsp'>List</a> all OrderHistory.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="OrderHistory.do" >
        <b>��J�q��s�� (�pO2018121710001):</b>
        <input type="text" name="orderNo">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="�e�X">
    </FORM>
  </li>

  <jsp:useBean id="OrderHistorySvc" scope="page" class="com.ORDER_HISTORY.model.OrderHistoryService" />
   
  <li>
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
  </li>
  
  <li>
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
  </li>
</ul>

<h3>�q��޲z</h3>

<ul>
  <li><a href='addOrderHistory.jsp'>Add</a> a new OrderHistory.</li>
</ul>

</body>
</html>