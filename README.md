# JSP Servlet English-Vietnamese Dictionary

Maven JSP/Servlet project compatible with Tomcat 10.1+. It searches a predefined English-Vietnamese map.

## Required files at repository root

`pom.xml`, `index.jsp`, `web.xml`, and `DictionaryServlet.java` are also available directly at the repository root for automated evaluation. The standard Maven structure is preserved under `src/main/`.

Known words include `hello`, `how`, `book`, `computer`, and `student`. Unknown words produce `Không tìm thấy từ: [word]`.

Build with:

```powershell
mvn clean package
```
