<%-- 
    Document   : CourseOfTrainerr
    Created on : 03-Jun-2020, 23:16:56
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
            *, *:before, *:after {
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            html {
                font-family: Helvetica, Arial, sans-serif;
                font-size: 100%;
                background: #333;
                -webkit-font-smoothing: antialiased;
            }

            #page-wrapper {
                width: 640px;
                background: #FFFFFF;
                padding: 1em;
                margin: 1em auto;
                border-top: 5px solid #69c773;
                box-shadow: 0 2px 10px rgba(0,0,0,0.8);
            }

            h1 {
                margin-top: 0;
            }

            h2 {
                margin: 1em 0;
                font-size: 1em;
            }

            details {
                border-radius: 3px;
                background: #EEE;
                margin: 1em 0;
            }

            summary {
                background: #333;
                color: #FFF;
                border-radius: 3px;
                padding: 5px 10px;
                outline: none;
            }

            /* Style the summary when details box is open */
            details[open] summary {
                background: #69c773;
                color: #333;
            }

            /* Custom Markers */
            #custom-marker summary {
                font-size: 17px;
                vertical-align: top;
            }

            #custom-marker summary::-webkit-details-marker {
                display: none;
            }

            #custom-marker summary:before {
                display: inline-block;
                width: 18px;
                height: 18px;
                margin-right: 8px;
                content: "";
                background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/4621/treehouse-icon-sprite.png);
                background-repeat: no-repeat;
                background-position: 0 0;
            }

            #custom-marker[open] summary:before {
                background-position: -18px 0;
            }


            table {
                border: 0;
                width: 100%;
            }

            th, td {
                vertical-align: top;
                text-align: left;
                padding: 0.5em;
                border-bottom: 1px solid #E6E6E6;
            }

            th {
                width: 200px;
            }

            ul {
                list-style: none;
                margin: 0;
                padding: 10px;
            }

            li {
                display: inline;
                padding-right: 10px;
            }

            a {
                color: #08C;
                text-decoration: none;
            }

        </style>
    </head>
    <body>

        <div id="page-wrapper">
            <s:form action="viewCourseOfTrainer" method="POST">
                <h1>Details course</h1>

                <h2>Example #1: Order Information</h2>

                <!-- Specifying an 'open' attribute will make all the content visible when the page loads -->
                <details>
                    <summary>Order #24892105</summary>
                    <table>
                        <tr>
                            <th scope="row">ID course</th>
                            <td>${c.id}</td>
                        </tr>
                        <tr>
                            <th scope="row">Name course</th>
                            <td>${c.name}</td>
                        </tr>
                        <tr>
                            <th scope="row">Location</th>
                            <td>${c.location}</td>
                        </tr>
                        <tr>
                            <th scope="row">Topic</th>
                            <td>${c.topic}</td>
                        </tr>
                        <tr>
                            <th scope="row">fee</th>
                            <td>
                                ${c.fee}
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">category</th>
                            <td>
                                ${c.category}
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Start date</th>
                            <td>
                                ${c.start}
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">End date</th>
                            <td>
                                ${c.end}
                            </td>
                        </tr>
                        <tr>
                            <th scope="">Description</th>
                            <td>${c.des}</td>
                        </tr>
                    </table>
                </details>

                <h2>Controls</h2>
                <details>
                    <summary>Action</summary>
                    <ul>

                        <li><a href="pTrainer">Back to list course</a></li>

                    </ul>
                </details>
            </s:form>
        </div>
    </div>
</body>
</html>