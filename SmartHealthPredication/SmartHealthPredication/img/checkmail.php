<?php
include('script/db.php');
if(isset($_POST['email'])){ //if we get the EMAIL succesfully
    $email = mysql_real_escape_string($_POST['email']);
        if ($email != '') {
            $email_query = mysql_query("SELECT * FROM `admin_master` WHERE `EMAIL` LIKE '$email%'");    

        	$email_result = mysql_fetch_array($email_query);

            if ($email_result['EMAIL'] == $_POST['email']) {
                echo 'exist';
            } else {
                echo 'not exist';
            }
        }
    }
?>