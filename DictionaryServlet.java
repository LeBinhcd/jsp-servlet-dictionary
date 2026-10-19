package com.codegym;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DictionaryServlet", urlPatterns = "/translate")
public class DictionaryServlet extends HttpServlet {
    private static final Map<String, String> DICTIONARY = new HashMap<>();

    @Override
    public void init() {
        DICTIONARY.put("hello", "Xin chào");
        DICTIONARY.put("how", "Thế nào");
        DICTIONARY.put("book", "Quyển sách");
        DICTIONARY.put("computer", "Máy tính");
        DICTIONARY.put("student", "Sinh viên");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String searchWord = request.getParameter("word");
        String normalizedWord = searchWord == null ? "" : searchWord.trim().toLowerCase();
        String meaning = DICTIONARY.get(normalizedWord);
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html><html lang='vi'><head><meta charset='UTF-8'><title>Kết quả tra cứu</title></head><body>");
            if (meaning != null) {
                out.println("<h1>Kết quả tra cứu</h1><p>Từ: " + escapeHtml(searchWord) + "</p><h2>Nghĩa tiếng Việt: " + meaning + "</h2>");
            } else {
                out.println("<h2>Không tìm thấy từ: " + escapeHtml(searchWord) + "</h2>");
            }
            out.println("<a href='index.jsp'>Quay lại</a></body></html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("index.jsp");
    }

    private String escapeHtml(String value) {
        if (value == null) return "";
        return value.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;");
    }
}
