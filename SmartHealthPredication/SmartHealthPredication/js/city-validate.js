// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-city").validate({
            rules: {
                city: "required",
				state: "required",
                
            },
            messages: {
                city: "Please enter city name",
				state: "Please Select State",
            }
        });
    });


}();