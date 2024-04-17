// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-cat").validate({
            rules: {
                category: "required",
                
            },
            messages: {
                category: "Please enter category name",
            }
        });
    });


}();