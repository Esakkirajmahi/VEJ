<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<!DOCTYPE html>
<html>

<head>
    <title>Job Portal</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
.search {
  margin: 20px 0;
}

#searchInput {
  padding: 10px;
  width: 200px;
}
nav h1{
 padding-bottom : 10px  ;

}

nav{
  background-color : #808080;
 position : fixed;
  width  :100%;
  top :0;
  left :0;
  margin: 0;
  gap: 55%;
  display : flex;
  justify-content : space-betweeen ;
  align-items : center ;
  color : #00FFFF;
  padding :10px;
 
}
#emptydiv{
  height :80px;
  

}


header {
    background-color: #333;
    color: #fff;
    padding: 10px;
}

header h1 {
    margin: 0;
}

nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

nav ul li {
    display: inline-block;
    margin-right: 10px;
}

nav ul li a {
    color: #00FFFF;
    text-decoration: none;
}

main {
    padding: 20px;
}

.job {
    background-color: #f5f5f5;
    padding: 20px;
    margin-bottom: 20px;
}

.job h3, .job h4 {
    margin: 0;
}

.job p {
    margin-top: 10px;
}

.apply-btn {
    display: inline-block;
    padding: 5px 10px;
    background-color: #333;
    color: #fff;
    text-decoration: none;
    margin-top: 10px;
}

footer {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
}
</style>
<body>
    <header>
       
        <nav>
            <ul>
             <h1>VEJ</h1>
                <li><a href="#">Home</a></li>
                <li><a href="#">Browse Jobs</a></li>
                <li><a href="addjob.jsp">Post a Job</a></li>
                <li><a href="FrontPage.jsp">Log Out</a></li>
            </ul>
        </nav>
    </header>

    <main>
     <div id ="emptydiv"></div>
        <section class="job-listings">
          <h3>JOB LISTINGS!</h3>
          <c:forEach var="data" items="${datas }">
           <div class="job">
               <h3> Role :
                ${data.desig}</h3><br>
              <h4>   Company Name : ${data.compname}</h4><br>
              <p>  Required Skills : ${data.skills}</p><br>
               <p>  Vaccancy : ${data.vaccancy}</p><br>
               <p>  Salary : ${data.salary }</p><br>   
               <p>  Date Of Interview : ${data.date}</p><br>
               <p>  Location : ${data.place}</p><br>
               <p>  Contact : ${data.phone_num}</p><br>
               <p>  Website : ${data.web}</p>
                
                
                
                
                
            </div>
          
          </c:forEach>
            
        </section>
    </main>

    <footer>
        <p>&copy; 2022 Job Portal. All rights reserved.</p>
    </footer>
    
    <script src="script.js"></script>
</body>
</html>