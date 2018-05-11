<html ng-app="myApp">
<head>
    <link href="WEB-INF/css/main.css" rel="stylesheet" type="text/css"></link>
    <script type="text/javascript" src="WEB-INF/js/jquery.1.10.2.min.js"></script>
    <script type="text/javascript" src="WEB-INF/js/main.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.2/angular.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/1.2.13/angular.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/1.2.13/angular-animate.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.9/angular.js"></script>
</head>
<body data-ng-controller="POSController">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="jumbotron">
          <h2><span class="text-warning">PZ POS DEMO</span> <span class="text-success">Make your own PIZZA !!</span></h2>
          <span class="pull-right text-muted">Today is March 15, 2018</span>
          <div class="text-muted">Địa chỉ công trình</div>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col-sm-6">
        <div class="well">
          <div class="box">
            <div class="text-info">SELECT YOUR CRUST</div>
            <hr>
            
            <button class="buttons btn btn-primary" ng-click="add(food.pizza)">Sofa</button>
            <button class="buttons btn btn-primary" ng-click="add(food.donut)">Bàn sofa</button>
            <button class="buttons btn btn-primary" ng-click="add(food.tortilla)">Ghế đôn</button>
            <button class="buttons btn btn-primary" ng-click="add(food.burger)">Trang thờ</button>
            <button class="buttons btn btn-success" ng-click="add(food.samosa)">Đèn soi tranh</button>
          </div>
          
          <br></br>
          <div class="box">
            <div class="text-info">Beverages</div>
            <hr>
            
            <button class="buttons btn btn-primary" ng-click="add(food.coldcoffee)">Cold Coffee</button>
            <button class="buttons btn btn-primary" ng-click="add(food.hotcoffee)">Hot Coffee</button>
            <button class="buttons btn btn-primary" ng-click="add(food.coke)">Coke</button>
            <button class="buttons btn btn-primary" ng-click="add(food.dietcoke)">Diet Coke</button>
            <button class="buttons btn btn-primary" ng-click="add(food.pepsi)">Pepsi</button>
          </div>
          
        </div>
      </div>
      
      <div class="col-sm-6">
        <div class="well">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Order Summary</h3>
            </div>
            <div class="panel-body" style="max-height:320px; overflow:auto;">
              <div class="text-warning" ng-hide="order.length">
                Noting ordered yet !
              </div>
              <ul class="list-group">
                <li class="list-group-item" ng-repeat = "item in order">
                  <div class="label label-success">${{item.item.price}}</div>
                   {{item.item.detail}}
                  
                  <button class="btn btn-danger btn-xs pull-right" ng-click="deleteItem($index)">
                    <span class="glyphicon glyphicon-trash"></span>
                  </button>
                </li>
              </ul>

            </div>
            <div class="panel-footer" ng-show="order.length">
              <div class="label label-danger">Total: ${{getSum()}}</div>
            </div>
            <div class="panel-footer" ng-show="order.length">
              <div class="text-muted">
                Do not let go of customer without taking payment !
              </div>
            </div>
            <div class="pull-right">
              <span class="btn btn-default" ng-click="clearOrder()" ng-disabled="!order.length">Clear</span>
              <span class="btn btn-danger" ng-click="checkout()" ng-disabled="!order.length">Checkout</span>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>