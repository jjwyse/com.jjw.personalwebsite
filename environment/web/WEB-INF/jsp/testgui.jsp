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
      $("input[type=submit], button").button().click(function(event)
      {
         event.preventDefault();

         var isValid = isFormValid();
         if (!isValid)
         {
            return false;   
         }

         /* Get the selected types, put them in an array and then serialize form back to server */
         var selectedTypes = getSelectedTransferTypes();
         var transferTypes = [];
         for (var i = 0; i < selectedTypes.length; i++) {
            transferTypes.push(selectedTypes[i].innerHTML);
         }

         var serializedForm = $("#transferForm").serialize() + "&transferTypes=" + transferTypes;
         $.post('${pageContext.request.contextPath}/testgui', serializedForm ,function(response) {
            $('#transferFormResponse').text(response);
         });
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
      $("#fromDate").datepicker(
      {
         defaultDate : "d",
         changeMonth : true,
         numberOfMonths : 1,
         onClose : function(selectedDate)
         {
            $("#toDate").datepicker("option", "minDate", selectedDate);
         }
      });
      $("#toDate").datepicker(
      {
         defaultDate : "+1d",
         changeMonth : true,
         numberOfMonths : 1,
         onClose : function(selectedDate)
         {
            $("#fromDate").datepicker("option", "maxDate", selectedDate);
         }
      });
   });

   /*
   * Checks to see if the form is valid before posting it
   */
   function isFormValid()
   {
      var response = true;
      var result = $( "#transferFormResponse" ).empty();
      if (getSelectedTransferTypes().length <= 0)
      {
         result.append("* Must select at least one type <br/>");
         response = false;
      }
      
      var fromDate = $( "#fromDate" ).datepicker( "getDate" );
      var toDate = $( "#toDate" ).datepicker( "getDate" );
      if(!fromDate || !toDate)
      {
          result.append("* Fill out both the to date and from date <br/>");
          response = false;
      }
      
      if (!response)
      {
         result.addClass("red");
      }
      else
      {
         result.removeClass("red");
      }
      return response;
   }
   
   /*
   * Returns the different selected types we want to transfer
   */
   function getSelectedTransferTypes()
   {
      return $( "#selectable .ui-selected" ).toArray();
   }
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
         <form id="transferForm" method="post" >
            <div id="selectables">
               <ol id="selectable">
                  <c:forEach var="type" items="${Types1}">
                     <li id="li_${type}" class="ui-state-default">
                        <c:out value="${type}" />
                     </li>
                  </c:forEach>
               </ol>
               <div style="clear: both;"></div>
            </div>
            <div id="fields">
               <div class="parameters">
                  <label for="fromDate"><b>Date Range:</b></label> 
                  <br /> 
                  <input type="text" id="fromDate" name="fromDate" placeholder="From" value="${fromDate}"/>
                  <input type="text" id="toDate" name="toDate" placeholder="To" value="${toDate}"/>
               </div>
               <div class="parameters">
                  <label for="user"><b>Username:</b></label> 
                  <br /> 
                  <input type="text" id="user" name="user" placeholder="Username" value="${username}"/>
                  <br /> 
                  <label for="version"><b>Version:</b></label> 
                  <br /> 
                  <input type="text" id="version" name="version" placeholder="Version" value="${version}" />
               </div>
            </div>
            <br /> 
            <input type="submit" value="Transfer" title="Initiate a transfer" />
         </form>
         <div id="transferFormResponse" ></div>
      </div>
      <footer>
         <span id="white">&copy;</span> <span id="green">2013 Joshua Wyse</span>
      </footer>
   </div>
</body>
</html>
