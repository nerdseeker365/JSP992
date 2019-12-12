<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"  import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<b> As traditional for loop</b> <br>
  <c:forEach  var="i"  begin="1"  end="10"  step="1">
        2 * ${i} = ${2*i} <br>
  </c:forEach>    
<b> As Enhanced for loop </b>

<jsp:scriptlet>
   String names[]=new String[]{"raja","rani","jani","mahesh"};
   request.setAttribute("namesList",names);
</jsp:scriptlet>
 <br>
   <c:forEach  var="nam" items="${namesList}">
           ${nam} <br>
   </c:forEach>
   <br>
   <jsp:scriptlet>
     <![CDATA[
     List<String>  countries=new ArrayList();
     countries.add("india"); countries.add("pak");
     countries.add("Aus"); countries.add("Eng");
     request.setAttribute("countriesList",countries);
     ]]>
</jsp:scriptlet>
   <c:forEach  var="country" items="${countriesList}">
           ${country} <br>
   </c:forEach>
   