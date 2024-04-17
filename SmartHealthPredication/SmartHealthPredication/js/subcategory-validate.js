// JavaScript Document
// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-subcat").validate({
            rules: {
				category: "required",
				subcategory: "required",
                
            },
            messages: {
                category: "Please choose category",
				subcategory: "Please enter Subcategory name",
            }
        });
    });


}();