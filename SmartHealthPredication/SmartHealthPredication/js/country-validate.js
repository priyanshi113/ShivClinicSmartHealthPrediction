// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-country").validate({
            rules: {
                country: "required",
                
            },
            messages: {
                country: "Please enter country name",
            }
        });
    });


}();