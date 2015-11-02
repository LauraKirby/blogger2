app.controller('NewPostCtrl', function ($scope) {
    $scope.postTitle = "my first post";
	$scope.postContent = "bah bah bah black sheep";

	$scope.savePost = function(){
        console.log("h");
        var data = {title:$scope.postTitle, content:$scope.postContent};
        console.log(data);
        $http.post('/user_posts', data).then(function(data){
         
         });
    };
	});