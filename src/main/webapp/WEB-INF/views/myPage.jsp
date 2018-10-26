<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title><c:out value="${ myPageVO.login_name }" />님의 페이지</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/myPage/MyPage.css" />">
        <script>
        	
        </script>
    </head>
    <body>
    <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title"><c:out value="${ myPageVO.login_name }" /> / <c:out value="${ myPageVO.nickname }" /></h3>
                </div>
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-3 col-lg-3 " align="center">
                        <div id="profile">
                            <img src="<c:url value="/resources/img/myPage/profile.jpeg" />" 
 											style="background-size: cover; height: 120px; width: 120px; border-radius: 50%;
  											background-repeat: no-repeat;"/>
                        </div>    
                    </div>
                    <form id="myPageList" action="modifyMyPage.do" method="post" commandName="MyPageVO">
                    <div class=" col-md-9 col-lg-9 "> 
                      <table class="table table-user-information">
                        <tbody>
                            <tr>
                            <td>Email </td>
                            <td><a>
                                <input class = "inputPlace" type="email" name="login_email" style="border : hidden;" value="<c:out value="${ myPageVO.login_email }" />" readonly>
                            </a></td>
                            </tr>
                            <tr>
                            <td>Name</td>
                            <td><a>
                                <input class = "inputPlace" type="text" name="login_name" value="<c:out value="${ myPageVO.login_name }" />" readonly>
                            </a></td>
                          </tr>
                          <tr>
                            <td>Nickname</td>
                            <td>
                                <input class = "inputPlace" type="text" name="nickname" value="<c:out value="${ myPageVO.nickname }" />">
                            </td>
                          </tr>
                          <tr>
                            <td>Date of Birth</td>
                            <td>
                                <input class = "inputPlace" type="text" name="dob" value="<c:out value="${ myPageVO.dob }" />" placeholder="xxxx-xx-xx">
                            </td>
                          </tr>
                          <tr>
                            <td>Motto</td>
                            <td>
                                <input class = "inputPlace" type="text" name="motto" value="<c:out value="${ myPageVO.motto }" />">
                            </td>
                          </tr>
                          <tr>
                            <td>Department</td>
                            <td>
                                <input class = "inputPlace" type="text" name="department" value="<c:out value="${ myPageVO.department }" />">
                            </td>
                          </tr>
                            <tr>
                            <td>Home Address</td>
                            <td>
                                <input class = "inputPlace" type="text" name="address" value="<c:out value="${ myPageVO.address }" />" placeholder="집 주소를 입력하세요">
                            </td>
                          </tr>
                            <tr>
                            <td>Phone Number</td>
                            <td>
                                <input class = "inputPlace" type="tel" name="phone_number" value="<c:out value="${ myPageVO.phone_number }" />" placeholder="010-xxxx-xxxx">
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    	 <div class="panel-footer" style="height: 50px;">
                            <div class="pull-right">
                                <input type="submit" value="수정" data-original-title="Edit this user" data-toggle="tooltip"  class="btn btn-sm btn-warning">
                                <input type="button" value="취소" data-original-title="Remove this user" data-toggle="tooltip" class="btn btn-sm btn-danger">
                            </div>
                        </div>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </body>
</html>