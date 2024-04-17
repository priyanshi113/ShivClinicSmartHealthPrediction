// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-state").validate({
            rules: {
                state: "required",
				country: "required",
                
            },
            messages: {
                state: "Please enter state name",
				country: "Please select country name",
            }
        });
    });


}();// JavaScript Document