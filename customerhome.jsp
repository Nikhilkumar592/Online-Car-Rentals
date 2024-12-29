<%-- 
    Document   : customerhome
    Created on : May 21, 2024, 4:45:19 PM
    Author     : pavan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Home</title>
        <style>
           body{
                margin: 0px;
                background-image:url(car.jpg);
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
            }
            logo{
               height: 80px;
               widows: 80px;
                
                   
                
            }
           
            ul li{ 
                text-decoration: none;
                display:inline-block;
                font-style: italic;
                margin: 0 30PX;
                font-size: 30px;
                width: 120px;
            }
            #footer{
                
                text-decoration: none;
                margin-left: 20px;
                margin-top: 500px;
                float: left;
        
            }
            a{
                text-decoration: none;
                color: black;
            }
            form{
                float: right;
            }
            pre{
                font-size: larger;
                margin-right: 10px;
                
            }
            td{
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
          <div id="header">
              
            <center><h1>ONLINE CAR RENTAL</h1>
              
                <form id="form" role="search" >
                    <input type="search" id="query" name="q" placeholder="Search..." aria-label="Search through site content">
                    <button>Search</button>
                    
                  </form> 
              
    
            <ul>

                <li><a href="customerhome.jsp">Home</a></li>
                    <li><a href="viewprofile.jsp">ViewProfile</a></li>
                    <li><a href="update.jsp">Update</a></li>
                    <li><a href="login.html">Logout</a></li>

            </ul>
            </center>
             
        </div>
        
       
        <div id="body">
            <%
             String username=(String)session.getAttribute("username");
             String fullname=(String)session.getAttribute("fullname");
            
            %>
            <center>
                <h1>customerhome</h1>
                <h1><%=username%></h1>
                <h1><%=fullname %></h1>
            </center>
        </div>
    </body>
</html>