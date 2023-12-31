<?php 
    require_once "pdo.php";
?>
<?php 
        if(isset($_POST['dob']) && isset($_POST['name'])){
            $sql = "INSERT INTO recipient(Rec_Name,Rec_DoB,Rec_Gender,Rec_Blood_Type,Rec_Email,Rec_Phone_No) VALUES(:Rec_Name,:Rec_DoB,:Rec_Gender,:Rec_Blood_Type,:Rec_Email,:Rec_Phone_No)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute(array(
                
                ':Rec_Name' => $_POST['name'],
                ':Rec_DoB' => $_POST['dob'],
                ':Rec_Gender' => $_POST['gender'],
                ':Rec_Blood_Type' => $_POST['bloodtype'],
                ':Rec_Email' => $_POST['email'],
                ':Rec_Phone_No' => $_POST['phone']
            ));
            
        }
    ?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CASA Database</title>
        
        <link rel="stylesheet" href="styles.css">

        <script src="https://kit.fontawesome.com/f890b33209.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="home-nav.css">
    </head>
    <body>
    
    <div class="main-container">
          <div class="left-menu">
               <div>
                    <a href = "home.php"><h1 id = "navName"><b>CASA</b></h1></a>
               </div>

               <ul>
                    <li class="sidebar-item"><a class="sidebar-link" href="home.php"><i class="fa-solid fa-house"></i> Home </a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="Donor.php"><i class="fas fa-hand-holding-heart"></i> Donor </a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="Recipient_user.php"><i class="fas fa-procedures"></i> Recipients </a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="transaction.php"><i class="fas fa-ambulance"></i> Transfusions</a>
                    </li>
                    <li class="sidebar-item"><a class="sidebar-link" href="blood_inventory_user.php"><i class="fas fa-vials"></i>
                         Inventory</a></li>
                    <!-- <li class="sidebar-item"><a class="sidebar-link" href="staff.php"><i class="fas fa-user-md"></i> Staff
                         </a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="BloodBank_admin.php"><i class="fas fa-clinic-medical"></i> Blood Bank
                    </a></li> -->
               </ul>
          </div>
     </div>
    

        <div class = "leftContainer">
            <div class="add">
                <h1> Add a recipient </h1>
                <form method="POST">
                    <div class = "form">
                        <!-- <label for="name">Name:</label> -->
                        <input type="text" placeholder = "*Name" name="name" id="input" required><br>

                        <!-- <label for="dob">Date Of Birth: </label> -->
                        <input type="date" name='dob' id="dDOB" required /><br>

                        <select id="dropdown" name="gender" required>
                            <option value="" disabled selected>*Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>                   
                        </select><br>

                        <select id="dropdown" name="bloodtype" required>
                        <option value="" disabled selected>*Blood Group</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="AB-">AB-</option>
                            <option value="AB+">AB+</option>
                        </select><br>

                        <!-- <label for="email">Email: </label> -->
                        <input type="email" placeholder="*Email" name='email' id="email" required /><br>

                        <!-- <label for="phoneno">Phone No:</label> -->
                        <input type="tel" placeholder="*Phone Number" name='phone' id="phone" required /><br>

                        <input type="Submit" name = "Add Recipient" value="Add Recipient" class="submitBtn">
                    </div>
                </form>
            </div>
        </div>

        <div class = "rightContainer">
            <div class = "search">
                    <h1>Search Recipient</h1>
                    <form method="GET">
                        <div class = "form" id = "searchInput">
                                <!-- <label for="id">Recipient_ID:</label> -->
                                <input type="text" placeholder = "Recipient ID" name = "r_id" id="r_id" />
                                
                                <!-- <label for="name">Name:</label> -->
                                <input type="text" placeholder = "Recipient Name" name="name" id="name" />
                            <input type="Submit" name="search" value="Search Recipient" class = "submitBtn" />
                        </div>
                    </form>

                    <div class = "searchRes">
                        <?php 
                            if( isset($_GET['r_id']) && isset($_GET['name'])){
                                $sql1 = "SELECT * FROM Recipient
                                            WHERE Rec_ID=:id OR Rec_name like :name";
                                $stmt1 = $pdo->prepare($sql1);
                                $stmt1->execute(array(
                                    ':id' => $_GET['r_id'],
                                    ':name' => $_GET['name']
                                ));
                                $row = $stmt1->fetch(PDO::FETCH_ASSOC);
                                echo '<br><br>';
                                echo '<table border="1">'."\n";
                                echo '<tr><td>';
                                echo 'Name';
                                echo '</td><td>';
                                echo 'DOB';
                                echo '</td><td>';
                                echo 'Gender';
                                echo '</td><td>';
                                echo 'Blood Type';
                                echo '</td><td>';
                                echo 'Email';
                                echo '</td><td>';
                                echo 'Phone No';
                                echo '</td></tr>';
                                echo "<tr><td>";

                                echo $row['Rec_Name'];
                                echo "</td><td>";
                                echo $row['Rec_DoB'];
                                echo "</td><td>";
                                echo $row['Rec_Gender'];
                                echo "</td><td>";
                                echo $row['Rec_Blood_Type'];
                                echo "</td><td>";
                                echo $row['Rec_Email'];
                                echo "</td><td>";
                                echo $row['Rec_Phone_No'];
                                echo "</td></tr>";
                                echo "</table>\n";

                            }
                        ?>
                    </div>
            </div>

            <div class ="view">
                <h1>All Recipients</h1>
                <?php 
                    $stmt2 = $pdo->query("SELECT * FROM Recipient");

                    echo '<br><br>';
                    echo '<table border = "1">'."\n";
                    echo '<tr><td>';
                    echo 'Recipient ID';
                    echo '</td><td>';
                    echo 'Name';
                    echo '</td><td>';
                    echo 'DOB';
                    echo '</td><td>';
                    echo 'Gender';
                    echo '</td><td>';
                    echo 'Blood Type';
                    echo '</td><td>';
                    echo 'Email';
                    echo '</td><td>';
                    echo 'Phone No';
                    echo '</td></tr>';
                    while($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
                        echo "<tr><td>";
                        echo $row2['Rec_ID'];
                        echo "</td><td>";
                        echo $row2['Rec_Name'];
                        echo "</td><td>";
                        echo $row2['Rec_DoB'];
                        echo "</td><td>";
                        echo $row2['Rec_Gender'];
                        echo "</td><td>";
                        echo $row2['Rec_Blood_Type'];
                        echo "</td><td>";
                        echo $row2['Rec_Email'];
                        echo "</td><td>";
                        echo $row2['Rec_Phone_No'];
                        echo "</td></tr>";
                    }

                    echo "</table>\n";
                ?>
            </div>
        </div>
    </body>
</html>

