<?php 

$pageTitle = 'Get in Touch';
$section = 'Get in Touch';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim(filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING));
    $email = trim(filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL));
    $feedback = trim(filter_input(INPUT_POST, "feedback", FILTER_SANITIZE_SPECIAL_CHARS));
    
    
    
    if ($name == "" || $email == "" || $feedback == ""){
        $error_message = "Please fill in the required fields: Name, Email, Category and Title";
    }
    
    if (!isset($error_message) && $_POST["address"] != ""){
        $error_message = "Bad form input";
    }
    
    require "Feedback/class.phpmailer.phpmailer";

    $mail = new PHPMailer;
    
    if (!isset($error_message) && !$mail -> ValidateAddress($email)) {
        $error_message = "Invalid Email Address";
    }
    
    if (!isset($error_message)) {

        $email_body = "";
        $email_body .= "Name " . $name . "\n";
        $email_body .= "Email " . $email . "\n";
        $email_body .= "Feedback " . $feedback . "\n";

        $mail->setFrom($email, $name);
        $mail->addAddress('stefania-andreeapopescu@localhost', 'Stefi Popescu');

        $mail->isHTML(false);                                  // Set email format to HTML

        $mail->Subject = 'Feedback from' . $name;
        $mail->Body = $email_body;

        if ($mail->send()) {
            header("location:feedback.php?status=thanks");
            exit;
        } 
        $error_message = 'Message could not be sent.';
        $error_message .= 'Mailer Error: ' . $mail->ErrorInfo;      
    }
}


include "Templates/EditorPageHeaderMain.php";


$pageTitle = "Feedback";
$section = null;


//include "Templates/header.php"; 
?>

<html>
  <head>
      <meta charset="UTF-8">
      <title>Your Feedback</title>
  </head>
  <body>

  

            <?php
    if (isset($_GET["status"]) && $_GET["status"] == "thanks") {
        echo "<p>Thank you for the email! Your feedback is valuable to us!</p>";
    } else {

    if (isset($error_message)) {
            echo "<p class='message'>" . $error_message . "</p>";
        } else {
            //echo "<p>Get in touch!</p>";
        }
        ?>
    
    <div>
        <h3>Contact Us</h3>
    <form method="post" action="feedback.php">
        
        <center>
        <table>
            <tr>
                <th><label for="name">Name (required)</label></th>
                <td><input type="text" id="name" name="name" value="<?php if (isset($name)) { echo $name; } ?>" /></td>
            </tr>
            <tr>
                <th><label for="email">Email (required)</label></th>
                <td><input type="text" id="email" name="email" value="<?php if (isset($email)) { echo $email; } ?>" /></td>
            </tr>
            <tr>
                <th><label for="name">Leave your feedback here</label></th>
                <td><textarea name="feedback" id="feedback"><?php if (isset($feedback)) { echo htmlspecialchars($_POST["feedback"]); } ?></textarea></td>
            </tr>
            <tr style="display:none">
                <th><label for="address">Address</label></th>
                <td><input type="text" id="address" name="address" /></td>
                <p></p>
            </tr>
        
            <tr>
              <th><label for="rating">On a scale from 1 to 5, with 5 being the best, how do you think we are doing?</label></th>
            </tr>
        </table>
        </center>
    <center>
        <table>
            <tr>             
                <input type="radio" id="rating-1" name="rating" value="1" /><label for="rating-1">1</label>
                <input type="radio" id="rating-2" name="rating" value="2" /><label for="rating-2">2</label>
                <input type="radio" id="rating-3" name="rating" value="3" /><label for="rating-3">3</label>
                <input type="radio" id="rating-4" name="rating" value="4" /><label for="rating-4">4</label>
                <input type="radio" id="rating-5" name="rating" value="5" /><label for="rating-5">5</label>            
            </tr>
          </table>
        </center>
        <center>
            <div style="margin-bottom:20px; margin-top:40px;">
          <input type="submit" value="Send" />
            </div>
        </center>
      </form>
        
            <h1 style="text-align:center; font-size:30px; margin-bottom:40px; margin-top:30px;">
        Get in Touch
    </h1>
      
      <div class="agile-map">
          <h3>Find Us</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9937.636130696019!2d-0.3293134!3d51.487361!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7cc3b89c3e0e13f2!2sSky!5e0!3m2!1sen!2suk!4v1492241657803" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>"
			</div>
        

      </div>
  
      <?php } ?> 
      
<?php include "Templates/footer.php"; 