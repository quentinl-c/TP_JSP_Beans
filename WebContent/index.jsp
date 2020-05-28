<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/app.css">
    <title>Book Store</title>
</head>
<body>
    <div class="grid-container">
        <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
                <h3>Book Store</h3>
                <table>
                    <tr><th>Description</th>
                        <th class="right">Price</th>
                        <th>€</th>
                    </tr>
                    <tr><td>La Servante écarlate - Margaret Atwood</td>
                    	<td class="right">12 €</td>
                        <td><form accept-charset="UTF-8" action="CartProcess" method="post" >
                        	<input type="hidden" name="productPrice" value=12>
                        	<input type="hidden" name="productCode" value="11">
                        	<input type="hidden" name="productName" value="La Servante ecarlate">
                        	<input type="number" name="quantity" value="1">
                            <input type="submit" value="Add To Cart" class="success button"> </form>
                        </td>
                    </tr>
                    <tr><td>Beginning Java EE 6 platform with GlassFish 3 - Antoni Gonclaves</td>
                        <td class="right">40.5 €</td>
                        <td><form accept-charset="UTF-8" action= "CartProcess" method="post">
                        	<input type="hidden" name="productPrice" value=40.5>
                            <input type="hidden" name="productCode" value="javaee01">
                            <input type="hidden" name="productName" value="Beginning Java EE 6 platform with GlassFish 3">
                            <input type="number" name="quantity" value="1">
                            <input type="submit" value="Add To Cart" class="success button"> </form>
                        </td>
                    </tr>
                    <tr><td>Ranger : L'étincelle du bonheur - Marie Kondo</td> 
                        <td class="right">6.80 €</td>
                        <td><form accept-charset="UTF-8" action="CartProcess" method="post" >
                        	<input type="hidden" name="productPrice" value=6.80>
                            <input type="hidden" name="productCode" value="ranger01">
                            <input type="hidden" name="productName" value="Ranger : L'etincelle du bonheur">
                            <input type="number" name="quantity" value="1">
                            <input type="submit" value="Add To Cart" class="success button"> </form>
                        </td>
                    </tr>
                    <tr><td>L'europe au kaléidoscope - Marianne Dony</td> 
                        <td class="right">56 €</td>
                        <td><form accept-charset="UTF-8" action="CartProcess" method="post" >
                        	<input type="hidden" name="productPrice" value=56>
                            <input type="hidden" name="productCode" value="europe01">
                            <input type="hidden" name="productName" value="L'europe au kaleidoscope ">
                            <input type="number" name="quantity" value="1">
                            <input type="submit" value="Add To Cart" class="success button"> </form>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>