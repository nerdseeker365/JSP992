<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"  import="java.util.*,com.nt.dto.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
  <c:choose>
    <c:when test="${!empty bookResults}">
    <table border="1">
         <tr><td>Serial No</td><td>BookId</td><td>BookName</td><td>Author</td><td>Price</td><td>Publisher </td><td>Status </td><td>category</td>   </tr>
            <c:forEach var="dto"  items="${bookResults}">
            	<tr>
            	   <td>${dto.srNo}  </td>
            	   <td>${dto.bookId}  </td>
            	   <td>${dto.bookName}  </td>
            	   <td>${dto.authorName}  </td>
            	   <td>${dto.price } </td>
            	   <td>${dto.publisher}  </td>
            	   <td>${dto.status}  </td>
            	   <td>${dto.category}  </td>
            	</tr>
            	</c:forEach>
        </table>
    </c:when>
     <c:otherwise>
          <b> records not found</b>
     </c:otherwise>
</c:choose>
    
     <a href="JavaScript:showPrint()">print</a>  &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="search.html">home</a>  <br>
    
     <script language="JavaScript">
     function showPrint(){
            frames.focus();
            frames.print();
     }
  </script>