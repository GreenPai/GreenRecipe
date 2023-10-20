<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List</title>
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
</head>
<body>

    <div id="main">
        <c:choose>
            <c:when test="${cnt eq 1}">
                <p>사용 중인 닉네임입니다.</p>
            </c:when>
            <c:otherwise>
                <p>사용 가능한 닉네임입니다.</p>
            </c:otherwise>
        </c:choose>

        <p><a href="#" onclick="window.close();">창 닫기</a></p>
    </div>
</body>
</html>