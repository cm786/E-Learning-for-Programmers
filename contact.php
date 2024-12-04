<?php
include('./dbConnection.php');
if(isset($_REQUEST['submit'])){
  
// Get POST data
$name= $_POST['name'];
$subject = $_POST['subject'];
$email = $_POST['email'];
$msg = $_POST['message'];

// Insert data into the database
$sql = "INSERT INTO contact (cnt_name, cnt_subject, cnt_email,cnt_msg ) VALUES ('$name', '$subject', '$email', '$msg')";
if($conn->query($sql) == TRUE){
  // below msg display on form submit success
  // $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Contact Form Submitted Successfully </div>';
  echo "<script>alert('Contact Form Submitted Successfully');</script>";
  } else {
  // below msg display on form submit failed
  // $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2" role="alert"> Unable to submit contact form </div>';
  echo "<script>alert('Unable to Submit contact form');</script>";

  }
$conn->close();
}
?>

<!-- Start Contact Us -->
<div class="container mt-4" id="Contact">
    <!-- Start Contact Us Container -->
    <h2 class="text-center mb-4">Contact Us</h2>
    <!-- Contact Us Heading -->
    <div class="row" style="margin-left:20%;">
        <!-- Start Contact Us Row -->
        <div class="col-md-8">
            <!-- Display Success/Error Message -->
            <?php //if (isset($msg)) { echo $msg; } ?>
            
            <!-- Start Contact Us 1st Column -->
            <form action="" method="post" onsubmit="return validateForm()">
                <input type="text" class="form-control" id="name" name="name" placeholder="Name"><br>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject"><br>
                <input type="email" class="form-control" id="email" name="email" placeholder="E-mail"><br>
                <textarea class="form-control" id="message" name="message" placeholder="How can we help you?" style="height:150px;"></textarea><br>
                <input class="btn btn-primary" type="submit" value="Send" name="submit"><br><br>
            </form>
        </div>
        <!-- End Contact Us 1st Column -->
    </div>
    <!-- End Contact Us Row -->
</div>
<!-- End Contact Us Container -->




<script>
function validateForm() {
    // Get form field values
    let name = document.getElementById("name").value.trim();
    let subject = document.getElementById("subject").value.trim();
    let email = document.getElementById("email").value.trim();
    let mesg= document.getElementById("message").value.trim();

    // Name validation
    if (name === "") {
        alert("Name is required.");
        return false;
    }
    if (!/^[a-zA-Z\s]+$/.test(name)) {
        alert("Name should contain only letters and spaces.");
        return false;
    }

    // Subject validation
    if (subject === "") {
        alert("Subject is required.");
        return false;
    }
    if (subject.length < 5) {
        alert("Subject must be at least 5 characters long.");
        return false;
    }

    // Email validation
    if (email === "") {
        alert("Email is required.");
        return false;
    }
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Message validation
    if (message === "") {
        alert("Message is required.");
        return false;
    }
    if (message.length < 10) {
        alert("Message must be at least 10 characters long.");
        return false;
    }

    // If all validations pass
    return true;
}

</script>
