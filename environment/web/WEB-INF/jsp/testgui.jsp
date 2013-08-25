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
      $("#selectable").bind("mousedown", function(e)
      {
         e.metaKey = true;
      }).selectable();
   });
   $(function()
   {
      $("#from").datepicker(
      {
         defaultDate : "+1w",
         changeMonth : true,
         numberOfMonths : 3,
         onClose : function(selectedDate)
         {
            $("#to").datepicker("option", "minDate", selectedDate);
         }
      });
      $("#to").datepicker(
      {
         defaultDate : "+1w",
         changeMonth : true,
         numberOfMonths : 3,
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
         <ol id="selectable">
            <c:forEach var="type" items="${Types1}">
               <li class="ui-widget-content">
                  <c:out value="${type}" />
               </li>
            </c:forEach>
         </ol>
         <div id="date-selector">
            <input type="text" id="from" name="from" /> <input type="text" id="to" name="to" />
         </div>
         <br /> <input type="submit" value="Transfer" title="Click this button to initiate a transfer" />
      </div>
      <footer>
         <span id="green">&copy;</span> 2013 Joshua Wyse
      </footer>
   </div>
</body>
</html>
