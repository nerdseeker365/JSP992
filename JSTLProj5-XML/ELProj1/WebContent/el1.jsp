<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    uname req param value ::  ${param.uname }  <br>
    Sadd req param values ::  ${paramValues.sadd[0]},
                                                   ${paramValues.sadd[1]}  <br>
    user-agent req header value ::  ${header['user-agent']}  <br>     
    accept  request header values :: ${headerValues.accept[0] },                                             
                                                                ${headerValues.accept[1] },

