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
	<div><c:import url="/frontend/navbar_front-end.jsp" charEncoding="UTF-8"/></div>
</head>
<body>

<%Vector<ShoppingCart> buylist = (Vector<ShoppingCart>) session.getAttribute("shoppingcart");%>
<%if (buylist != null && (buylist.size() > 0)) {%>

<font size="+3">目前您購物車的內容如下：</font><p>

	<form name="checkoutForm" class="test2" action="<%=request.getContextPath()%>/shopping_cart/ShoppingCart.do" method="POST">	
	<table id="tab" class="table table-bordered table-striped table-hover"> 
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
				<td class="price"><%=order.getGoods_price()%></td>
				<td><%=order.getForsales_a()%></td>

				<td>
<%-- 				<form name="updateForm" action="<%=request.getContextPath()%>/shopping_cart/ShoppingCart.do" method="POST"> --%>
				<input class="min" name="min" type="button" value="-" onclick="minone('goods_quantity_<%=index %>')"/>  
				<input id="goods_quantity_<%=index %>" type="text" class="ordernum test1" name="goods_quantity" size="2" value=<%=order.getGoods_quantity()%>>
				<input class="add" name="add" type="button" value="+" onclick="addone('goods_quantity_<%=index %>')"/> 
<!-- 				<input type="hidden" name="action" value="UPDATE"> -->
<%-- 				<input type="hidden" name="update" value="<%= index %>"> --%>
<!-- 				</form> -->
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

		<input type="hidden" name="goods_no" value=<%=order.getGoods_no()%>>
		<input type="hidden" name="evetit_no" value=<%=order.getGoods_name()%>>
		<input type="hidden" name="goods_name" value=<%=order.getGoods_no()%>>
		<input type="hidden" name="goods_price" value=<%=order.getGoods_price()%>>
		<input type="hidden" name="forsales_a" value=<%=order.getForsales_a()%>>
		<input type="hidden" class="ordernum test3" name="goods_quantity" >
<!-- 		<input type="hidden" class="ordernum" name="goods_quantity" id="test2" value=5> -->
		<input type="hidden" name="goods_status" value=<%=order.getGoods_status()%>>
	
	
		
	
		<%}%>
	</table>
	<input type="hidden" name="action"	value="CHECKOUT" > 
	<input type="submit" value="付款結帳" id="test4">
	</form>    
	
			<input type="button" value="返回 " class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/frontend/shopping_cart/EShop.jsp'" >

<p>總價：<label id="total"></label></p>
<%}%>

	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
	    $(function() {  
		    
// 	    	var arr = $('.test1');
//     		for(var i =0 ; i < arr.length; i++){
// 	    			$(this).siblings('.test3').val($(arr[i]).val());
// 				console.log($(arr[i]).val());
//     		}

// 			var arr = $('.test1');
// 	    	$(".test2").submit(function(){
// 	    		for(var i =0 ; i < arr.length; i++){
// 	    			$(this).siblings('.test3').val($(arr[i]).val());
// 					console.log($(arr[i]).val());
// 	    		}
// 	    	});
	    	
			
	    	
// 	    	$("#test4").click(function(){
// 	    		var arr = $('.test1');
// 	    		for(var i =0 ; i < arr.length; i++){
// 	    			$('table .test3').val($(arr[i]).val());
// 					console.log($(arr[i]).val());
// 	    		}
// 	    	});
	    	
	        $(".add").click(function() {  
	            var t = $(this).parent().find('input[class*=ordernum]');  
	            if(t.val()==""||undefined||null){  
	                t.val(0);  
	            }  
	            t.val(parseInt(t.val()) + 1)  
	            setTotal();  
	        })  
	        $(".min").click(function() {  
	            var t = $(this).parent().find('input[class*=ordernum]');  
	            if(t.val()==""||undefined||null){  
	                t.val(0);  
	            }  
	            t.val(parseInt(t.val()) - 1)  
	            if(parseInt(t.val()) < 1) {  
	                t.val(1);  
	            }  
	            setTotal();  
	        })  
// 	        $(".ordernum").keyup(function(){  
// 	            var t = $(this).parent().find('input[class*=ordernum]');  
// 	            if(parseInt(t.val())==""||undefined||null || isNaN(t.val())) {  
// 	                t.val(0);  
// 	            }  
// 	            setTotal();  
// 	        })  
// 	        function setTotal() {  
// 	            var s = 0;  
// 	            $("#tab td").each(function() {  
// 	                var t = $(this).find('input[class*=ordernum]').val();  
// 	                var p = $(this).find('td[class*=price]').text();  
// 	                if(parseInt(t)==""||undefined||null || isNaN(t) || isNaN(parseInt(t))){  
// 	                    t=0;  
// 	                }  
// 	                s += parseInt(t) * parseFloat(p);  
// 	            });  
// 	            $("#total").html(s.toFixed(2));  
// 	        }  
// 	        setTotal();  
	    })  
// 	    function addone(id){
// 	    	$("#"+id).click(function() {  
// 	            var t = $(this).parent().find('input[class*=ordernum]');  
// 	            if(t.val()==""||undefined||null){  
// 	                t.val(0);  
// 	            }  
// 	            t.val(parseInt(t.val()) + 1)  
// 	            setTotal();  
// 	        }) 
// 	    }
	    
// 	    function minone(id){
// 	    	$("#"+id).click(function() {  
// 	            var t = $(this).parent().find('input[class*=ordernum]');  
// 	            if(t.val()==""||undefined||null){  
// 	                t.val(0);  
// 	            }  
// 	            t.val(parseInt(t.val()) + 1)  
// 	            setTotal();  
// 	        }) 
// 	    }

// 		var arr = $('.ordernum');
// 	    for(var id=0; id<arr.length; id++) {
	    	
	    
// 		    function addone("goods_quantity_"+id) {
// 		    	$("#goods_quantity_"+id).click(function() { 
		    		
// 		    		var qu = $("#goods_quantity_"+id);		    		

// 		            qu.val(parseInt(qu.val()) + 1);  
// 		            console.log($(arr[i]).val());
// 		        }) 
// 		    }
		    
// 		    function minone("goods_quantity_"+id) {
// 		    	$("#goods_quantity_"+id).click(function() { 
		    		
// 		    		var qu = $("#goods_quantity_"+id);		    		
 
// 		            qu.val(parseInt(qu.val()) - 1);  
// 		            if(parseInt(qu.val()) < 1) {  
// 		            	qu.val(1);  
// 		            }  
// 		            console.log($(arr[i]).val());
// 		        }) 
// 		    }
// 	    }
	</script>  

</body>
	<div><c:import url="/frontend/footer_front-end.jsp" charEncoding="UTF-8"/></div>

</html>