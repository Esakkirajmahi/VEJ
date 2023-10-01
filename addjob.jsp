<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #00FFFF;
    text-shadow : 4px 4px 10px black ;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

.form-group input,
.form-group select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    transition: border-color 0.2s;
}

.form-group input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    cursor: pointer;
}

.form-group input:focus,
.form-group select:focus {
    border-color: #007BFF;
}

.form-group input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Additional styling for responsiveness */
@media (max-width: 600px) {
    .container {
        padding: 10px;
    }
}

</style>
</head>
<body>
 <body class="container">
        <div>
            <h2><strong><center>FILL UP THE FORM TO POST JOB</center></strong></h2>
            <hr/>
        </div>
        
        <form action="AddJob"  method="post">
            <div class="form-group">
                <label for="name" class="control-label col-sm-2">Location</label>
                <div class="col-sm-4">
                    <select name="loc" style="width: 165"><option>
								- Select -</option>
							<option>DELHI</option>
							<option>BANGLORE</option>
							<option>CHENNAI</option>
							<option>GURGAON</option>
							<option>HYDERABAD</option>
							<option>MUMBAI</option>
							<option>KOLKATA</option>
							<option>PUNE</option>
							<option>NOIDA</option>
							<option>KANPUR</option></select> 
                </div>
               
             </div>    
           
            <div class="form-group">
                <label for="userName" class="control-label col-sm-2">FunctionalArea</label>
                <div class="col-sm-4">
                   <select name="area" style="width: 165" id="industry"><option>- Select -</option>
						<option>Training</option>
						<option>Developer</option>
						<option>Full stack Developer</option>
						<option>BPO</option>
						<option>Devops</option>
						<option>Software Testing</option>
						</select>
                </div>
                 
            </div>
            
            <div class="form-group">
                <label for="email" class="control-label col-sm-2">Job Post</label>
                <div class="col-sm-4">
                    <select name="key" style="width: 165"><option>-
							Select -</option>
						<option>Java Trainer</option>
						<option>Data Analyst</option>
						<option>MEAN Stack</option>
						<option>Java Stack</option>
						<option>.net Developer</option>
						<option>Project Manager</option>
						<option>HR</option>
						<option>IT Professional</option></select>
                </div>
             
            </div>
            <div class="form-group">
                <label for="phone" class="control-label col-sm-2">Phone No.:</label>
                <div class="col-sm-4">
                     <input type="tel" class="form-control" name="phone" placeholder="+91xxxxxxxxxx">
                </div>
        
            </div>
           
            <div class="form-group">
                <label for="pwd" class="control-label col-sm-2">Vacancy:</label>
                <div class="col-sm-4">
                    <input type="text" name="vac" value="" placeholder="enter the number of vancancies">
                </div>
              
            </div>
            
            <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Skills Required</label>
                <div class="col-sm-4">
                    <input type="text" name="skill" value="">
                </div>
                
            </div>
            <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Salary</label>
                <div class="col-sm-4">
                <input type="text" name="sal" value="">
                </div>
     
            </div>
            <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Interview Date</label>
                <div class="col-sm-4">
                    <input type="text" name="ivdt"  placeholder = "YYYY-MM-DD" value="">
                </div>
               
            </div>
            <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Interview Time</label>
                <div class="col-sm-4">
                <input type="text" name="ivt" value="">
                </div>
                
            </div>
             <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Interview Place</label>
                <div class="col-sm-4">
                <input type="text" name="ivp" value="">
                </div>
                
            </div>
             <div class="form-group">
                <label for="cnfrmPwd" class="control-label col-sm-2">Email Id</label>
                <div class="col-sm-4">
                <input type="email" name="email" value="">
                </div>
                
            </div>
            
           
            
            <div class="col-sm-6">
                <input type="submit" value="Submit" />
            </div>
        </form>
      
    </body>
</body>
</html>