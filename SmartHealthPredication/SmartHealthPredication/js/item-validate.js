// JavaScript Document
// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-item").validate({
            rules: {
                item: "required",
				subcategory: "required",
                
            },
            messages: {
                item: "Please enter item name",
				subcategory: "Please Select Sub-Category",
            }
        });
    });


}();