$(document).ready(function(){

$("#slideshow > div:gt(0)").hide();

setInterval(function() {
  $('#slideshow > div:first')
    .hide()
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
},  3000);

<<<<<<< HEAD
});


// $("#slideshow > div:gt(0)").hide();
//
// setInterval(function() {
//   $('#slideshow > div:first')
//     .fadeOut(1000)
//     .next()
//     .fadeIn(1000)
//     .end()
//     .appendTo('#slideshow');
// },  3000);
=======
});
>>>>>>> 6cff08e5a92c26bc54b489ac473971c3cd9d4286
