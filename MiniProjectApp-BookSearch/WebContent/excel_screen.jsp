<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"  import="java.util.*,com.nt.dto.*"%>
    
<%
   response.setContentType("application/vnd.ms-excel");
  response.addHeader("Content-Disposition","attachement;fileName=report.xls");
   List<BookDTO> listDTO=(List<BookDTO>)request.getAttribute("bookResults");
    if(listDTO!=null && listDTO.size()!=0){
%>
    <table border="1">
         <tr><td>Serial No</td><td>BookId</td><td>BookName</td><td>Author</td><td>Price</td><td>Publisher </td><td>Status </td><td>category</td>   </tr>
        <%
            for(BookDTO dto:listDTO){   %>
            	<tr>
            	   <td><%=dto.getSrNo() %>  </td>
            	   <td><%=dto.getBookId() %>  </td>
            	   <td><%=dto.getBookName() %>  </td>
            	   <td><%=dto.getAuthorName() %>  </td>
            	   <td><%=dto.getPrice() %>  </td>
            	   <td><%=dto.getPublisher() %>  </td>
            	   <td><%=dto.getStatus() %>  </td>
            	   <td><%=dto.getCategory() %>  </td>
            	</tr>
       <%
         }//for
        %>       
    </table>
    <%}//if
    else{  %>
    	  <h1 style="color:red;text-align:center">No Records found </h1>
 <%   }
     %>    
     
    
     
