<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.recipe.model.vo.*, java.util.*" %>   

<%
	Recipe r = (Recipe)request.getAttribute("r");
	ArrayList<RecipeAttach> list = (ArrayList<RecipeAttach>)request.getAttribute("list");

%>
    
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
                <td colspan="3" width="600px">&nbsp; <%=r.getRecipeTitle() %></td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성자</th>
                <td colspan="3" width="600px">&nbsp; <%=r.getMem() %></td>
            </tr>
            <tr>
                <th class="table-success" style="text-align: center;">작성일</th>
                <td width="200px"> &nbsp; <%=r.getRegDate() %></td>
                <th class="table-success" style="text-align: center;">조회수</th>
                <td> &nbsp; <%=r.getClickNo() %></td>
            </tr>

        </table>

    </div>

	

    <div class="wrap">

        <h3 align="center" style="margin: 5px;"><%=r.getRecipeTitle() %></h3>
        <hr>
        <div id="recipeImage">

            <table id="recipeStep">
            	<%for(RecipeAttach ra : list) { %>
                <tr>
                    <th>
                        <img src="<%=broccoli %>/<%=ra.getRecipeAttachImg() %>" name="recipeImage1">
                    </th>
                    <td>
                        <p name="recipeStepDetail1">
                            
                            <%=ra.getSequenceContent() %>
                
                        </p>
                    </td>
                </tr>
               	<% } %>
            </table>

  
        </div>
        <div id="recipeContent">

            <div id="recipeIngredient">
                <div align="left" style="margin-left: 20px;">재료</div>

                <ul style="margin: 0;" id="Ing">
					
                </ul>

            </div>

        </div>


		<%@ include file="../common/footer.jsp"%>
	</div>
    
    <script>
    
    
    $(function(){
    	splitIng();

    })

    function splitIng(){
    	
    	var allIng = "<%=r.getRecipeIng()%>";
    	
    	var ing = allIng.split(",");
    	
    	var str = "";
    	
    	for(var i in ing) {
    		
    	 	str +=	"<li>" + ing[i] + "</li> <br>";
    	}

		$("#Ing").html(str);  	
    }
    
    </script>
    
    
</body>
</html>