<?php
include_once 'config/Database.php';
include_once 'class/User.php';

$database = new Database();
$db = $database->getConnection();

$user = new User($db);

$loginMessage = ''; // Initialize $loginMessage variable

if($user->loggedIn()) {    
    header("Location: category.php");    
}

if(!empty($_POST["login"]) && !empty($_POST["email"]) && !empty($_POST["password"])) {    
    $user->email = $_POST["email"];
    $user->password = $_POST["password"];    
    $user->loginType = $_POST["loginType"];
    if($user->login()) {        
        header("Location: category.php");                
    } else {
        $loginMessage = 'Invalid login! Please try again.';
    }
} else if (empty($_POST["login"]) || empty($_POST["email"]) || empty($_POST["password"])){
    $loginMessage = 'Enter email, password, and select user type to login.';
}

include('inc/header.php');
?>
<!-- Rest of your HTML and PHP code remains unchanged -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WOW FOODS Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/logincss.css">
</head>
<body>

<div class="login-container">
    <div class="login-box">
		<div class="ttx"><h2>WOW FOODS</h2></div>
        
        <?php if ($loginMessage != '') { ?>
            <div class="alert alert-danger" role="alert"><?php echo $loginMessage; ?></div>
        <?php } ?>
        <form method="POST" action="">
            <div class="form-group">
                <input type="text" class="form-control" id="email" name="email" value="<?php if (!empty($_POST["email"])) {
                    echo $_POST["email"];
                } ?>" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" value="<?php if (!empty($_POST["password"])) {
                    echo $_POST["password"];
                } ?>" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input type="submit" name="login" value="Login" class="btn btn-info btn-block">
            </div>
        </form>
    </div>
</div>

</body>
</html>
