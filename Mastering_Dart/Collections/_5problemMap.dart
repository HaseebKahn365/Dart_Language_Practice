void main() {
  // var restaurants = [
  //   {
  //     'name': 'Pizza Hut',
  //     'address': 'Peshawar',
  //     'rating': [4.5, 3.5, 4.0]
  //   },
  //   {
  //     'name': 'Pizza Hut',
  //     'address': 'Mardan',
  //     'rating': [4.5, 4.5, 4.0, 5.0, 5.0, 5.0]
  //   },
  //   {
  //     'name': 'Burger King',
  //     'address': 'xyz',
  //     'rating': [4.5, 3.5, 4.0, 4.5]
  //   }
  // ];
  // for (var restaurant in restaurants) {
  //   final List<double> ratingsList = restaurant['rating'] as List<double>;
  //   double sum = 0;
  //   for (var rating in ratingsList) {
  //     sum += rating;
  //   }
  //   var avg = sum / ratingsList.length;
  //   //restaurant.putIfAbsent('avgRating', () => avg);
  //   restaurant['avgRating'] = avg; //a better approach to add a new key value pair to a map
  // }

  // for (var restaurant in restaurants) {
  //   print(restaurant);
  // }

  var listOfMaps = [
    {
      'rating': [10]
    },
    {
      'rating': [20]
    },
    {
      'rating': [30]
    }
  ];
  for (var item in listOfMaps) {
    final List<int> intList = item['rating'] as List<int>;
    int sum = 0;
    for (var singleInt in intList) {
      sum += singleInt;
    }
    print('Sum = $sum');

    print('Avg = ${sum / intList.length}');
  }
}
