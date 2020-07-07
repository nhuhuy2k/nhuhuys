<%-- 
    Document   : Login
    Created on : 11-May-2020, 14:39:49
    Author     : nguyenxuannguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <style>
            @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600&display=swap');

            *{
                padding: 0;
                margin: 0;
                font-family: 'Source Sans Pro', sans-serif;
                box-sizing: border-box;
            }

            html,body{
                background-color: #778beb;
            }

            .container{
                position: relative;
                width: 100%;
                height: 100vh;
                max-width: 1200px;
                margin: auto;
                padding: 15px;
            }

            .form{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            form{
                padding: 30px 25px 15px 25px;
                background-color: #ffffff;
                min-width: 350px;
                border-radius: 10px;
            }

            .form-group{
                margin-top: 5px;
                margin-bottom: 10px;
            }
            .form-title{
                margin-bottom: 20px;
            }

            h2{
                font-size: 30px;
                color: #323232;
                text-align: left;
            }

            p{
                color: #777777;
            }

            label{
                color: #565656;
            }

            input[type=text],
            input[type=password]{
                display: block;
                width: 100%;
                margin-top: 6px;
                margin-bottom: 10px;
                border: none;
                outline: none;
                border-radius: 5px;
                border: 1px solid #f0f0f0;
                padding: 10px;
                font-size: 16px;
            }

            .form-group p{
                margin-top: 13px;
                text-align: center;
            }

            .form-group a{
                text-decoration: none;
                color: #676767;
            }

            button{
                border: none;
                outline: none;
                padding: 12px 20px;
                border-radius: 7px;
                margin-left: 12.5%;
                margin-right: 12.5%;
                cursor: pointer;
                margin-top: 15px;
                background-color: #778beb;
                color: #fff;
                font-size: 16px;
                font-weight: bolder;
                width: 75%;
                transition: all .3s ease;
            }

            button:hover{
                background-color: #6b7cd1;
            }

            .sosmed::before{
                display: block;
                content: "";
                height: 1px;
                width: 30%;
                margin-left: 35%;
                margin-right: 35%;
                position: absolute;
                top: 0;
                background-color: rgb(200,200,200);
            }

            .sosmed{
                position: relative;
                margin-top: 3px;
                padding-top: 16px;
            }

            .sosmed a{
                display: block;
                text-align: center;
                padding: 10px 15px;
                border-radius: 8px;
                width: 80%;
                margin: auto;
                margin-bottom: 12px;
                text-decoration: none;
            }

            .google{
                border: 1px solid rgb(200,200,200);
                color: #333;
                transition: all .3s ease;
            }

            .google:hover{
                background-color: rgb(245,245,245);
            }

            .google img{
                width: 16px;
                margin-bottom: -2px;
                margin-right: 3px
            }
        </style>
    </head>
    <body>
         <div class="container">
            <div class="form">
                <s:form action="login.nuocmam" method="POST">
                    <div class="form-title">
                        <h2>Welcome back</h2>
                        <p>put your subtitle here</p>
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" 
                               name="username" 
                               id="username"
                               placeholder="yourusername">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" 
                               name="password" 
                               id="password"
                               placeholder="************">
                    </div>
                    <p style="color:red">${errorMessage}</p>
                    <div class="form-group button">
                        <button>Log In</button>
                        <p><a href="/forgot-password">forgot password?</a></p>
                    </div>
                    <div class="sosmed">
                        <a href="" class="google"><img src="https://image.flaticon.com/icons/svg/2702/2702602.svg" alt="">Google</a>
                    </div>
                </s:form>

            </div>
        </div>
        
    </body>
</html>
