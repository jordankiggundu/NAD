<%-- 
    Document   : HR_Mgt
    Created on : Aug 6, 2022, 1:25:52 PM
    Author     : Joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            
        <h1>Welcome Manager!</h1>
        <br>
        <label><h2>Enter Monthly Sales for each product Line</h2></label>
        
        <form action="reallocation" method="post">
                <label>Short-term Monthly_Sales</label>
                <br>
                <input type="number" id="stsales" name="stsales">
                <br>
                <br>
                <label>Mid-term Monthly_Sales</label>
                <br>
                <input type="number" id="mtsales" name="mtsales">
                <br>
                <br>
                <label>Long-term Monthly_Sales</label>
                <br>
                <input type="number" id="ltsales" onchange="add()" name="ltsales">
                <br> 
                <br>
                <label>Total Monthly_Sales</label>
                <br>
                <input type="number" id="msales" name="msales">
                <br>
                <br>
                 
                <label>Total number of Staff</label>
                <br>
                <input type="number" id="staff" onchange="calc()" name="staff">
                <br>
                <br>
                <label>Short-term Staff</label>
                <br>
                <input type="number" id="sts" name="sts">
                <br>
                <br>
                <label>Mid-term Staff</label>
                <br>
                <input type="number" id="mts" name="mts">
                <br>
                <br>
                <label>Long-term Staff</label>
                <br>
                <input type="number" id="lts" name="lts">
                <br> 
                <br>
                <input type="submit" name="reallocate" value="Reallocate">
                <br>
                <br>
                
                <script type="text/javascript">
            function add(){
                var a = parseInt(document.getElementById('stsales').value);
                var b = parseInt(document.getElementById('mtsales').value);
                var c = parseInt(document.getElementById('ltsales').value);
                
                var total = 1*(a+b+c);
                document.getElementById('msales').value= total;
                
                console.log(total);
            }
            function calc(){
                var v = parseInt(document.getElementById('stsales').value);
                var w = parseInt(document.getElementById('mtsales').value);
                var x = parseInt(document.getElementById('ltsales').value);
                var y = parseInt(document.getElementById('msales').value);
                var z = parseInt(document.getElementById('staff').value);
                
                var total1 = Math.round((v*z)/y);
                var total2 = Math.round((w*z)/y);
                var total3 = Math.round((x*z)/y);
                
                document.getElementById('sts').value= total1;
                document.getElementById('mts').value= total2;
                document.getElementById('lts').value= total3;
                
            }
        
        </script>
        </form> 
    </body>
    </html>
