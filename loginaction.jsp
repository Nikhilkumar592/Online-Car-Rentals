<%-- 
    Document   : loginaction
    Created on : May 19, 2024, 5:22:33 PM
    Author     : pavan
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
  try{
       Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select  * from  registeraction where username='"+username+"' and password='"+password+"'");
     if(rs.next()){
         String fullname=rs.getString("fullname");
         String email=rs.getString("email");
         session.setAttribute("username", username);
         session.setAttribute("fullname", fullname);
         session.setAttribute("email", email);
         
               %>
               <script type="text/javascript">
                   window.alert("login sucessfull");
                   window.location="customerhome.jsp";
               </script>
               <%
      }else{
                 %>
                 <script type="text/javascript">
                     window.alert("data not found");
                     window.location="login.html";
                 </script>
                 <%
                 
                 }
}
catch(Exception e){
out.println(e);
}
%>


  
 















   
      
      
      
      
      
 
