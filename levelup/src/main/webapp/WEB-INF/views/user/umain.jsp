<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMain</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

header {
    background: #FEFDFC;
    width: 100%;
    color: #fff;
    align-items: center;
}

.umainlogo {
    width: 40px;
    height: 40px;
    margin-left: 50%;
}

nav {
    display: flex;
    align-items: center;
}

nav ul {
    list-style: none;
    display: flex;
    text-align: center;
    margin: 0;
    padding: 0;
    width: 100%; 
}

nav ul li {
    margin: 0 10px;
    text-align: center; 
}

nav ul li a{
	text-decoration: none;
	color: black;
}

.hero {
    background: #211B10 url('/levelup/resources/images/imagearr/image1.jpg') no-repeat center center;
    background-size: cover;
    color: #fff;
    text-align: center;
    padding: 100px 0;
    transition: background-image 1s ease-in-out;
    height: 400px;
}

.hero .umainloginbox{
	margin-top : 20px;
	border: 2px solid black;
	margin-left: 80%;
	width: 200px;
	height: 300px;
}

.gamestartbox{
	
}

.uloginbox{

}

.hero h1 {
    font-size: 36px;
    margin: 0;
}

.hero p {
    font-size: 18px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background: #333;
    color: #fff;
    text-decoration: none;
    margin-top: 20px;
    border-radius: 5px;
}

.btn-secondary {
    background: #777;
}

.featured-games {
    padding: 40px 0;
}

.game-card {
    text-align: center;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin: 20px;
    display: inline-block;
    max-width: 300px;
}

.game-card img {
    max-width: 100%;
    height: auto;
}

.game-card h3 {
    font-size: 24px;
}

.game-card p {
    font-size: 16px;
}

footer {
    background: #333;
    color: #fff;
    text-align: center;
    padding: 20px 0;
}
</style>
</head>
<body>
<header>
    <nav>
        <div class="container">
            <a href="${ pageContext.servletContext.contextPath }/umain.do" ><img src="/levelup/resources/images/users/umainlogo.jpg" class="umainlogo" alt="Game Logo"></a>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">shop</a></li>
                <li><a href="#">items</a></li>
                <li><a href="#">help</a></li>
                <li><a href="#">About Us</a></li>
            </ul>
        </div>
    </nav>
</header>

<section class="hero">
	<div class="container">
		<div class="umainloginbox">
			<div class="gamestartbox"></div>
			<div class="uloginbox"></div>
		</div>
	</div>
</section>

<section class="featured-games">
    <div class="container">
        <h2>event cash shop</h2>
        <div class="game-card">
            <img src="#" alt="item 1">
            <h3>item Title 1</h3>
            <p>Explore a fantastic world in this epic adventure.</p>
            <a href="game1.jsp" class="btn btn-secondary">구매하기</a>
        </div>
        <div class="game-card">
            <img src="#" alt="item 2">
            <h3>item Title 2</h3>
            <p>Compete with friends in this exciting multiplayer game.</p>
            <a href="game2.jsp" class="btn btn-secondary">구매하기</a>
        </div>
         <div class="game-card">
            <img src="#" alt="item 3">
            <h3>item Title 3</h3>
            <p>Compete with friends in this exciting multiplayer game.</p>
            <a href="game2.jsp" class="btn btn-secondary">구매하기</a>
        </div>
        <!-- Add more featured games here -->
    </div>
</section>

<footer>
    <div class="container">
        <p>&copy; 2023 team.gangnamstory</p>
    </div>
</footer>
</body>
</html>