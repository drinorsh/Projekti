<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="CSS/cart.css">
    <link href="CSS/style1.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
        integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
 
</head>
<body>
    <?php
    $cart = '';
    if (isset($_SESSION['user_id'])) {
       $cart = 'cart.php';
     } else {
       $cart = '#';
    }
    ?>
     <div class="header-parent">
    <div class="header">
        <h1>E-SHOP</h1>
        <div class="nav">
            <ul>
                <li><a href="home.php">Home</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="aboutus.php">About Us</a></li>
                <li><a href='<?php echo $cart?>'><i class="fas fa-shopping-cart"></i></a></li>
                <?php if(isset($_SESSION['name'])) : ?>
                <li style="width:200px">Welcome, <?php echo $_SESSION['name']?><a href="logout.php">Logout</a></li>
                <?php else : ?>
                <li><a href="login-register.php">Login</a></li>
                <?php endif ?>

            </ul>
        </div>
    </div>
    <div class="wraper-ch">
        
        <div class="billing-details">
            <h2>Billing Address</h2>
            <form action="post">
                <div>
                   
                <label for="">Full Name</label>
                <input type="text" name="name" id="name-ch" placeholder="John Gashi">
                 <span id="name-error"></span>
                </div>
                <div>
                   
                <label for="">Email</label>
                <input type="email" name="email" id="email-ch" placeholder="john@gashi.com">
                 <span id="email-error"></span>
                </div>
                <div>
                   
                <label for="">Address</label>
                <input type="text" name="address" id="address-ch" placeholder="5422 W. Street">
                 <span id="address-error"></span>
                </div>
                <div>
                  
                <label for="">City</label>
                <input type="text" name="city" id="city-ch" placeholder="Prishtina">
                  <span id="city-error"></span>
                </div>
                <div>
                    
                <label for="">Zip</label>
                <input type="text" name="zip" id="zip-code-ch" placeholder="11000">
                <span id="zip-error">asd</span>
                </div>
            </form>
        </div>
        <div class="action-side" style="border-color: black;">
            <div class="price-side">
                <h2> <span class="total-items"></span> item in your cart</h2>
                <h2 class="total-value">Total Price :<span id="cart-total">0</span>$</h2>
            </div>
            <div class="proceed">
                <button style="border: 1px solid rgb(37, 25, 141);">Continue to checkout</button>
               
            </div>
        </div>
        
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="JavaScript/cart.js"></script>
    <script src="JavaScript/checkout.js"></script>
</body>
</html>