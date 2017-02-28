$('.filter-trigger').click(function() {
    $( ".filter-container" ).toggle("slide", { direction: "left" }, 400);
    $( ".filter-overlay" ).toggle("slide", { direction: "right" }, 400);
    $( ".filter-trigger" ).toggleClass("activemenu");
});
