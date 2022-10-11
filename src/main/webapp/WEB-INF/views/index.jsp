<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>슬기로운 엔빵생활</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
      rel="stylesheet"
    />


<%--     <link href="<c:url value="/resources/css/style.css"/>" type="text/css" rel="stylesheet"> --%>
      <link rel=stylesheet href="<c:url value="/resources/css/style.css"/>" type="text/css">
    

  </head>
  <body>
    <div id="wrap">

		<%@ include file="./header.jspf" %>

		
      <article class="banner" style="justify-content: space-evenly">
        <div style="width:600px; padding-left:200px;">
          <p>Notice</p>
          <p>
            비싼 배달비가 부담스러우시다고요?<br />
            <b>슬기로운 엔빵생활</b>을 만나보세요
          </p>
        </div>
        <div class="emoji" style="width:30%;">
          <img src="<c:url value="/resources/assets/images/banner_emoji.png"/>" alt="emoji" />
        </div>
      </article>
      <article class="slide-button">
        <div></div>
        <div>
          <span>모집 중만 보기</span>
          <label for="switchLabel" class="toggleSwitchLabel">
            <input type="checkbox" id="switchLabel" class="switchInput" />
            <div class="toggleSwitchBall"></div>
          </label>
        </div>
      </article>
      <article class="menu-selective">
        <div>
          <div>
            <img src="<c:url value="/resources/assets/images/all.svg"/>" alt="all" />
            <span class="selectAllMenu">전체메뉴</span>
          </div>
          <div>
            <img src="<c:url value="/resources/assets/images/apple.svg"/>" alt="all" />
            <span class="selectFavoriteMenu">인기메뉴</span>
          </div>
        </div>
        <div></div>
      </article>
      <article class="menu-button-desktop">
        <ul style="width:70%;">
          <li class="bottom_bordered selectAllMenu">전체메뉴</li>
          <li class="selectFavoriteMenu">인기메뉴</li>
        </ul>
      </article>
      <article class="menu-selective-desktop">
        <ul style="width:70%; margin:auto; margin-bottom:100px;">
          <li class="favo">
            <img src="<c:url value="/resources/assets/images/1.jpeg"/>" alt="" />
            <span>치킨</span>
          </li>
          <li class="favo">
            <img src="<c:url value="/resources/assets/images/2.jpeg"/>" alt="" />
            <span>카페, 디저트</span>
          </li>
          <li>
            <img src="<c:url value="/resources/assets/images/3.jpeg"/>" alt="" />
            <span>양식</span>
          </li>
          <li>
           <img src="<c:url value="/resources/assets/images/4.jpeg"/>" alt="" />
            <span>백반</span>
          </li>
          <li>
            <img src="<c:url value="/resources/assets/images/5.jpeg"/>" alt="" />
            <span>중식</span>
          </li>
          <li class="favo">
        <img src="<c:url value="/resources/assets/images/6.jpeg"/>" alt="" />
            <span>피자</span>
          </li>
          <li>
           <img src="<c:url value="/resources/assets/images/7.jpeg"/>" alt="" />
            <span>햄버거</span>
          </li>
          <li>
          <img src="<c:url value="/resources/assets/images/8.jpeg"/>" alt="" />
            <span>고기</span>
          </li>
          <li class="favo">
            <img src="<c:url value="/resources/assets/images/9.jpeg"/>" alt="" />
            <span>떡볶이</span>
          </li>
        </ul>
      </article>
      <article class="mainContents">
        <ul style="width:70%;">
          <c:forEach items="${boardList}" var="board">
	          <a href="./page?num=${board.num }" class="
	          <c:choose>
	          	<c:when test="${board.category == '치킨'}">chicken</c:when>
	          	<c:when test="${board.category == '디저트'}">dessert</c:when>
	          	<c:when test="${board.category == '양식'}">western</c:when>
	          	<c:when test="${board.category == '백반'}">korean</c:when>
	          	<c:when test="${board.category == '중식'}">chinese</c:when>
	          	<c:when test="${board.category == '피자'}">pizza</c:when>
	          	<c:when test="${board.category == '햄버거'}">hamburger</c:when>
	          	<c:when test="${board.category == '고기'}">meat</c:when>
	          	<c:when test="${board.category == '떡볶이'}">tteokbokki</c:when>
	          </c:choose>
	          <c:if test="${board.status == '0' }">isRecruit</c:if>
	          ">
	            <li>
	              <div class="timeOfOrder">
	                <p>시간 |</p>
	                <p><c:out value="${board.sdate}"/></p>
	              </div>
	              <h1><c:out value="${board.title}"/></h1>
	              <ul class="hashtag">
	                <li>#<c:out value="${board.category}"/></li>
					<li>#<c:out value="${board.location}"/></li>
	              </ul>
	              <ul class="menuOfFood">
	                <li>
	       <img src="<c:url value="/resources/assets/images/${board.photoNumber}.jpeg"/>" alt="" /> 
	                
	                </li>
	              </ul>
	              <section class="userInfo">
	                <div class="userAvatar">
	                  <img src="<c:url value="/resources/assets/images/bmo.png"/>" alt="icon" />
	                  <div><c:out value="${board.uid}"/></div>
	                </div>
	                <div class="articleTotalInfo">
	                  <div class="articleInfo-seen">
	                   <img src="<c:url value="/resources/assets/images/eye.svg"/>"
	                      alt="seen"
	                      width="22px"
	                    />
	                    <p>176</p>
	                  </div>
	                  <div class="articleInfo-message">
	                      <img src="<c:url value="/resources/assets/images/comment.svg"/>"
	                      alt="comment"
	                      width="22px"
	                    />
	                    <p>3</p>
	                  </div>
	                </div>
	              </section>
	            </li>
	          </a>
          </c:forEach>
        </ul>
      </article>
    </div>
   
   <script src="<c:url value="/resources/js/script.js"/>"></script>
  </body>
</html>
