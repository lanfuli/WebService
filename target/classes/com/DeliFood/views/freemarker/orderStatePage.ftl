<!-- OrderStatePage.ftl-->
<!--Name:Miyu, Fuli o-->

<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/Grid.css">
    <link rel="stylesheet" type="text/css" href="/assets/vendors/css/ionicons.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/orderStateStyle.css">
    <link rel="stylesheet" type="text/css" href="/assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ravi+Prakash" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans:700" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.6/ngStorage.min.js"></script>

    <meta charset="UTF-8">
    <title>OrderState</title>
</head>
<header>
    <nav>
        <div class="row" >
            <img src="/assets/css/img/sign/deliSign.png" alt="DeliFood Logo" class="logo" >
            <a class="deliWord" href="index.html" >DeliFood </a>
        </div>
    </nav>
</header>
<body
        ng-app="myApp"
        ng-controller="myCtrl">

<section class="section-orderState-body" >
    <div class="orderState-box" style="float: left; width: 70%">

        <h2> Check Your Order State </h2>
        <div class="customerInfo-box" style="float: left; width: 65%">



            <?php
            echo "hahahha";

            echo $_GET['name'];
            echo $_GET["address"];
            echo $_GET["state"];
            echo $_GET["zipcode"];
            echo $_GET['comment'];
            ?>

            <h3> Customer's Name </h3>

            <p class="Customer_address"> 13623 NE 5th St Bellevue, WA 98005</p>

            <p class="instruction-head"> Additional Instruction: </p>
            <p class="instruction-body"> call me when you arrive at the address, phone number: 4256478989 </p>

        </div>

        <div class="googlemap" style="float: right; width: 35%;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2690.084406929033!2d-122.16011884887807!3d47.60504839597631!2m3!1
        f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54906c47306e5093%3A0xb802b95ed1c9799e!2s13623+SE+5th+St%2C+Bellevue%2C+WA+98005!5e0!3m2!1sen!2sus!4v1481163834442"
                width="300" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

    <div class="timeBar" style="display: inline-block">
        <div class="orderStateBar-box">
            <div id = deliverButton>
                <!--<button onclick="move()"> Start Deliver </button>-->

            </div>
            <div id="myProgress">
                <div id="myBar">
                    <div id="label" style="margin: 1% 1%;">10%</div>
                </div>

            </div>



            <script>
                function move() {
                    var elem = document.getElementById("myBar");
                    var width = 0;
                    var id = setInterval(frame, 10000);
                    function frame() {
                        if (width >= 100) {
                            clearInterval(id);
                        } else {
                            width+=10;
                            elem.style.width = width + '%';
                            document.getElementById("label").innerHTML = width * 1 + '%';
                        }
                    }
                }
                window.onload = move();
            </script>


        </div>

        <p class="stateBar-Tag" align="right"> </p>
        <div class="row">
            <div class="col span-1-of-6 box">
                <i class="ion-arrow-up-b" style="display: block; float: left"></i>

                <h7>Restaurant have received your order </h7>

            </div>

            <div class="col span-1-of-6 box">
            </div>
            <div class="col span-1-of-6 box">
                <i class="ion-arrow-up-b" style="display: block; text-align: center"></i>
                <h7>Ready to Delivery</h7>

            </div>

            <div class="col span-1-of-6 box">
                <i class="ion-arrow-up-b" style="display: block; text-align: center"></i>
                <h7>Courier have taken your order</h7>

            </div>

            <div class="col span-1-of-6 box">
            </div>
            <div class="col span-1-of-6 box">
                <i class="ion-arrow-up-b" style="float: right;"></i>
                <h7>Your order have delivered</h7>

            </div>

        </div>

        <p class="delivery_time" align="right" style="font-size: 65%"> Estimated Delivery Time: {{time}} PM</p>
        <script>
            angular.module('myApp', [])
                    .controller('myCtrl', ['$scope', function($scope) {
                        $scope.d = new Date();
                        $scope.dMin = $scope.d.getMinutes() + 45;
                        if ($scope.dMin <= 60)
                        {
                            $scope.time = $scope.d.getHours() + ":" + $scope.dMin;
                        }
                        else {
                            $scope.dHours = $scope.d.getHours() + 1;
                            $scope.dMin = $scope.dMin - 60;
                            $scope.time = $scope.dHours + ":" + $scope.dMin;
                        }

                    }]);
        </script>
    </div>

    </div>

    <div class="yourOrder-box" style="width: 30%; float: right; ">
        <p class="yourOrderHeader">
        <h2 style="border-bottom: 3px solid gray;"> Your Order </h2>
        </p>



        <table style="width:100%">
            <tr>
                <th>Item</th>
                <th>Qty</th>
                <th>Price</th>
            </tr>
            <tr>
                <td>Tropical Mango Smoothie </td>
                <td>1</td>
                <td>$ 2.29</td>
            </tr>
            <tr>
                <td>Smooth Roast Decaf Coffee</td>
                <td>1</td>
                <td>$ 2.29</td>
            </tr>
            <tr>
                <td>Smooth Roast Decaf Coffee</td>
                <td>1</td>
                <td>$ 2.29</td>
            </tr>

        </table>


    </div>

</section>
<div class="compantInfo">
    <div class="row">
        <div class="col span-1-of-3 box">
            <h3>Get to Know Us</h3>
            <a href="#"> About Us </a><br>
            <a href="#"> Blog </a>
        </div>

        <div class="col span-1-of-3 box">
            <h3>Let Us Help You</h3>
            <a href="#"> Support </a><br>
            <a href="#"> FAQ </a>
        </div>

        <div class="col span-1-of-3 box">
            <h3>Doing Business With Us</h3>
            <a href="#"> Become a partner Restaurant </a><br>
            <a href="#"> Become a Carrier </a>
        </div>
    </div>
</div>
</body>
</html>