<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="assets/vendors/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="assets/vendors/css/Grid.css">
    <link rel="stylesheet" type="text/css" href="assets/css/menuStyle.css">
    <link rel="stylesheet" type="text/css" href="assets/js/app.js">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alegreya:900&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.6/ngStorage.min.js"></script>

    <title>Checkout</title>
</head>

<header>
    <nav>
        <div class="row">
            <img src="assets/css/img/sign/deliSign.png" alt="DeliFood Logo" class="logo">
            <a href="/menu/1111" class="deliWord">DeliFood </a>
        </div>
    </nav>
</header>

<body
        ng-app="deliApp"
        ng-controller="mainCtrl">

<#--<script>-->
    <#--function submitForm(oFormElement) {-->
        <#--var http = new XMLHttpRequest();-->
        <#--var url = "http://localhost:8080/orderState/";-->
        <#--http.open(oFormElement.method, url, true);-->
        <#--http.send(new FormData(oFormElement));-->
    <#--}-->
<#--</script>-->
<div style="margin: 5% 10%;">
    <div class="checkoutpage">
        <div class="customerinfo">
            <form  id="f1" name="placeorder" action="orderState" method="GET">

                <h2>Info</h2>
                Name <input type="text" name="name" REQUIRED>
                <br>
                Delivery Address<br>
                <input type="text" name="address" size="40px" REQUIRED>
                <br>

                Sate <input type="text" name="state"
                            size="5px" REQUIRED>&nbsp;&nbsp;&nbsp;&nbsp;
                Zip Code <input type="text"
                                name="zipcode" size="8px" REQUIRED>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                House&nbsp;&nbsp;<input type="radio" name="houseType" required>&nbsp;&nbsp;&nbsp;&nbsp;
                Apt&nbsp;&nbsp;<input type="radio" name="houseType" required>
                <br>
                <textarea name="comment" id='comment'
                          placeholder="Addition instruction for delivery"></textarea><br/>

            </form>

        </div>


        <h2>Schedule</h2>
        <div class="scheduleTime">
            <div class="row">
                <div class="col span-1-of-2 box">
                    <input type="radio" name="scheduleType">&nbsp;&nbsp;&nbsp;ASAP
                </div>

                <div class="col span-1-of-2 box">
                    <input type="radio" name="scheduleType">
                    <label>&nbsp;&nbsp;&nbsp;Schedule Time
                        <select id="restaurantChoice">
                            <option value="0">10:00am</option>
                            <option value="1">10:30am</option>
                            <option value="2">11:00am</option>
                            <option value="3">11:30am</option>
                            <option value="4">12:00am</option>
                            <option value="5">1:00pm</option>
                            <option value="6">1:30pm</option>
                            <option value="7">2:00pm</option>
                            <option value="8">2:30pm</option>
                            <option value="9">3:00pm</option>
                            <option value="10">3:30pm</option>
                            <option value="11">4:00pm</option>
                            <option value="12">4:30pm</option>
                            <option value="12">5:00pm</option>
                            <option value="13">5:30pm</option>
                            <option value="14">6:00pm</option>
                            <option value="15">6:30pm</option>
                            <option value="16">7:00pm</option>
                            <option value="17">7:30pm</option>
                            <option value="18">8:00pm</option>
                            <option value="19">8:30pm</option>
                            <option value="20">9:00pm</option>
                            <option value="21">9:30pm</option>
                            <option value="22">10:00pm</option>
                        </select>
                    </label>
                </div>
            </div>
        </div>
        <div class="paymentMethod">
            <h2>Payment</h2>
            <div class="row">
                <div class="col span-1-of-2 box">
                <#--<img src="assets/css/img/sign/paypal_icon.png" alt="paypal">-->
                    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="hosted_button_id" value="6RNT8A4HBBJRE">
                        <input type="image"
                               src="assets/css/img/sign/paypal_icon.png" alt="Buy Now" class="paypalimage">
                    </form>
                </div>
                <div class="col span-1-of-2 box">
                    <a href="https://developer.visa.com/portal/#login"> <img src="assets/css/img/sign/visa-checkout.png"
                                                                             alt="VisaCheckOut"></a>
                </div>
            </div>
        <#--<div class="row">-->
        <#--<div class="col span-1-of-2 box">-->
        <#--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
        <#--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="paymentType">-->
        <#--</div>-->
        <#--<div class="col span-1-of-2 box">-->
        <#--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
        <#--&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="paymentType">-->
        <#--</div>-->
        <#--</div>-->
        </div>
        <div class="coupon">
            <h2>Coupon</h2>
            <input type="text" size="40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button>Apply</button>
        </div>
    </div>

    <div class="orderSummar_Checkout">
        <h2 class="orderInfoword">Your Order</h2>
        <div class="orderSummary">
            <div class="row">
                <div class="col span-1-of-3 box">
                    <p class="orderitem">Item</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p class="quality">Qty</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p class="price">Price</p>
                </div>
            </div>
            <div class="row">
                <div class="col span-1-of-3 box">
                    <p>Smooth Roast Decaf Coffee</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>1</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>$2.29</p>
                </div>
            </div>

            <div class="row">
                <div class="col span-1-of-3 box">
                    <p>Tropical Mango Smoothie</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>1</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>$2.29</p>
                </div>
            </div>

            <div class="row">
                <div class="col span-1-of-3 box">
                    <p>Smooth Roast Decaf Coffee</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>1</p>
                </div>

                <div class="col span-1-of-3 box">
                    <p>$2.29</p>
                </div>
            </div>
        </div>
        <div class="orderPriceSummary">
            <div class="row">
                <div class="col span-1-of-2 box">
                    <p>Subtotal</p>
                </div>

                <div class="col span-1-of-2 box">
                    <p class="subtotalprice">$6.87</p>
                </div>
            </div>

            <div class="row">
                <div class="col span-1-of-2 box">
                    <p>Tax</p>
                </div>

                <div class="col span-1-of-2 box">
                    <p class="taxAmount">$0.65</p>
                </div>
            </div>

            <div class="row">
                <div class="col span-1-of-2 box">
                    <p>Tips</p>
                </div>
            </div>

            <div class="row">
                <div class="col span-1-of-2 box">
                    <p class="totalAmount">Total: </p>

                </div>

                <div class="col span-1-of-2 box">
                    <p class="totalPrice">$7.52 </p>

                </div>
            </div>
        <#--$scope.count = 0;-->
        <#--$scope.price = 0;-->
        <#--$scope.subtotal = 0;-->
        <#--$scope.tax = 0;-->
        <#--$scope.total = 0;-->
        <#--$scope.myFunc = function() {-->
        <#--$scope.count++;-->
        <#--$scope.price = $scope.price + ${menus[1].price};-->
        <#--$scope.subtotal = $scope.price-->
        <#--$scope.tax = $scope.subtotal * 0.095-->
        <#--$scope.total = $scope.subtotal + $scope.tax;-->
        <#--};-->
        </div>
        <div class="checkbtn">
            <#--<form action="getOrder" method="GET">-->
                    <button type="submit" form="f1" value="Submit">Submit</button>

        </div>
    </div>
</div>
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