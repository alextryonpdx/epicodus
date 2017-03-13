function Contact(first,last){
	this.firstName = first;
	this.lastName = last;
	this.addresses = [];
// 	this.city = city;
// 	this.state = state;
}

Contact.prototype.fullName = function(){
	return this.firstName + ' ' + this.lastName;
}


function Address(type,street,city,state){
	this.addressType = type;
	this.street = street;
	this.city = city;
	this.state = state;
}

Address.prototype.fullAddress = function(){
	return '<strong>' + this.addressType + '</strong>' + '<br>' 
		+ this.street + "<br>" 
		+ this.city + ", " + this.state;
}

function resetForm(){
	$("input#new-first-name").val("");
    $("input#new-last-name").val("");
    $("input.address-type").val("");
    $("input.new-street").val("");
    $("input.new-city").val("");
    $("input.new-state").val("");
    $('.new-address').remove();
}

// user interface logic
$(document).ready(function() {
  $("form#new-contact").submit(function(event) {
    event.preventDefault();

    var inputtedFirstName = $("input#new-first-name").val();
    var inputtedLastName = $("input#new-last-name").val();

    var newContact = new Contact(inputtedFirstName, inputtedLastName);

    $("ul#contacts").append("<li><span class='contact'>" + newContact.fullName() + "</span></li>");

    $("input#new-first-name").val("");
    $("input#new-last-name").val("");

    $(".contact").last().click(function() {
	  $("#show-contact").slideDown();
	  $("#show-contact h2").text(newContact.firstName);
	  $(".first-name").text(newContact.firstName);
	  $(".last-name").text(newContact.lastName);

	  $('ul#addresses').text('');
	  newContact.addresses.forEach(function(address){
	  	$('ul#addresses').append('<li>' + address.fullAddress() + "</li>");
	  })
	});



	$(".new-address").each(function() {
	  var addressType = $(this).find("input.address-type").val();
	  var inputtedStreet = $(this).find("input.new-street").val();
	  var inputtedCity = $(this).find("input.new-city").val();
	  var inputtedState = $(this).find("input.new-state").val();
	  if(addressType, inputtedStreet, inputtedState, inputtedCity != ''){
	  	var newAddress = new Address(addressType, inputtedStreet, inputtedCity, inputtedState);
		newContact.addresses.push(newAddress);
	  }
	  
	});

	$('.contact').last().click();
	resetForm();

  });



  $("#add-address").click(function() {
    $("#new-addresses").append('<div class="new-address">' +
						    	'<div class="form-group">' +
                                   '<label for="address-type">Address Type</label>' +
                                   '<input type="text" class="form-control address-type">' +
                                 '</div>' +
                                 '<div class="form-group">' +
                                   '<label for="new-street">Street</label>' +
                                   '<input type="text" class="form-control new-street">' +
                                 '</div>' +
                                 '<div class="form-group">' +
                                   '<label for="new-city">City</label>' +
                                   '<input type="text" class="form-control new-city">' +
                                 '</div>' +
                                 '<div class="form-group">' +
                                   '<label for="new-state">State</label>' +
                                   '<input type="text" class="form-control new-state">' +
                                 '</div>' +
                               '</div>');
  });

});