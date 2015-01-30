<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <li class="current">
                <form id="jsform" method="POST" action="SignOut">
                    <a href="#" onclick="document.getElementById('jsform').submit();"> Sign Out, ${sessionScope.user} </a>
                </form>
            </li>
            <li><a href="Contribute.jsp" class="button special">Contribute</a></li>
        </ul>
    </nav>
</header>

<section id="banner">
    <div class="inner">

    <header>
        <h2>Pick Free!</h2>
    </header>
    
    <p>
        Software successfully <strong>added</strong>
    </p>

    <footer>
        <ul class="buttons vertical">
            <li><a href="home.jsp" class="button fit scrolly">Go check!</a></li>
        </ul>
    </footer>
    </div>    
</section>
    
		<!-- Main -->


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
