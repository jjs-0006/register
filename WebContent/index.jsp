<%@ page language="java" import="user.User" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%
    User user = session.getAttribute("user")==null ? null: (User)session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録画面</title>
</head>
<body>
<h1>ユーザ登録</h1>
<form method="post" action="Confirm">
    名前:　　　　　　<input type="text" name="name" value="<%= user==null ? "":user.getName()%>"/><br>
    ニックネーム:　<input type="text" name="nick" value="<%= user==null ? "":user.getNick()%>"/><br>
    メールアドレス:<input type="text" name="address" value="<%= user==null ? "":user.getAddress()%>"/><br>
    パスワード:　 　<input type="password" name="pass" value="<%= user==null ? "":user.getPass()%>"/><br>
    <input type="submit" value="確認"/>
</form>
</body>
</html>