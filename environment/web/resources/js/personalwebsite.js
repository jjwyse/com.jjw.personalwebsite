/*
 *  Function for horizontal scrolling when a user clicks on one of the menu items.
 */
//$(function()
//{
//   $('ul.nav a').bind('click', function(event)
//   {
//      var $anchor = $(this);
//      $('html, body').stop().animate(
//      {
//         scrollLeft : $($anchor.attr('href')).offset().left
//      }, 1500, 'easeInOutExpo');
//      /*
//       * if you don't want to use the easing effect than use this instead of the
//       * block above: $('html, body').stop().animate( { scrollLeft :
//       * $($anchor.attr('href')).offset().left }, 1000);
//       */
//      event.preventDefault();
//   });
//});
/*
 *  Function for vertical scrolling when a user clicks on one of the menu items.
 */
$(function()
{
   $('ul.nav a').bind('click', function(event)
   {
      var $anchor = $(this);

      $('html, body').stop().animate(
      {
         scrollTop : $($anchor.attr('href')).offset().top
      }, 1500, 'easeInOutExpo');
      /*
       * if you don't want to use the easing effects: $('html,
       * body').stop().animate({ scrollTop: $($anchor.attr('href')).offset().top },
       * 1000);
       */
      event.preventDefault();
   });

});

/* Handle img click in header */
$(function()
{
   $('div.header h2 a').bind('click', function(event)
   {
      var $anchor = $(this);

      $('html, body').stop().animate(
      {
         scrollTop : $($anchor.attr('href')).offset().top
      }, 1500, 'easeInOutExpo');

      event.preventDefault();
   });
});

/*
 * Handles displaying different sections of resume by sliding open the
 * information when the header is clicked.
 */
$(document).ready(function()
{
   $(".resumeDropDown#aboutMe h4").click(function()
   {
      $(".resumeDropDown#aboutMe p").slideToggle(600);
   });
   $(".resumeDropDown#skills h4").click(function()
   {
      $(".resumeDropDown#skills p").slideToggle(600);
   });
   $(".resumeDropDown#experience h4").click(function()
   {
      $(".resumeDropDown#experience p,.resumeDropDown#experience h5").slideToggle(600);
   });
   $(".resumeDropDown#education h4").click(function()
   {
      $(".resumeDropDown#education p,.resumeDropDown#education h5").slideToggle(600);
   });
});

$(document).ready(function()
{
   // Easter egg to play a little Office Space video clip
   $('.section .info a').magnificPopup(
   {
      disableOn : 700,
      type : 'iframe',
      mainClass : 'mfp-fade',
      removalDelay : 160,
      preloader : false,

      fixedContentPos : false
   });

   // Opens up the image gallery under the 'Capture' section
   $('.popup-gallery').magnificPopup(
   {
      delegate : 'a',
      type : 'image',
      tLoading : 'Loading image #%curr%...',
      mainClass : 'mfp-img-mobile',
      gallery :
      {
         enabled : true,
         navigateByImgClick : true,
         preload : [ 0, 1 ]
      // Will preload 0 - before current, and 1 after the current image
      },
      image :
      {
         tError : '<a href="%url%">The image #%curr%</a> could not be loaded.',
         titleSrc : function(item)
         {
            return item.el.attr('title');
         }
      }
   });
});
