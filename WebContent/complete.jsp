<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完了画面</title>
</head>
<body>
<h1>登録完了</h1>
名前:　　　　　${sessionScope['user'].getName() }<br>
ニックネーム:　${sessionScope['user'].getNick() }<br>
メールアドレス:${sessionScope['user'].getAddress() } <br>
パスワード:　　${sessionScope['user'].getPass() }<br>
<a href="Complete">TOPへ戻る</a>
</body>
</html>