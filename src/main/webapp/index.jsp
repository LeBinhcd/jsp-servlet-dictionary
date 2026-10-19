<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Từ điển Anh - Việt</title>
  <style>
    body{font-family:Arial,sans-serif;background:#f8fafc;display:flex;justify-content:center;margin:0;padding:80px 16px}
    .dictionary-container{background:#fff;width:100%;max-width:380px;padding:36px;border-radius:10px;box-shadow:0 4px 16px #0002;text-align:center}
    h1{color:#1b2a7a;font-size:26px}label{display:block;text-align:left;font-weight:bold;margin-top:22px}
    input,button{width:100%;box-sizing:border-box;padding:12px;margin-top:8px;border-radius:5px;font-size:16px}
    input{border:1px solid #bbb}button{border:0;background:#1b2a7a;color:#fff;font-weight:bold;cursor:pointer;margin-top:20px}button:hover{background:#121c54}
  </style>
</head>
<body>
  <main class="dictionary-container">
    <h1>Từ điển Anh - Việt</h1>
    <form action="dictionary.jsp" method="POST">
      <label for="search">Nhập từ tiếng Anh</label>
      <input id="search" type="text" name="search" placeholder="Ví dụ: hello" required autofocus>
      <button type="submit">Tìm kiếm</button>
    </form>
  </main>
</body>
</html>

