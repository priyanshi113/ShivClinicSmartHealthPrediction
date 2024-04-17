// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-brand").validate({
            rules: {
                brand: "required",
                subcategory: "required",
            },
            messages: {
                brand: "Please enter brand name",
				subcategory: "Please select Sub-Category",
            }
        });
    });


}();// JavaScript Document