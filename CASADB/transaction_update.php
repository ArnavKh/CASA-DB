<?php 
    require_once "pdo.php";
    session_start();
?>

<?php
    if( isset($_POST['T_ID']) && $_POST['update']){
        $sql2 = "UPDATE transfusion
                    SET Bag_ID = :b_id,Rec_ID = :R_id, T_Date = :date, Quantity = :quantity, T_time = :time WHERE T_ID = :id";
        $stmt3 = $pdo->prepare($sql2);
        $stmt3->execute(array(
            ':b_id'=>$_POST['Bag_ID'],
            ':R_id'=> $_POST['Rec_id'],
            ':date'=>$_POST['T_date'],
            ':quantity'=>$_POST['quantity'],
            ':time'=> $_POST['T_time'],
           
            ':id'=>$_POST['T_ID']
        ));
        $_SESSION['success'] = 'Record updated';
        header("Location: transaction_admin.php");
        return;
    }

    $stmt = $pdo->prepare("SELECT * FROM transfusion where T_ID = :id");
    $stmt->execute(array(
        ':id'=>$_GET['T_ID']
    ));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    if($row === false){
        $_SESSION['error'] = 'Bad value for Rec_ID';
        header('Location:Recipient_admin.php');
        return;
    }
    $b = htmlentities($row['Bag_ID']);
    $r = htmlentities($row['Rec_ID']);
    $t = htmlentities($row['T_Date']);
    $q = htmlentities($row['Quantity']);
    $tt = htmlentities($row['T_time']);
    
    $id = htmlentities($row['Rec_ID']);
?>

<html>
    <head>

    </head>
    <body>
    <div class='update'>
        <h3>Update a particular recipient</h3>
        
        <form method="POST">
            
            <p>
                <label for="bag_ID">Bag ID:</label>
                <input type="text" name = "Bag_ID" value="<?= $b?>"><br>
            </p>

            <p>
                <label for="rec_ID">Recipient ID: </label>
                <input type="text" name="Rec_id" value="<?= $r?>">
            </p>

            <p>
                <label for="date">Transaction Date:</label>
                <input type="date" name="T_date" value="<?= $t?>">
            </p>

            <p>
                <label for="quan">Quantity: </label>
                <input type="text" name='quantity' id="quant" value="<?= $q?>"><br>
            </p>

            <p>
                <label for="T_time">Transaction Time:</label>
                <input type="time" name="T_time" value="<?= $tt?>"><br>
            </p>

            <p>
                <input type="hidden" name="T_ID" value="<?= $id?>">
            </p>
            <input type="Submit" name = "update" value="Update Transaction">
        </form>

        
        </div>

    </body>
</html>