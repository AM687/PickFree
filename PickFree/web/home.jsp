<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="osDB" dataSource="jdbc/pickfreedb">
SELECT DISTINCT os FROM software
</sql:query>

<sql:query var="levelDB" dataSource="jdbc/pickfreedb">
SELECT DISTINCT level FROM software
</sql:query>

<sql:query var="functionalityDB" dataSource="jdbc/pickfreedb">
SELECT DISTINCT functionality FROM software
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
            <li><a href="Contribute.jsp" class="button special">Contribute</a></li>
        </ul>
    </nav>
</header>

<!-- Banner -->
<section id="banner">

<!--
".inner" is set up as an inline-block so it automatically expands
in both directions to fit whatever's inside it. This means it won't
automatically wrap lines, so be sure to use line breaks where
appropriate (<br />).
-->
    <div class="inner">

    <header>
        <h2>Pick Free!</h2>
    </header>
    <p>Let us help you pick <strong>Open Source</strong> software,
        <br />
        suited just for your needs.
        <br />
	The time has come to support software
	<br />
	<strong>freedom</strong>
    </p>
    <footer>
        <ul class="buttons vertical">
            <li><a href="#main" class="button fit scrolly">Give it a spin!</a></li>
        </ul>
    </footer>

    </div>

</section>


<form method='GET' action='PickResults.jsp'>
    
		<!-- Main -->
<article id="main">

    <header class="special container">
    <header>
	<h2>Whats your setup: <strong>Pick OS</strong></h2>
	<p>Please tell us your operating system</p>
    </header>
    <footer>
	<ul class="buttons">
            <c:forEach var="row" items="${osDB.rows}">
                <li>
                <input type="radio" id="${row.os}" name="os" value="${row.os}">
                <label for="${row.os}" class="button special fit">${row.os}</label>
                </li>
            </c:forEach>     
	</ul>
        
        <ul class="buttons">
           <li><a href="#cta" class="button fit scrolly">Go on...</a></li>
        </ul>
    </footer>

    </header>

</article>
		<!-- One -->
<section id="cta">

    <header>
	<h2>How <strong>experienced</strong> are you?</h2>
	<p>Please choose how complex you want your software to be</p>
    </header>
    <footer>
	<ul class="buttons">
            <c:forEach var="row" items="${levelDB.rows}">
                <li>
                <input type="radio" id="${row.level}" name="level" value="${row.level}">
                <label for="${row.level}" class="button fit">${row.level}</label>
                </li>
            </c:forEach> 
	</ul>
        
        <ul class="buttons">
           <li><a href="#two" class="button fit scrolly">Keep Going...</a></li>
        </ul>
    </footer>

</section>

		<!-- Two -->
<section id="two" class="wrapper style1 container special">
                                   
    <br />
    <header>
	<h2>What is your <strong>purpose</strong> ?</h2>
	<p>Please choose what you want your software to do</p>
    </header>
    <footer>
    <ul class="buttons">
        <c:forEach var="row" items="${functionalityDB.rows}">
            <li>
            <input type="radio" id="${row.functionality}" name="functionality" value="${row.functionality}">
            <label for="${row.functionality}" class="button fit">${row.functionality}</label>
            </li>
        </c:forEach> 
    </ul>
    
    <ul class="buttons">
           <li><a href="#cta2" class="button special fit scrolly">One last step...</a></li>
    </ul>
        
        
    </footer>    
</section>


        	<!-- CTA -->
<section id="cta2">

    <header>
	<h2>Let's see what you got</h2>
	<p>Submit your choices</p>
        
        <ul class="buttons">
            <li><input type="submit" value="Go!" class="button fit"></li>
        </ul>
    </header>
    
</section>
</form>
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
