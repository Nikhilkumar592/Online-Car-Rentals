 
<%-- 
    Document   : updateaction
    Created on : May 25, 2024, 10:29:37 AM
    Author     : pavan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String fullname=request.getParameter("fullname");

String phoneno=request.getParameter("phoneno");
String email=request.getParameter("email");
 String age=request.getParameter("age");
  String address=request.getParameter("address");


     String username=request.getParameter("username");

try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","root");
            Statement st=con.createStatement();    
            int i=st.executeUpdate("update registeraction set fullname='"+fullname+"',phoneno='"+phoneno+"',email='"+email+"',age='"+age+"',address='"+address+"',username='"+username+"'");
if(i>0){
    %>
    <script type="text/javascript">
        window.alert("profile updated");
        window.location="viewprofile.jsp";
        
    </script>
    <%
        
}
else{
%>
 <script type="text/javascript">
        window.alert("update failed");
        window.location="update.jsp";
        
    </script>
    <%
}
                      }catch(Exception e){
out.println(e);
}
%>
