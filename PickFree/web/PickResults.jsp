<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="results" dataSource="jdbc/pickfreedb">
SELECT * FROM software WHERE os='${param.os}' AND level='${param.level}' AND functionality='${param.functionality}'
</sql:query>

<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Pick Free!</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
   
    <noscript>
        <link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
	<link rel="stylesheet" href="css/style-noscript.css" />
    </noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
</head>
<body class="index">

<!-- Header -->
<header id="header" class="alt">
    <h1 id="logo"><a href="home.jsp">Pick Free!<span>...open source software</span></a></h1>
    <nav id="nav">
        <ul>
            <li class="current"><a href="home.jsp">Home</a></li>
            </li>
            <li>
                <a href="#" class="submenu">Contribute</a>
                    <ul>
                        <li><a href='#'>Log In</a></li>
                        <li><a href='#'>Sign Up</a></li>
                    </ul>
            </li>
        </ul>
    </nav>
</header>
<section id="banner">
    <div class="inner">

    <header>
        <h2>Pick Free!</h2>
    </header>

    <footer>
        <ul class="buttons vertical">
            <li><a href="#main" class="button fit scrolly">Results below</a></li>
        </ul>
    </footer>
</section>
    
		<!-- Main -->
<article id="main">
<section class="wrapper style2 container special-alt">
<div class="row 50%">
<c:forEach var="row" items="${results.rows}">
    <div class="8u 12u(2)">
				
        <header>
            <h2>${row.name}</h2>
        </header>
        <p>${row.description}</p>
        
        <footer>
        <ul class="buttons">
            <li><a href="${row.url}" target="_blank" class="button fit">Take me to the download page!</a></li>
        </ul>
        </footer>
							
    </div>

    <div class="4u 12u(2) important(2)">
        <ul class="featured-icons">
            <li><span class="icon fa-clock-o"><span class="label">Feature 1</span></span></li>
            <li><span class="icon fa-volume-up"><span class="label">Feature 2</span></span></li>
            <li><span class="icon fa-laptop"><span class="label">Feature 3</span></span></li>
            <li><span class="icon fa-inbox"><span class="label">Feature 4</span></span></li>
            <li><span class="icon fa-lock"><span class="label">Feature 5</span></span></li>
            <li><span class="icon fa-cog"><span class="label">Feature 6</span></span></li>
        </ul>
    </div>
</c:forEach>
    
    <ul class="buttons">
        <li><a href="#cta" class="button fit scrolly">Not quite what i wanted</a></li>
    </ul>
</div>
</section>


</article>
		<!-- One -->
<section id="cta">
    <header>
	<h2>Not satisfied with the results?</h2>
	<p>Or maybe you just want to try again...</p>
        
        <ul class="buttons">
            <li><a href="home.jsp" class="button">Search for something else</a></li>
        </ul>
    </header>


</section>

		<!-- Footer -->
<footer id="footer">

    <ul class="icons">
	<li><a href="https://github.com/AM687/PickFree" target="_blank" class="icon circle fa-github"><span class="label">Github</span></a></li>
    </ul>

    <ul class="copyright">
	<li>&copy; Copyright  George Georgiou </li>
	<li>Design: George Georgiou &amp <a href="http://html5up.net">HTML5 UP</a></li>
    </ul>

</footer>

</body>
 <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.dropotron.min.js"></script>
    <script src="js/jquery.scrolly.min.js"></script>
    <script src="js/jquery.scrollgress.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-layers.min.js"></script>
    <script src="js/init.js"></script>
</html>

