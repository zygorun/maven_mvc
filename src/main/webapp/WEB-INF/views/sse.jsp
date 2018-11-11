<%--
  Created by IntelliJ IDEA.
  User: Goroun
  Date: 2018/11/8
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>hello</div>
<div id="msgFromPush"></div>
<script type="text/javascript"
        src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script>
    if (!!window.EventSource) {
        var source = new EventSource('push');
        s = '';
        source.addEventListener('message', function (e) {
            s += e.data + "<br/>";
            $("#msgFromPush").html(s);
        });
        source.addEventListener('open', function (e) {
            console.log("链接打开.");
        }, false);
        source.addEventListener('error', function (e) {
            if (e.readyState == EventSource.CLOSED) {
                console.log("链接关闭");
            } else {
                console.log(e.readyState);
            }
        }, false);
    } else {
        console.log("您的浏览器不支持SSE");
    }
</script>
</body>
</html>
