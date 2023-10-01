<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@import
	url("https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900")
	;

*, ::before, ::after {
	box-sizing: border-box;
}

#vej
{
   color : #00FFFF;
}


body {
	margin: 0;
	padding: 0.5em 0.5em 0.5em 0;
	height: 100vh;
	overflow: hidden;
	font-family: 'Montserrat', sans-serif;
	font-size: 62.5%;
	color: #fff;
	background-color: #1d1e22;
}

::-webkit-scrollbar {
	width: 8px;
	height: 6px;
}

::-webkit-scrollbar-track {
	background-color: #1d1e22;
}

::-webkit-scrollbar-thumb {
	border-radius: 1em;
	background-color: #b3b3b3;
}

::-webkit-scrollbar-thumb:hover {
	background-color: #00FFFF;
}

a {
	text-decoration: none;
	color: #fff;
}

a:hover {
	color: #00FFFF;
}

h1, h2, header a {
	text-transform: uppercase;
}

.smooth {
	margin: 0 auto;
	height: 100%;
	overflow-x: hidden;
	overflow-y: scroll;
	scroll-behavior: smooth;
}

header, footer {
	position: relative;
	padding: 2em 3em;
	display: flex;
	align-items: center;
	font-size: 1rem;
}

#butt
{
	color : #808080;

}


header {
	position: -webkit-sticky;
	position: sticky;
	top: 0;
	z-index: 2;
	height: 10vh;
	background-color: #1d1e22;
}

header h3 {
	position: relative;
	margin: 0;
	font-size: 2rem;
	color: #df2359;
}

header ul {
	list-style-type: none;
	padding: 0;
	margin: 1em 0;
	display: flex;
	width: 100%;
	justify-content: flex-end;
	align-items: center;
}

header ul li {
	position: relative;
	margin: 0 1em;
	transition: all 0.2s linear;
}

header ul li a {
	font-weight: 500;
	color: #fff;
}

header ul li::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

header ul li:hover::before {
	width: 100%;
	background-color: #00FFFF;
}

section {
	position: relative;
	display: flex;
	min-height: 100vh;
	padding: 2em 3em;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-size: 1rem;
	background-color: #191a1d;
}

section:nth-child(odd) {
	background-color: #1d1e22;
}

section#one {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/02/09/12/07/ocean-2051760_1280.jpg");
	background-position: center;
	background-size: cover;
	color: #fff;
}

section#one::after {
	position: absolute;
	content: '';
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-image: linear-gradient(0deg, rgba(29, 30, 34, 0.3), #1d1e22);
}

section#two .blocks, section#four .blocks {
	padding: 2em 0;
	display: flex;
	width: 100%;
	flex-flow: row wrap;
	justify-content: space-around;
	align-items: center;
}

section#two .blocks .block, section#four .blocks .block {
	margin: 0 auto;
	display: flex;
	width: 23%;
	height: 150px;
	justify-content: center;
	align-items: center;
	border-radius: 1em;
	background-color: #191a1d;
	transition: transform 0.2s linear;
}

section#two .blocks .block:hover, section#four .blocks .block:hover {
	transform: translateY(-10px);
}

section#four .blocks .block {
	padding: 0.25em 1em;
	width: 49%;
	height: auto;
	flex-flow: column wrap;
	background-color: #191a1d;
}

section#four .dots {
	margin-top: 1em;
	display: flex;
	width: 25%;
	align-items: center;
	justify-content: space-around;
}

section#four .dot {
	width: 12px;
	height: 12px;
	cursor: pointer;
	border-radius: 50%;
	background-color: #fff;
}

section#four .dot:hover {
	background-color: #00FFFF;
}

section h2 span {
	color: #00FFFF;
}

.content {
	position: relative;
	z-index: 1;
	display: flex;
	align-items: center;
}

.content h1 {
	position: relative;
	font-size: 3rem;
}

.content h1::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 10%;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

.content p.lead {
	font-size: 1.25rem;
}

.content .blur {
	position: relative;
	overflow: hidden;
	margin: auto;
	margin-left: 2em;
	padding: 1em;
	width: 100%;
	height: 350px;
	border-radius: 0.35em;
}

.content .blur::before {
	position: absolute;
	content: '';
	top: -25%;
	left: -25%;
	width: 150%;
	height: 150%;
	box-shadow: inset 0 0 0 600px rgba(255, 255, 255, 0.3);
	filter: blur(10px);
}

form {
	position: relative;
	z-index: 3;
	padding: 1em;
	display: flex;
	width: 100%;
	height: 100%;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
	border: 2px solid #fff;
	border-radius: 0.35em;
}

form img {
	width: 64px;
	height: 64px;
}

form input {
	margin-bottom: 1em;
	min-height: 3em;
	font-size: 1em;
	color: #fff;
	border: 0;
	border-bottom: 2px solid #fff;
	background: none;
}

form input::placeholder {
	position: relative;
	top: 0;
	color: inherit;
	transition: all 0.2s linear;
}

form input:focus {
	outline: none;
}

form input:focus::placeholder {
	top: -1.25em;
	font-size: 0.825rem;
}

form .button {
	position: relative;
	margin-top: 1em;
	padding: 1em 3em;
	text-transform: uppercase;
	display: block;
	font-size: 1rem;
	cursor: pointer;
	color: #fff;
	border: 0;
	border-radius: 0.35em;
	background-color: #00FFFF;
}

footer {
	padding-bottom: 1em;
	width: 100%;
	min-height: 35vh;
	flex-direction: column;
	justify-content: space-around;
	background-color: #191a1d;
}

footer h3 {
	position: relative;
}

footer h3::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #00FFFF;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

footer h5 {
	text-transform: uppercase;
}

footer h5.follow {
	color: #00FFFF;
}

footer ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

footer ul li {
	line-height: 1.5;
	transition: transform 200ms ease-in;
	will-change: transform;
}

footer ul li:hover {
	transform: translateX(5px);
}

footer .widgets, footer .copy {
	display: flex;
	width: 100%;
	justify-content: space-between;
	align-items: center;
}

footer .widgets .widget, footer .copy .widget {
	display: flex;
	flex-direction: column;
	align-items: center;
}

footer .copy {
	margin-top: 1em;
	border-top: 2px solid #666;
}

footer .copy p {
	margin: 0.75em 0 0;
}

footer .copy span {
	position: relative;
	display: inline-block;
	color: #00FFFF;
	animation: hearts 0.6s cubic-bezier(0.18, 0.89, 0.29, 1.05) infinite;
}

@media ( max-width : 991px) {
	.blur {
		display: none;
	}
	.content {
		text-align: center;
	}
	.content h1::before {
		display: none;
	}
}

@
-moz-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
-webkit-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
-o-keyframes hearts { 50% {
	transform: scale(1.4);
}

}
@
keyframes hearts { 50% {
	transform: scale(1.4);
}
}
</style>
</head>
<body>


	<div class="smooth">
		<header>
			<h3 id="vej">VEJ</h3>
			<ul>
				<li><a href="#one">Home</a></li>
				<li><a href="#two">About Us</a></li>
				<li><a href="CompanyLogin.jsp">Company Login</a></li>
				<li><a href="SIignInPage.jsp">Job Seeker Registration</a></li>
				<li><a href="#bottom">ContactUS</a></li>
			</ul>
		</header>
		<section id="one">
			<div class="content">
				<div>
					<h1><span> Dear Graduates !</span></h1>
					<p class="lead">"Welcome to  VEJ  – Your Gateway to Opportunities, Where Careers Begin and Aspirations Thrive!
						Discover Your Dream Job Today and Take the Next Step in Your Career Journey.Embark on Your Professional Journey with Confidence.
						Browse Thousands of Job Listings,Apply and Connect with Top Companies in Your Industry
						and Elevate Your Career to New Heights. Your Future Starts Here
						Start Building Your Future with Us!"</p>
				</div>
					<c:set var="error_email" scope = "session" value = "0"></c:set>
					<c:set var="error_pass" scope ="session" value ="0"></c:set>
				<div class="blur">
				
					<form action="Login" method="post" >
						<img
							src="https://cdn-icons-png.flaticon.com/128/7297/7297784.png" />
						<input type="text" placeholder="Email:" name="email"/>
						 <input type="password" placeholder="Password:" name="password"/>
						 <input class="button"  type="submit" value="Login" id = "butt"/>
						 
						 	<c:if test="${error1 == error_email }">
					<div><P>User not exists! Create Account</P></div>
					<% session.removeAttribute("error1"); %>
					</c:if>
					
					<c:if test="${ error2 == error_pass }">
					<div><p>Incorrect Password</p></div>
					<% session.removeAttribute("error2"); %>	
					</c:if>
						 	
					</form>
				
					
									
				</div>
			</div>
		</section>
		<section id="two">
			<h2>
				<span> AboutUs</span>
			</h2>
			<p>Your trusted partner in finding the perfect job match for your career aspirations. Our mission is to connect job seekers with the opportunities that align with their skills, ambitions, and values, while helping employers discover top talent to drive their businesses forward.we envision a world where every individual has the chance to thrive in their dream career. We aim to revolutionize the job search process by providing an intuitive platform that simplifies the journey from job discovery to application, all while fostering a community of growth and development.</p>
			<div class="blocks">
				<div class="block">
					<p>MNCs > <br> 1.5k Actively hiring</p>
				</div>
				<div class="block">
					<p>Product ><br> 608 are actively hiring</p>
				</div>
				<div class="block">
					<p>Banking & Finance ><br> 146 are actively hiring </p>
				</div>
				<div class="block">
					<p>Hospitality > <br> 29 are acctively hiring</p>
				</div>
			</div>
			<p>Tailored Job Matching: Our advanced algorithms analyze your skills, preferences, and experience to present you with job listings that best match your profile.Whether you're a recent graduate, a seasoned professional, or somewhere in between, our platform features a wide range of job opportunities across industries and roles.We collaborate with esteemed companies and organizations, connecting them with qualified candidates and facilitating meaningful engagements.Your satisfaction is our priority. Our user-friendly interface and responsive support team ensure a seamless and enjoyable experience throughout your job search journey.</p>
		</section>
		<section id="three">
			<h2><span> Services</span>
			</h2>
			<p>Jobs by Skill-Call Center Jobs | Mechanical Engineering Jobs | Biotechnology Jobs | Nursing Jobs | BPO Jobs | Networking Jobs | MBA Jobs | Java Jobs | SEO Jobs | SAP Jobs |
			Jobs by Location-Jobs in Delhi | Jobs in Bangalore | Jobs in Mumbai |  Jobs in Chennai | Jobs in Hyderabad | Jobs in Kolkata | Jobs in Pune | Jobs in Chandigarh | Jobs in Lucknow | Jobs in Coimbatore |
			Jobs by Function-Banking Jobs | Biotech Jobs | Airlines Jobs | HR Jobs | Accounts Jobs | Supply Chain Jobs | Legal Jobs | Marketing Jobs | Telecom Jobs | Hotels Jobs |
			Jobs by Industry-IT Jobs | Railway Jobs | UPSC Jobs | SSC Jobs | Law Jobs | Engineering Jobs | Post Graduate Jobs | Ph.D Jobs |
			Career Services-Xpress Resume+ | Right Resume | Career Booster | Pharmaceuticals Jobs | Travel Jobs | Oil and Gas Jobs | FMCG Jobs | Construction Jobs | Chemicals Jobs | Media Jobs | Retailing Jobs | PR Jobs |
			Career Courses-Technology Courses | Management Courses | Accounting Courses | Marketing Courses | Law & Security Courses | Quality Testing Courses | Recruitment Course |
			Career Center-Career Management Tips | Interview Tips | Work Life Balanace Tips | Resume Cover & Letters | Salary Negotiation | How to Job Search | Career Tips for Women | How to Save Tax |
			Govt. Jobs-Teaching Jobs | Defence Jobs | Bank Jobs | Resume Highlighter
			All Jobs-Walkin Jobs | Contract Jobs | Placement Jobs | Jobs for Women | Startup Jobs | International Jobs</p>
		</section>
		
		<footer id="bottom">
			<div class="widgets">
				<h3>VEJ</h3>
				<div class="widget">
					<h5 class="follow">Follow me</h5>
					<ul>
						<li><a href=""
							target="blank">Facebook</a></li>
						<li><a href=""
							target="blank">Instagram</a></li>
						<li><a href=""
							target="blank">Twitter</a></li>
						<li><a href="https://github.com/rakeshgowdan?tab=repositories" target="blank">GitHub</a></li>
					</ul>
				</div>
				<div class="widget">
					<h5 class="follow">Toll Free</h5>
					<ul>+91 987654321</li>
						<li>
						<li>+91 987654321 </li>
						
					</ul>
				</div>
				<div class="widget">
					<h5 class="follow">Mail-Id</h5>
					<ul>
						<li>info@VEJ.com</li>
						<li>report@VEJ.com</li>
						<li>contact@VEJ.com</li>
						<li>complain@VEJ.com</li>
					</ul>
				</div>
				<div class="widget">
					<h5 class="follow">Beware of Fraudsters:  </h5>
					<ul>
						<li>VEJ does not authorize any agency/partner<br> to collect fees against job offers.</li>
						<li>Report any suspicious activity to  </li>
						<li>info@VEJ.com</li>
						<li>spam@VEJ.com</li>
					</ul>
				</div>
			</div>
			<div class="copy">
				<p>
					&copy <span>&#9829;</span> <a
						href="https://esakkiraj.framer.website" target="_blank">Esakkiraj</a>
				</p>
				<a href="#one">Scroll top &#x2191;</a>
			</div>
		</footer>
	</div>
</body>
</html>