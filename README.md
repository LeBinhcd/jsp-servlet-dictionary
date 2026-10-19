# Từ điển Anh - Việt bằng JSP

Ứng dụng Maven Webapp luyện tập JSP, tương thích Tomcat 10.1+. Form trong `index.jsp` gửi bằng POST tới `dictionary.jsp`. File `dictionary.jsp` dùng JSP Scriptlet để tra cứu trong `Map` và JSP Expression để hiển thị kết quả.

## Cấu trúc

```text
src/main/webapp/
├── index.jsp
├── dictionary.jsp
└── WEB-INF/web.xml
```

## Từ mẫu

- `hello` → Xin chào
- `how` → Thế nào
- `book` → Quyển sách
- `computer` → Máy tính
- `student` → Sinh viên

## Chạy dự án

```powershell
mvn clean package
```

WAR được tạo tại `target/jsp-pure-dictionary.war`. Deploy lên Tomcat 10.1+ và truy cập `http://localhost:8080/jsp-pure-dictionary/`.
