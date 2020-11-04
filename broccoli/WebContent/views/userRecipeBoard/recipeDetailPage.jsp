<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <style>

        div {
            /* border: 1px solid red; */
            box-sizing: border-box;
           
        }

        .wrap{
            width: 300px;
            height: 1000px;
            margin-left: 370px;
            margin-top: 10px;
            
        }

        #header {
            margin-top: 50px;

        }

        #headerTable {
            border-top: 1px solid yellowgreen;
            border-bottom: 1px solid lightgray;
        }

        .wrap {
            width: 50%;
            height: 100%;
            float: left;

        }

        #recipeImage{
            height: 50%; 
            text-align: left;
            margin-left: 20px;
            

        }

        #recipeStep img {width: 100%;}

        #recipeStep th {width:35%;}
        #recipeStep td {width: 65%;}

        #recipeStep p {
            width: 100%;
            height: 100%;
            
        }

        #recipeContent {height: 40%;}
        #footer {height: 10%;}

        #recipeStep {
            width: 100%;
            height: 100%;
        }

        #recipeContent {
            width: 100%;
        }

        #recipeIngredient {height: 50%;}
        #recipeDetail {height: 50%;}



    </style>

</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
	<!-- 레시피상세조회 페이지입니다.  -->

    <div id="header"  align="center">
        <table  id="headerTable">
            <tr>
                <th class="table-success" width="150" style="text-align: center;">제목</th>
                <td colspan="3" width="600px">&nbsp; 황태양념구이</td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성자</th>
                <td colspan="3" width="600px">&nbsp; 브로콜리</td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성일</th>
                <td width="200px"> &nbsp; 2020-10-31</td>
                <th class="table-success" style="text-align: center;">조회수</th>
                <td> &nbsp; 7700</td>
            </tr>

        </table>

    </div>

	

    <div class="wrap">

        <h3 align="center" style="margin: 5px;">레시피 페이지 제목</h3>
        <hr>
        <div id="recipeImage">

            <table id="recipeStep">
                <tr>
                    <th>
                        <img src="../resources/image/bgsample.PNG" name="recipeImage1">
                    </th>
                    <td>
                        <p name="recipeStepDetail1">
                            뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                            방황하였으며, 우리는 교향악이다. 새 이는 같이,
                            기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                            얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
                
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>
                        <img src="../resources/image/bgsample.PNG" name="recipeImage2">
                    </th>
                    <td>
                        <p name="recipeStepDetail2">
                            뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                            방황하였으며, 우리는 교향악이다. 새 이는 같이,
                            기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                            얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
                
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>
                        <img src="../resources/image/bgsample.PNG" name="recipeImage3">
                    </th>
                    <td>
                        <p name="recipeStepDetail3">
                            뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                            방황하였으며, 우리는 교향악이다. 새 이는 같이,
                            기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                            얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
                
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>
                        <img src="../resources/image/bgsample.PNG" name="recipeImage4">
                    </th>
                    <td>
                        <p name="recipeStepDetail4">
                            뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                            방황하였으며, 우리는 교향악이다. 새 이는 같이,
                            기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                            얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
                
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>
                        <img src="../resources/image/bgsample.PNG" name="recipeImage5">
                    </th>
                    <td>
                        <p name="recipeStepDetail5">
                            뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                            방황하였으며, 우리는 교향악이다. 새 이는 같이,
                            기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                            얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
                
                        </p>
                    </td>
                </tr>
            </table>

  
        </div>
        <div id="recipeContent">

            <div id="recipeIngredient">
                <div align="left" style="margin-left: 20px;">재료</div>

                <ul style="margin: 0;">
                    <li>자른 황태포</li>
                    <li>고추장</li>
                    <li>고춧가루</li>
                    <li>올리고당</li>
                    <li>설탕</li>
                </ul>

            </div>

            <div id="recipeDetail">
                <p>
                    뜨고, 생명을 심장은 영원히 같이, 있다. 청춘의 뜨고, 커다란 역사를 청춘의
                    방황하였으며, 우리는 교향악이다. 새 이는 같이,
                    기쁘며, 현저하게 위하여, 남는 광야에서 청춘의 끓는다.
                    얼마나 길을 주는 쓸쓸하랴? 예가 거선의 밥을 꽃이 우리는 군영과 눈이 것이다.
        
                </p>
            </div>



        </div>
        <div id="footer">

            <div id="like" align="right">
                <button name="likeCount">도움이돼요</button>
            </div>

        </div>


		<%@ include file="../common/footer.jsp"%>
	</div>
    
    
</body>
</html>