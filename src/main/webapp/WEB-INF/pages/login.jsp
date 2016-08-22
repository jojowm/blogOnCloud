<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 16-8-21
  Time: 下午8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Login</title>
    <link rel="stylesheet" href="<c:url value='/resources/bower_components/bootstrap/dist/css/bootstrap.min.css'/>" >
    <link rel="stylesheet" href="<c:url value='/resources/style/signin.css'/> ">
</head>
<body>

<div class="container">
    <form action="" class="form-signin" onsubmit="return false;">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <%--<div class="checkbox">--%>
            <%--<label>--%>
                <%--<input type="checkbox" value="remember-me">Remember me--%>
            <%--</label>--%>
        <%--</div>--%>
        <button id="submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</div>

<script src="<c:url value='/resources/bower_components/seajs/dist/sea.js'/> "></script>
<script src="<c:url value='/resources/js/user/sea-config.js'/> "></script>
<script src="<c:url value='/resources/bower_components/jquery/dist/jquery.min.js'/> "></script>
<script>
    seajs.use('signin', function (Signin) {
        var signin = new Signin();
        signin.init();
    });
</script>
</body>
</html>
