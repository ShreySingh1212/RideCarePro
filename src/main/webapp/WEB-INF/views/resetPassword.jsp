<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>

<h2>Reset Password</h2>

<form action="/customer/reset-password" method="post">

    <input type="hidden" name="email" value="${email}"/>

    <input type="password"
           name="newPassword"
           placeholder="New Password"
           required/><br/><br/>

    <input type="password"
           name="confirmPassword"
           placeholder="Confirm Password"
           required/><br/><br/>

    <button type="submit">Reset Password</button>

</form>

<p style="color:red;">${error}</p>
<p style="color:green;">${success}</p>

</body>
</html>