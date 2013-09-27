<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Joshua Wyse | Software Engineer</title>
<link rel="shortcut icon" href="/jjw/resources/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="/jjw/resources/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="/jjw/resources/css/personalwebsite.css">
<link rel="stylesheet" type="text/css" href="/jjw/resources/css/mobile.css">
<link href='http://fonts.googleapis.com/css?family=Didact+Gothic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/jjw/resources/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="/jjw/resources/js/jquery.easing-1.3.js"></script>
<script type="text/javascript" src="/jjw/resources/js/processing-1.4.1.js"></script>
<script type="text/javascript" src="/jjw/resources/js/magnificent.popup-0.8.7.js"></script>
<script type="text/javascript" src="/jjw/resources/js/personalwebsite.js"></script>
</head>
<body>
   <div class="header">
      <h2>
         <a href="#home">
            <img alt="" src="/jjw/resources/images/jjwLogo_noBlur_50x50.png"></img>
            <span id="lightgray">&lt;</span> joshua wyse <span id="lightgray">/&gt;</span>
         </a>
      </h2>
      <ul class="nav">
         <li>
            <a href="#resume">resume</a>
         </li>
         <li>
            <a href="#lab">lab</a>
         </li>
         <li>
            <a href="#photos">photos</a>
         </li>
         <li>
            <a href="#contact">contact</a>
         </li>
      </ul>
   </div>
   <div class="section" id="home">
      <h1>hi, i'm josh...</h1>
   </div>
   <div class="section" id="resume">
      <div class="info">
         <h3>
            <a href="http://www.youtube.com/watch?v=2SoWNMNKNeM">what would you say...you do here...</a>
         </h3>
      </div>
      <div class="resumeDropDown" id="aboutMe">
         <h4>about me</h4>
         <p>I am a software engineer with a passion for developing web applications and learning new technologies. I
            have experience with the design, architecture and implementation of various software solutions for a variety
            of complex problems. I communicate well with others and work equally well either independently or on a team
            of engineers.</p>
      </div>
      <div class="resumeDropDown" id="skills">
         <h4>skills</h4>
         <div id="skillsColumns">
            <div class="skillsColumn">
               <p>
                  <b>Languages</b> <br />CSS <br />Groovy <br />HTML5 <br />Java<br />Javascript <br />Perl <br />Processing
                  <br />Python <br />Shell Scripting <br />SQL <br />
               </p>
            </div>
            <div class="skillsColumn">
               <p>
                  <b>Frameworks</b> <br />Camel<br />Grails <br />Hibernate <br />jQuery <br />Spring Core <br />
                  Spring MVC <br />Spring Security <br />
               </p>
            </div>
            <div class="skillsColumn">
               <p>
                  <b>Software</b><br />Ant <br />ActiveMQ <br />Git <br />Glassfish <br />Jenkins <br />LDAP <br />Linux/Unix
                  <br />Mac OS <br />mySQL <br />Subversion <br />Tomcat <br />
               </p>
            </div>
         </div>
      </div>
      <div class="resumeDropDown" id="experience">
         <h4>experience</h4>
         <h5>
            <b><a href="http://www.cloud-elements.com" target="_blank">Cloud Elements</a> -- Software Engineer --
               2013-Now</b>
         </h5>
         <p>I joined Cloud Elements in October of 2013 and look forward to working with this amazing team!</p>
         <h5>
            <b><a href="http://www.raytheon.com" target="_blank">Raytheon Company</a> -- Software Engineer II --
               2011-2013</b>
         </h5>
         <p>While at Raytheon, I initially worked on front-end UI and UX for a distributed, SOA-based system. I then
            obtained my security clearance, and played a key role in developing a new distributed software component,
            which was built and implemented on multiple programs across campus. I was involved with this new system
            throughout the entire software development cycle, primarily during implementation and integration. During
            this time, I also supported multiple other programs on how to use the new software and got the customer on
            my first team to go-live with this software for the first time, which was a major milestone for the company.
            Because of all of these efforts, I was awarded Employee of the Quarter at our campus for the fourth quarter
            of 2012. I have also spent a large amount of time designing, architecting and implenting a Spring MVC web
            application using a variety of different technologies.</p>
         <h5>
            <b><a href="http://www.cerner.com" target="_blank">Cerner Corporation</a> -- Software Engineer Intern --
               2010</b>
         </h5>
         <p>While at Cerner Corporation, I developed new functionality for their software system in C++ and Java,
            created Python scripts for automated GUI testing, and gave a presentation to an experienced audience of
            engineers on how to use a new technology called Sikuli. The internship reinforced the importance of
            communicating with peers and adapting to evolving technologies in the software development process.</p>
      </div>
      <div class="resumeDropDown" id="education">
         <h4>education</h4>
         <h5>
            <b>Miami University -- BS Computer Science -- 2007-2011</b>
         </h5>
         <p>I graduated Cum Laude in May 2011. During my time at Miami University, I was a Teaching Assistant in the
            Computer Science department, a participant in the Summer Scholar program, a student manager at the Miami
            University Bookstore and a designated leader for an on-campus ministry.</p>
      </div>
   </div>
   <div class="section" id="lab">
      <div class="info">
         <h3>projects I've been working on</h3>
      </div>
      <div class="labSection">
         <div class="labProject">
            <hr>
            <a href="http://joshuawyse-messagingsystem.appspot.com" target="_blank">
               <h5>Messaging System Web App</h5>
            </a>
            <p>A web app that I'm developing as in internal messaging system to use for businesses. Allows users to
               send user to user, user to group or broadcast messages to otheres in the system. Runs on the Google App
               Engine.</p>
            <hr>
         </div>

         <div class="labProject">
            <hr>
            <a href="http://joshuawyse.com/fellowshipgroups" target="_blank">
               <h5>Fellowship Denver Church Web App</h5>
            </a>
            <p>A web app that I'm developing for my church to show when and where Fellowship Groups meet throughout
               the week. Using Spring MVC, Apache Tiles, Google Maps API and mySQL.</p>
            <hr>
         </div>
         <div class="labProject">
            <hr>
            <a href="http://joshuawyse.com/addressbook" target="_blank">
               <h5>Address Book Web Service</h5>
            </a>
            <p>A RESTful web service that is able to return people by their ID and add a new person to the data
               store. Uses Spring MVC, jQuery and AJAX. Good app for myself to become more familiar with RESTful
               services and AJAX.</p>
            <hr>
         </div>
         <div class="labProject">
            <hr>
            <a href="http://joshuawyse-blog.appspot.com" target="_blank">
               <h5>Blog Web App</h5>
            </a>
            <p>A Python web application using the webapp2 framework running on the Google App Engine. Planning on
               turning this into a trip report for all the great hikes the mrs. and I go on and a place to jot down all
               the software things I have to be reminded of from stackoverflow daily.</p>
            <hr>
         </div>
         <div class="labProject">
            <hr>
            <a href="http://joshuawyse.com/jjw/resources/sketches/sketches.html" target="_blank">
               <h5>Processing Sketches</h5>
            </a>
            <p>
               Some
               <a href="http://processing.org/" target="_blank">Processing</a>
               sketches I've made over the years.
            </p>
            <hr>
         </div>
         <p>
            <i>All code can be found on <a href="http://github.com/jjwyse" target="_blank">Github</a>.
            </i>
         </p>
      </div>
   </div>
   <div class="section" id="photos">
      <div class="info">
         <h3>favorite photos and memories</h3>
      </div>
      <div class="gallery">
         <div class="popup-gallery">
            <h5>2013</h5>
            <a href="/jjw/resources/images/2013/2013_1.jpg" title="Dead Horse Point">
               <img src="/jjw/resources/images/2013/2013_1.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2013/2013_2.jpg" title="Partition Arch">
               <img src="/jjw/resources/images/2013/2013_2.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2013/2013_3.jpg" title="Laura in Arches">
               <img src="/jjw/resources/images/2013/2013_3.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2013/2013_4.jpg" title="Wetterhorn Peak">
               <img src="/jjw/resources/images/2013/2013_4.jpg" width="75" height="75" />
            </a>
         </div>
         <div class="popup-gallery">
            <h5>2012</h5>
            <a href="/jjw/resources/images/2012/2012_1.jpg" title="Kayaking in Piney Lake">
               <img src="/jjw/resources/images/2012/2012_1.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_2.jpg" title="Classic Brink">
               <img src="/jjw/resources/images/2012/2012_2.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_3.jpg" title="Sunset in Cancun">
               <img src="/jjw/resources/images/2012/2012_3.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_4.jpg" title="Family in Vail">
               <img src="/jjw/resources/images/2012/2012_4.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_5.jpg" title="Mr. Chipmunk">
               <img src="/jjw/resources/images/2012/2012_5.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_6.jpg" title="Brian and Tim - Mt. Ida">
               <img src="/jjw/resources/images/2012/2012_6.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_7.jpg" title="Matt Hagge in Vail">
               <img src="/jjw/resources/images/2012/2012_7.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_8.jpg" title="Aspens in Vail">
               <img src="/jjw/resources/images/2012/2012_8.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_9.jpg" title="Hogwarts Hipsters - Champs">
               <img src="/jjw/resources/images/2012/2012_9.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_10.jpg" title="Stuart Contemplating His Thoughts">
               <img src="/jjw/resources/images/2012/2012_10.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_11.jpg" title="Hanging Lake">
               <img src="/jjw/resources/images/2012/2012_11.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2012/2012_12.jpg" title="For Dirk">
               <img src="/jjw/resources/images/2012/2012_12.jpg" width="75" height="75" />
            </a>
         </div>
         <div class="popup-gallery">
            <h5>2011</h5>
            <a href="/jjw/resources/images/2011/2011_1.jpg" title="Slow-Shutter-Speed-Stuart">
               <img src="/jjw/resources/images/2011/2011_1.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_2.jpg" title="Blake, Kevin and I - Fiji">
               <img src="/jjw/resources/images/2011/2011_2.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_3.jpg" title="Miami Graduation">
               <img src="/jjw/resources/images/2011/2011_3.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_4.jpg" title="Pop Art - Laura">
               <img src="/jjw/resources/images/2011/2011_4.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_5.jpg" title="Harbor - Suva, Fiji">
               <img src="/jjw/resources/images/2011/2011_5.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_6.jpg" title="Good Bye to the Fijians">
               <img src="/jjw/resources/images/2011/2011_6.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_7.jpg" title="Decalibron Trailhead">
               <img src="/jjw/resources/images/2011/2011_7.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_8.jpg" title="Engagement Photo">
               <img src="/jjw/resources/images/2011/2011_8.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_9.jpg" title="Clouds Over Chicago">
               <img src="/jjw/resources/images/2011/2011_9.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_10.jpg" title="Aaron, Brink, John and I - Estes Park">
               <img src="/jjw/resources/images/2011/2011_10.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_11.jpg" title="Bros - Mana Island">
               <img src="/jjw/resources/images/2011/2011_11.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_12.jpg" title="Laura and I - Wilmington, NC">
               <img src="/jjw/resources/images/2011/2011_12.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_13.jpg" title="Fiji Summer Project Team">
               <img src="/jjw/resources/images/2011/2011_13.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_14.jpg" title="Denver Skyline">
               <img src="/jjw/resources/images/2011/2011_14.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_15.jpg" title="Core Four - Park Ave West">
               <img src="/jjw/resources/images/2011/2011_15.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_16.jpg" title="Gray's Peak">
               <img src="/jjw/resources/images/2011/2011_16.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2011/2011_17.jpg" title="Mt Korobaba">
               <img src="/jjw/resources/images/2011/2011_17.jpg" width="75" height="75" />
            </a>
         </div>
         <div class="popup-gallery">
            <h5>2006</h5>
            <a href="/jjw/resources/images/2006/2006_1.jpg" title="AHS Basketball - State-Bound">
               <img src="/jjw/resources/images/2006/2006_1.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2006/2006_2.jpg" title="Playing in Columbus Against OJ Mayo and Bill Walker">
               <img src="/jjw/resources/images/2006/2006_2.jpg" width="75" height="75" />
            </a>
            <a href="/jjw/resources/images/2006/2006_3.jpg" title="Brink, Tyson and I - Junior Year">
               <img src="/jjw/resources/images/2006/2006_3.jpg" width="75" height="75" />
            </a>
         </div>
      </div>
   </div>
   <div class="section" id="contact">
      <div class="info">
         <h3>please contact me about anything:</h3>
      </div>
      <div class="contactIcons">
         <a href="mailto:joshua.wyse@gmail.com" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/email.png"></img>
         </a>
         <a href="https://twitter.com/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/twitter.png"></img>
         </a>
         <a href="http://www.linkedin.com/in/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/linkedin.png"></img>
         </a>
         <a href="https://www.facebook.com/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/facebook.png"></img>
         </a>
         <a href="https://www.github.com/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/github.png"></img>
         </a>
         <a href="http://instagram.com/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/instagram.png"></img>
         </a>
         <a href="skype:redhawks5?call">
            <img alt="" src="/jjw/resources/images/Icons/64/skype.png"></img>
         </a>
         <a href="http://about.me/jjwyse" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/aboutme.png"></img>
         </a>
         <a href="http://open.spotify.com/user/1231892306" target="_blank">
            <img alt="" src="/jjw/resources/images/Icons/64/spotify.png"></img>
         </a>
      </div>
      <div class="location">
         <h5>Denver, CO</h5>
      </div>
   </div>
   <div class="footer" id="footer">&copy; 2013 Joshua Wyse --- All rights reserved.</div>
</body>
</html>

