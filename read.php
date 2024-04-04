<?php
require_once "config.php";

$id = $_GET["id"] ?? null;

if (!isset($id) || empty($id)) {
    header("location: error.php");
    exit();
}

$sql = "SELECT * FROM coffees WHERE id = ?";
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $param_id);
    $param_id = $id;
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $name = $row["name"];
            $description = $row["description"];
            $price = $row["price"];
        } else {
            header("location: error.php");
            exit();
        }
    } else {
        echo " Please try again later.";
    }
}
mysqli_stmt_close($stmt);
mysqli_close($link);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Coffee Data</title>
    <link rel="stylesheet" href="../styles/main.css">
        <link rel="stylesheet" href="../styles/Sign In.css">
        <link rel="stylesheet" href="../styles/menu.css">
        <link rel="stylesheet" href="../styles/contact.css">
        <link rel="stylesheet" href="../styles/about.css"></head>
<body>
    <section id="main">
        <div class="container">
           <header>
           <h2>View Coffee Data</h2>
           </header>
            <div class="form-group">
                <label>Name:</label>
                <p><?php echo $name; ?></p>
            </div>
            <div class="form-group">
                <label>Description:</label>
                <p><?php echo $description; ?></p>
            </div>
            <div class="form-group">
                <label>Price:</label>
                <p><?php echo $price; ?></p>
            </div>
            <a href="../index.php" class="btn btn-secondary">Back</a>
        </div>
    </section>
</body>
</html>
