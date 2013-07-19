var app = angular.module("todoList", ['ngResource']);

app.controller("TodoCrtl", function ($scope, $resource){

	var List = $resource('/items/:id', {id: '@id'}, {update: {method:'PUT'}});
	$scope.todos = []
	$scope.newTodo = null;

	List.query(function(items){
		angular.forEach(items, function(item){
			$scope.todos.push(item);			
		});
	});

	$scope.addTodo = function(todo) {
		if (todo != null) {
			$scope.newTodo = null;

			var item = new List({text: todo, list_id: 1});
			item.$save(function(response){
				$scope.todos.push(response);
			});
		}
	}

	$scope.markDone = function(todo) {
		todo.status = !todo.status;

		List.get({id: todo.id}, function(item){
			item.status = todo.status;
			item.$update();
		});
	}

	$scope.deleteTodo = function(todo) {
		List.delete({id: todo.id});
		var index = $scope.todos.indexOf(todo);
		$scope.todos.splice(index, 1);
	}

});
