<%-- 
    Document   : updateCourse
    Created on : 13-May-2020, 12:47:44
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
                <s:form action="updateForm" method="Post" >     
                    <fieldset>
                        <label for="name">Course ID:</label>
                        <input type="text" id="name" name="id"  value="${c.id}">
                        <legend><span class="number">1</span> Edit course</legend>
                        <label for="email">Name course:</label>
                        <input type="text" id="mail" name="name" value="${c.name}">

                        <label for="job">Location:</label>
                        <select id="job" name="sllocation" value="${c.location}">
                            <optgroup label="Establishment">
                                <option value="HN">Ha Noi</option>
                                <option value="DN">Da Nang</option>
                                <option value="HCM">Ho Chi Minh</option>
                            </optgroup>
                        </select>
                        <label for="job">Status of course:</label>
                        <select id="job" name="slsttus" value="${c.des}">

                            <option value="Finish">Finish</option>
                            <option value="Regist">Regist</option>
                            <option value="happenning">happenning</option>

                        </select>


                        <jsp:useBean id="MrTopic" class="model.dataProcess">
                            <label for="job">Select Topic</label>
                            <select id="job" name="sltopic">
                                <c:forEach var="t" items="${MrTopic.topic}">
                                    <option value="${t.idTopic}">${t.nameTopic}</option>
                                </c:forEach>
                            </select>
                            <label for="job">Select trainer</label>
                            <select id="job" name="sltrainer">
                                <c:forEach var="t" items="${MrTopic.trainer}">
                                    <option value="${t.idTrainer}">${t.nameTrainer}</option>
                                </c:forEach>
                            </select>
                            <label for="job">Select category</label>
                            <select id="job" name="slcategory">
                                <c:forEach var="t" items="${MrTopic.category}">
                                    <option value="${t.idCategory}">${t.nameCategory}</option>
                                </c:forEach>
                            </select>
                        </jsp:useBean>
                        <label for="email">Fees (VND):</label>
                        <input type="text" id="mail" name="fee" value="${c.fee}">
                        <label for="email">Start Date:</label>
                        <input type="date" id="mail" name="start" value="${c.start}">
                        <label for="email">End Date:</label>
                        <input type="date" id="mail" name="end" value="${c.end}">
                        <label for="bio">Description:</label>
                        <textarea id="bio" name="des" >${c.des}</textarea>
                        <button type="submit">Save course</button> 
                    </fieldset>
                </s:form>
            </div>
        </div>  
    </center>
</body>
</html>
