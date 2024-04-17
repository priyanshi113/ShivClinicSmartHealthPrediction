// JavaScript Document
var Script = function () {

   $().ready(function() {
		// validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $("#add-faq").validate({
            rules: {
                faq: "required",
				answer: "required",
                
            },
            messages: {
                faq: "Please enter faq ",
				answer: "Please give an answer",
            }
        });
    });


}();