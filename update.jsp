<%-- 
    Document   : update
    Created on : May 24, 2024, 4:51:24 PM
    Author     : pavan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Home</title>
        <style>
           body{
                margin: 0px;
                background-image: url(wp4786592.jpg);
                
                background-repeat: no-repeat;
                background-size:cover;
                max-height: 100%;
                text-decoration: none;
                


            }
            #header{
                height: 100px;
                width: 100%;
                
                list-style:none;
                text-decoration: none;
                margin: 0px;
            }
            ul li{
                text-decoration: none;
                display:inline-block;
                margin: 0 30PX;
                font-size: 18px;
                width: 120px;
                margin-top: 15px;
                
            }
            table{
              
                
                
                    
                    
                    
                    
        
            }
            #footer{
                
                text-decoration: none;
                margin-left: 20px;
                margin-top: 500px;
                float: left;
        
            }
            pre{
                font-size: larger;
                margin-right: 10px;
                
            }
            td{
                border-radius: 5px;
            }
            
            th, td {
  border: 1px solid black;
  color: white;
  
}
a{
    text-decoration: none;
    font-style: italic;
    
}      
        </style>
    </head>
    <body>
          <div id="header">
            
            <center><h1>ONLINE CAR RENTAL</h1>
                
            <ul>

                <li><a href="customerhome.jsp" style="color:black">HOME</a></li>
                    <li><a href="viewprofile.jsp" style="color:black">VIEWPROFILE</a></li>
                    <li><a href="update.jsp" style="color:black">UPDATEPROFILE</a></li>
                    <li><a href="login.html" style="color:black">LOGOUT</a></li>

            </ul>
            </center>
        </div>
        
       
       
             <div id="body">
        <%
        String username=(String)session.getAttribute("username");
       %>
       <center>
           
           <h3><%=username%></h3>
       </center> 
          
                 <div id="menu">
           <%
               try{
               Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental","root","root");
              Statement st=con.createStatement();           
              ResultSet rs=st.executeQuery("select * from registeraction where username='"+username+"'");
       
        if(rs.next()){ 

            %>
            <br> <center>
                 <form action="updateaction.jsp" method="post">
                           
                           <table style="border:3px solid black ; height:280px;width:270px ;">
                               
                                <h4 style="color: black;">VIEW PROFILE</h4>  
                               <tr>
                                   
                                   <th>FULLNAME:</th>
                                   <td><input type="text" name="fullname" value="<%=rs.getString("fullname")%>"></td>
                               </tr>
                               <tr>
                                   <th>AGE:</th>
                                   <td><input type="text" name="age" vale="<%=rs.getString("age")%>"></td>
                               </tr> 
                               <tr>
                                   <th>PHONE NO:</th>
                                   <td><input type="number" name="phoneno" value=" <%=rs.getString("phoneno")%>"></td>
                               </tr>
                               <tr>
                                   <th>EMAIL:</th>
                                   <td><input type="email" name="email" value="<%=rs.getString("email")%>"></td>
                               </tr>
                               
                                <tr>
                                   <th>ADDRESS:</th>
                                   <td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
                               </tr>
                               <tr>
                                   <th>Username:</th>
                                   <td><input type="text" name="username" value="<%=rs.getString("username")%>"></td>
                               </tr> 
                               
                                <tr>
                                   <th></th>
                                   <td><input type="submit" value="update"></td>
                               </tr> 
                              
                           
                               
                           </table>
            </form>
                       </center>
                               <%
                   }   
               }
               catch(Exception e){
                   out.println(e);
                   
               }
             %>  
              
            </center>
        </div>
    </body>
  </html>
