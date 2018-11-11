<%--
  Created by IntelliJ IDEA.
  User: Goroun
  Date: 2018/11/9
  Time: 0:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript"
        src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script>
    deferred();
    function deferred(){
        $.get('defer',function(data){
            console.log(data);
            deferred();
        })
    }
</script>
</body>
</html>
