<?php
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Contact');
define('PAGE', 'contact');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

if(isset($_SESSION['is_admin_login'])){
    $adminEmail = $_SESSION['adminLogEmail'];
   } else {
    echo "<script> location.href='../index.php'; </script>";
   }
?>
  
    <div class="col-sm-9 mt-5">
        <!--Table-->
        <p class=" bg-dark text-white p-2">List of Contact</p>
        <?php
            $sql = "SELECT * FROM contact";
            $result = $conn->query($sql);
            if($result->num_rows > 0){
                echo '<table class="table">
                <thead>
                <tr>
                <th scope="col">Contact ID</th>
                <th scope="col">Contact Name</th>
                <th scope="col">Subject</th>
                <th scope="col">Email</th>
                <th scope="col">Message</th>
                <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody>';
                while($row = $result->fetch_assoc()){
                    echo '<tr>';
                    echo '<th scope="row">'.$row["cnt_id"].'</th>';
                    echo '<td>'. $row["cnt_name"].'</td>';
                    echo '<td>'.$row["cnt_subject"].'</td>';
                    echo '<td>'.$row["cnt_email"].'</td>';
                    echo '<td>'.$row["cnt_msg"].'</td>';
                    echo '<td>'.$row["cnt_date"].'</td>';
                }  
                echo '</tbody>
                </table>';
                } else {
                echo "0 Result";
            }
        ?>
    </div>
  </div> <!-- div Row close from header --> 
</div>   <!-- div Conatiner-fluid close from header -->
  <?php
  include('./adminInclude/footer.php'); 
  ?>
