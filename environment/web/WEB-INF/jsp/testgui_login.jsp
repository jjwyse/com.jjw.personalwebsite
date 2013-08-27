<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Joshua Wyse | Test GUI</title>
<link rel="shortcut icon" href="/jjw/resources/images/favicon.ico">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="/jjw/resources/css/testgui.css">
<script>
   $(function()
   {
      $("input[type=submit], button").button();
   });
   $(function()
   {
      $(document).tooltip();
   });
</script>
</head>
<body>
   <div id="container">
      <header>
         <div id="header">
            <div class="alignleft">
               <span id="green">josh</span><span id="white">wyse</span>
            </div>
            <div class="alignright">
               <ol id="header-links">
                  <a href="${pageContext.request.contextPath}/testgui/one"> one</a>
                  <a href="${pageContext.request.contextPath}/testgui/two"> two</a>
                  <a href="${pageContext.request.contextPath}/testgui/three"> three</a>
                  <a href="${pageContext.request.contextPath}/testgui/four">four</a>
               </ol>
            </div>
            <div style="clear: both;"></div>
         </div>
      </header>
      <div id="body">
         <form id="transferForm" method="post">   
            <div id="login">
               <div class="parameters">
                  <label for="username"><b>Username:</b></label> 
                  <br /> 
                  <input type="text" id="username" name="username" placeholder="Username" />
                  <br /> 
                  <label for="password"><b>Password:</b></label> 
                  <br /> 
                  <input type="text" id="password" name="password" placeholder="Password" />
               </div>
            <br /> 
            <input type="submit" value="Login" />
         </form>
         <div id="transferFormResponse" />
      </div>
      <footer>
         <span id="white">&copy;</span> <span id="green">2013 Joshua Wyse</span>
      </footer>
   </div>
</body>
</html>
