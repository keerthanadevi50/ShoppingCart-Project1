var cartApp = angular.module ("addToCartApp", []);

cartApp.controller("addToCartCtrl", function ($scope, $http){
	
	 $scope.retrieveCart = function (pn) {
	        $scope.pn = pn;
	        $scope.refreshCartItems(pn);
	    };
	    
	    $scope.refreshCartItems = function () {
	    	
	        $http.get('http://localhost:8060/it/viewcart').success(function (data) {
	           $scope.cart=data;
	        });
	    };
	    
	    $scope.addtocart = function(pid){
	    	 $http.put('http://localhost:8060/it/addtocart/'+pid).success(function () {
	             alert("Item added to the cart!")
	         });
	    }
	    
	    $scope.viewcart = function () {
	        $http.get('http://localhost:8060/it/refreshcart/'+$scope.pn).success(function (data) {
	           $scope.cart=data;
	        });
	    };
	    
	 
});