<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>確認画面</title>
</head>
<body>
<h1>確認画面</h1>
名前:　　　　　${sessionScope.user.name }<br>
ニックネーム:　${sessionScope.user.nick }<br>
メールアドレス:${sessionScope.user.address }<br>
パスワード:　　${sessionScope.user.pass }<br>
<a href="complete.jsp"><input type="button" value="OK"></a>　　<a href="index.jsp"><input type="button" value="Cancel"></a>

</body>
</html>