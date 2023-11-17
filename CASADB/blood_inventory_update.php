<?php 
    require_once "pdo.php";
    session_start();
?>

<?php
    if( isset($_POST['Bld_Bag_ID']) && $_POST['update']){
        $sql2 = "UPDATE blood_inventory
                    SET D_ID = :d_id,Bank_ID = :b_id, Date_of_Donatn = :dod, Quantity = :quantity, Price = :price,Don_Status = :ds WHERE Bld_Bag_ID = :id";
        $stmt3 = $pdo->prepare($sql2);
        $stmt3->execute(array(
            ':d_id'=>$_POST['D_ID'],
            ':b_id'=> $_POST['bank_id'],
            ':dod'=>$_POST['dod'],
            ':quantity'=>$_POST['quantity'],
            ':price'=> $_POST['price'],
            ':ds'=> $_POST['don'],
           
            ':id'=>$_POST['Bld_Bag_ID']
        ));
        $_SESSION['success'] = 'Record updated';
        header("Location: blood_inventory_admin.php");
        return;
    }

    $stmt = $pdo->prepare("SELECT * FROM blood_inventory where Bld_Bag_ID = :id");
    $stmt->execute(array(
        ':id'=>$_GET['Bld_Bag_ID']
    ));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    if($row === false){
        $_SESSION['error'] = 'Bad value for Bld_Bag_ID';
        header('Location:blood_inventory_admin.php');
        return;
    }
    $d = htmlentities($row['D_ID']);
    $b = htmlentities($row['Bank_ID']);
    $dodn = htmlentities($row['Date_of_Donatn']);
    $q = htmlentities($row['Quantity']);
    $p = htmlentities($row['Price']);
    
    $dst = htmlentities($row['Don_Status']);
    $id = htmlentities($row['Bld_Bag_ID']);
?>

<html>
    <head>

    </head>
    <body>
    <div class='update'>
        <h3>Update Blood Inventory</h3>
        
        <form method="POST">
            
        <p>
                <label for="D_ID">Donor ID:</label>
                <input type="text" name = "D_ID" value="<?= $d?>"><br>
            </p>

            <p>
                <label for="Bank_ID">Bank ID: </label>
                <input type="text" name="bank_id" value="<?= $b?>">
            </p>

            <p>
                <label for="date">Date Of Donation:</label>
                <input type="date" name="dod" id="dod" value="<?= $dodn?>">
            </p>

            <p>
                <label for="quan">Quantity: </label>
                <input type="text" name='quantity' id="quant" value="<?= $q?>"><br>
            </p>

            <p>
                <label for="price">Price:</label>
                <input type="text" name="price" value="<?= $p?>"><br>
            </p>

            <p>
                <label for="inp">Status:</label>
                <input type="text" name = 'don' value='<?= $dst?>'>
            </p>

            <p>
                
                <input type="hidden" name="Bld_Bag_ID" value="<?= $id?>">
            </p>
            <input type="submit" name="update" value="Update Blood Inventory">
        </form>

        
        </div>

    </body>
</html>