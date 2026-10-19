<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String searchWord = request.getParameter("search");
    Map<String, String> dictionary = new HashMap<>();
    dictionary.put("hello", "Xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển sách");
    dictionary.put("computer", "Máy tính");
    dictionary.put("student", "Sinh viên");
    String normalizedWord = searchWord == null ? "" : searchWord.trim().toLowerCase();
    String result = dictionary.get(normalizedWord);
    boolean found = result != null;
%>
<!DOCTYPE html>
<html lang="vi">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Kết quả tra cứu</title>
<style>body{font-family:Arial,sans-serif;background:#f8fafc;display:flex;justify-content:center;margin:0;padding:80px 16px}.result-container{background:#fff;width:100%;max-width:460px;padding:36px;border-radius:10px;box-shadow:0 4px 16px #0002;text-align:center}h1{color:#1b2a7a;font-size:25px}.result{background:#e8f5e9;color:#207a38;padding:16px;border-radius:6px;margin-top:20px}.not-found{background:#ffebee;color:#b42318;padding:16px;border-radius:6px;margin-top:20px}.back{display:inline-block;margin-top:24px;padding:11px 20px;border-radius:5px;background:#1b2a7a;color:white;text-decoration:none}</style>
</head>
<body><main class="result-container"><h1>Kết quả tra cứu</h1>
<% if (found) { %><p>Từ cần tra: <strong><%= searchWord %></strong></p><div class="result"><h2>Nghĩa: <%= result %></h2></div><% } else { %><div class="not-found"><h2>Không tìm thấy từ</h2><p>Từ khóa <strong><%= searchWord == null ? "" : searchWord %></strong> chưa có trong từ điển.</p></div><% } %>
<a class="back" href="index.jsp">Tra cứu từ khác</a></main></body>
</html>

