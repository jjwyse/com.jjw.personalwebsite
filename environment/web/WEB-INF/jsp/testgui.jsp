<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      $("input[type=submit], button").button().click(function(event)
      {
         event.preventDefault();
      });
   });
   $(function()
   {
      $(document).tooltip();
   });
   $(function()
   {
      $("#radio").buttonset();
   });
   $(function()
   {
      $("#selectable").bind("mousedown", function(e)
      {
         e.metaKey = true;
      }).selectable();
   });
   $(function()
   {
      $("#from").datepicker(
      {
         defaultDate : "d",
         changeMonth : true,
         numberOfMonths : 1,
         onClose : function(selectedDate)
         {
            $("#to").datepicker("option", "minDate", selectedDate);
         }
      });
      $("#to").datepicker(
      {
         defaultDate : "+1d",
         changeMonth : true,
         numberOfMonths : 1,
         onClose : function(selectedDate)
         {
            $("#from").datepicker("option", "maxDate", selectedDate);
         }
      });
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
                  <a href="/one"> one</a>
                  <a href="/two"> two</a>
                  <a href="/three"> three</a>
                  <a href="/four">four</a>
               </ol>
            </div>
            <div style="clear: both;"></div>
         </div>
      </header>
      <div id="body">
<!--          <div id="radio">
            <label for="radio1">Selection 1</label> 
            <input class="radioButton" type="radio" id="radio1" name="radio" checked="checked" />
            <label for="radio2">Selection 2</label>
            <input class="radioButton" type="radio" id="radio2" name="radio" />
         </div>
 -->         <div id="selectables">
            <ol id="selectable">
               <c:forEach var="type" items="${Types1}">
                  <li class="ui-state-default">
                     <c:out value="${type}" />
                  </li>
               </c:forEach>
            </ol>
         </div>
         <div id="fields">
         <div class="parameters">
            <label><b>Date Range:</b></label> 
            <br /> 
            <input type="text" id="from" name="from" placeholder="From" />
            <input type="text" id="to" name="to" placeholder="To" />
         </div>
         <div class="parameters">
            <label><b>Username:</b></label> 
            <br /> 
            <input type="text" id="user" name="user" placeholder="Username" />
            <br /> 
            <label><b>Version:</b></label> 
            <br /> 
            <input type="text" id="version" name="version" placeholder="Version" />
         </div>
         </div>
         <br /> <input type="submit" value="Transfer" title="Click this button to initiate a transfer" />
      </div>
      <footer>
         <span id="white">&copy;</span> <span id="green">2013 Joshua Wyse</span>
      </footer>
   </div>
</body>
</html>
