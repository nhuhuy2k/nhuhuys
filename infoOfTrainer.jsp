<%-- 
    Document   : infoOfTrainer
    Created on : 08-Jun-2020, 21:12:29
    Author     : nguyenxuannguyen
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            form {
                max-width: 300px;
                margin: 10px auto;
                padding: 10px 20px;
                background: #f4f7f8;
                border-radius: 8px;
            }

            input[type="text"],
            input[type="password"],
            input[type="date"],
            input[type="datetime"],
            input[type="email"],
            input[type="number"],
            input[type="search"],
            input[type="tel"],
            input[type="time"],
            input[type="url"],
            textarea,
            select {
                background: rgba(255,255,255,0.1);
                border: none;
                font-size: 16px;
                height: auto;
                margin: 0;
                outline: 0;
                padding: 15px;
                width: 100%;
                background-color: #e8eeef;
                color: #8a97a0;
                box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
                margin-bottom: 30px;
            }

            input[type="radio"],
            input[type="checkbox"] {
                margin: 0 4px 8px 0;
            }

            select {
                padding: 6px;
                height: 32px;
                border-radius: 2px;
            }

            button {
                padding: 19px 39px 18px 39px;
                color: #FFF;
                background-color: #4bc970;
                font-size: 18px;
                text-align: center;
                font-style: normal;
                border-radius: 5px;
                width: 100%;
                border: 1px solid #3ac162;
                border-width: 1px 1px 3px;
                box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
                margin-bottom: 10px;
            }

            fieldset {
                margin-bottom: 30px;
                border: none;
            }

            legend {
                font-size: 1.4em;
                margin-bottom: 10px;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            label.light {
                font-weight: 300;
                display: inline;
            }

            .number {
                background-color: #5fcf80;
                color: #fff;
                height: 30px;
                width: 30px;
                display: inline-block;
                font-size: 0.8em;
                margin-right: 4px;
                line-height: 30px;
                text-align: center;
                text-shadow: 0 1px 0 rgba(255,255,255,0.2);
                border-radius: 100%;
            }

            @media screen and (min-width: 480px) {

                form {
                    max-width: 480px;
                }

            }


        </style>
    </head>
    <body>
     <center>
        <div class="row">
            <div class="col-md-12">
                <s:form action="EditProfileTrainerForm" method="Post" >     
                    <fieldset>
                        <label for="name">Trainer ID:</label>
                        <input type="text" id="name" name="id" readonly="true" value="${tr.idTrainer}">
                        <legend><span class="number">1</span> Edit <s:property value="%{#session.Trainer}"/>'s information</legend>
                        <label for="email">Name:</label>
                        <input type="text" id="mail" name="name" value="${tr.nameTrainer}">
                        <label for="email">Phone</label>
                        <input type="text" id="mail" name="phone" value="${tr.phone}">
                        <label for="email">Gmail</label>
                        <input type="email" id="mail" name="gmail" value="${tr.gmail}">
                        <label for="bio">Description:</label>
                        <textarea id="bio" name="des" >${tr.desTrainer}</textarea>
                        <button type="submit">Save</button> 
                    </fieldset>
                </s:form>
            </div>
        </div>  
    </center>
</body>
</html>