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
      $("#selectable").bind("mousedown", function(e) {
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
            <span id="green">josh</span><span id="white">wyse</span>
         </header>
      <div id="body">
         <ol id="selectable">
            <c:forEach var="type" items="${Types1}">
               <li class="ui-widget-content">
                  <c:out value="${type}" />
               </li>
            </c:forEach>
         </ol>
      </div>
         <footer>
            <span id="green">&copy;</span> 2013 Joshua Wyse
         </footer>
   </div>

   <%--    
   <label for="from">From</label>
   <input type="text" id="from" name="from" />
   <label for="to">to</label>
   <input type="text" id="to" name="to" />

   <br />
   <br />
   <br />

   <button>A button element</button>
   <input type="submit" value="A submit button" />

   <p>
      <a href="#" title="That's what this widget is">Tooltips</a>
      can be attached to any element. When you hover the element with your mouse, the title attribute is displayed in a
      little box next to the element, just like a native tooltip.
   </p>
   <p>
      But as it's not a native tooltip, it can be styled. Any themes built with
      <a href="http://themeroller.com" title="ThemeRoller: jQuery UI's theme builder application">ThemeRoller</a>
      will also style tooltips accordingly.
   </p>
   <p>Tooltips are also useful for form elements, to show some additional information in the context of each field.</p>
   <p>
      <label for="age">Your age:</label> <input id="age" title="We ask for your age only for statistical purposes." />
   </p>
   <p>Hover the field to see the tooltip.</p>
 --%>
</body>
</html>
