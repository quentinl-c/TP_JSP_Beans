<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/app.css">
    <title>Cart</title>
</head>
<body>
    <div class="grid-container">
        <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
                <h3>Cart</h3>
                <table>
                    <tr>
                        <th>Quantity</th>
                        <th>Title</th>
                        <th>Price</th>
                        <th>Amount</th> <th></th>
                    </tr>
                    <c:forEach var="item" items="${cart.items}">
                    <tr>
                        <td>
                            <form accept-charset="UTF-8" action="CartProcess" method="post">
                                <input type="hidden" name="productCode" value="<c:out value='${item.book.code}'/>">
                                <input type="hidden" name="productPrice" value="<c:out value='${item.book.price}'/>">
                                <input type="hidden" name="productName" value="<c:out value='${item.book.title}'/>">
                                <input type="number" name="quantity" value="<c:out value='${item.quantity}'/>">
                                <input class="button" type="submit" value="Update">
                            </form>
                        </td>
                        <td><c:out value='${item.book.title}'/></td>
                        <td><c:out value='${item.book.price}'/> € </td>
                        <td><c:out value='${item.getTotal()}'/> €</td>
                        <td>
                            <form accept-charset="UTF-8" action="CartProcess" method="post">
                                <input type="hidden" name="productCode" value="<c:out value='${item.book.code}'/>" >
                                <input type="hidden" name="quantity" value="0">
                                <input class="alert button" type="submit" value="Remove Item" >
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </table>
                <p><b>To change the quantity</b>, enter the new quantity and click on the Update button.</p>
                <a class="button" href="welecome">Go shopping</a>
                <!-- Additional work : <a class="success button" href="checkout.jsp">Checkout</a> --> 
            </div>
        </div>
    </div>
</body>
</html>