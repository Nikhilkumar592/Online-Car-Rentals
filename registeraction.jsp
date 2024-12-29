
<%-- 
    Document   : registeraction
    Created on : May 19, 2024, 10:17:38 AM
    Author     : pavan
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fullname=request.getParameter("fullname");
    String phoneno=request.getParameter("phoneno");
    String email=request.getParameter("email");
    String age=request.getParameter("age");
    String address=request.getParameter("address");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","root");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into registeraction values('"+fullname+"','"+phoneno+"','"+email+"','"+age+"','"+address+"','"+username+"','"+password+"')");
    if(i>0)
    {
        %>
        <script type="text/javascript">
            window.alert("Signup successful");
            window.location="login.html";
            
        </script>
        <%
    }
    else{
          %>
          <script type="text/javascript">
              window.alert("signup failed");
              window.location="register.html";
           </script>
           <%
            }
 
}
 catch (Exception e){
      out.println(e);
  }
%>