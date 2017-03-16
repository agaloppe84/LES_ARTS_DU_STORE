$('.reset-active-on-tab').click(function() {
    $('.tab-to-reset').removeClass('active');
});

$('.reset-active-on-tab').click(function() {
    $('.other-active-to-remove').removeClass('active');
});


$('.add-active-to-tab').click(function() {
    $('.tab-to-active').addClass('active');
});


$( "#quotation_email" ).focus(function() {
  $( "div" ).not( "#quotation_email" ).removeClass('orange-border-form');
  $('.quota-email').addClass('orange-border-form');
});

$( "#quotation_phone" ).focus(function() {
  $( "div" ).not( "#quotation_phone" ).removeClass('orange-border-form');
  $('.quota-phone').addClass('orange-border-form');
});

$( "#quotation_name" ).focus(function() {
  $( "div" ).not( "#quotation_name" ).removeClass('orange-border-form');
  $('.quota-name').addClass('orange-border-form');
});

$( "#quotation_firstname" ).focus(function() {
  $( "div" ).not( "#quotation_firstname" ).removeClass('orange-border-form');
  $('.quota-firstname').addClass('orange-border-form');
});

$( "#quotation_city" ).focus(function() {
  $( "div" ).not( "#quotation_city" ).removeClass('orange-border-form');
  $('.quota-city').addClass('orange-border-form');
});

$( "#quotation_zipcode" ).focus(function() {
  $( "div" ).not( "#quotation_zipcode" ).removeClass('orange-border-form');
  $('.quota-zipcode').addClass('orange-border-form');
});

$( "#quotation_address" ).focus(function() {
  $( "div" ).not( "#quotation_address" ).removeClass('orange-border-form');
  $('.quota-address').addClass('orange-border-form');
});

$( "#quotation_blindttype" ).focus(function() {
  $( "div" ).not( "#quotation_blindttype" ).removeClass('orange-border-form');
  $('.quota-blindttype').addClass('orange-border-form');
});

$( "#quotation_message" ).focus(function() {
  $( "div" ).not( "#quotation_message" ).removeClass('orange-border-form');
  $('.quota-message').addClass('orange-border-form');
});


$('.font-cont-tastic').children().click(function() {
  var iconName = $(this).attr('class');
  var unchecked = $(".fontastic-container .font-cont-tastic div").not(iconName);
  $(unchecked).parent().css( "background-color", "white" );
  $(unchecked).css( "color", "grey" );
  console.log(iconName);
  $(".info_icon input").val(iconName);
  $(this).parent().css( "background-color", "#2AC88E" );
  $(this).css( "color", "white" );
});


