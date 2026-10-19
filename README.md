# Từ điển Anh - Việt bằng JSP/Servlet

Dự án Maven JSP/Servlet tương thích với Tomcat 10.1+. Ứng dụng tra cứu nghĩa tiếng Việt của các từ tiếng Anh có sẵn trong cấu trúc dữ liệu `Map`.

## Các tệp bắt buộc ở thư mục gốc

Các tệp `pom.xml`, `index.jsp`, `web.xml` và `DictionaryServlet.java` được đặt trực tiếp tại thư mục gốc để hệ thống chấm tự động có thể kiểm tra đầy đủ. Cấu trúc Maven tiêu chuẩn vẫn được giữ nguyên trong thư mục `src/main/`.

## Chức năng

- Nhập một từ tiếng Anh vào biểu mẫu tra cứu.
- Gửi dữ liệu bằng phương thức `POST` đến endpoint `/translate`.
- Hiển thị nghĩa tiếng Việt nếu tìm thấy từ.
- Hiển thị thông báo `Không tìm thấy từ: [từ khóa]` nếu từ không có trong từ điển.

Các từ mẫu gồm:

- `hello` — Xin chào
- `how` — Thế nào
- `book` — Quyển sách
- `computer` — Máy tính
- `student` — Sinh viên

## Công nghệ sử dụng

- Java 17
- Maven Web Application
- Jakarta Servlet API 6.0.0
- Jakarta JSP API 3.1.1
- Tomcat 10.1+

## Đóng gói dự án

Mở terminal tại thư mục gốc dự án và chạy:

```powershell
mvn clean package
```

Sau khi đóng gói thành công, tệp WAR được tạo tại:

```text
target/jsp-servlet-dictionary.war
```

Triển khai tệp WAR lên Tomcat 10.1+ và truy cập:

```text
http://localhost:8080/jsp-servlet-dictionary/
```

﻿# JSP Servlet English-Vietnamese Dictionary

Maven JSP/Servlet project compatible with Tomcat 10.1+. It searches a predefined English-Vietnamese map.

## Required files at repository root

`pom.xml`, `index.jsp`, `web.xml`, and `DictionaryServlet.java` are also available directly at the repository root for automated evaluation. The standard Maven structure is preserved under `src/main/`.

Known words include `hello`, `how`, `book`, `computer`, and `student`. Unknown words produce `Không tìm thấy từ: [word]`.

Build with:

```powershell
mvn clean package
```
