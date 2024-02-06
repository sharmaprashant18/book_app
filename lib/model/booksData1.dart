class Book1 {
  final String detail;
  // final String name;
  Book1({
    required this.detail,
    // required this.name
  });
  factory Book1.fromJson(Map<String, dynamic> json) {
    return Book1(
      detail: json['detail'],
      //  name: json['name']
    );
  }
}

final books1 = [
  {
    //'name': 'Cheena Harayako Manchhe',
    'detail': 'Currently Not Available'
  },
  // {'name': 'Summer Love', 'detail': 'Currently Not Available'},
  // {'name': 'Saaya', 'detail': 'Currently Not Available'},
  // {'name': 'Seto Dharti', 'detail': 'Currently Not Available'},
];
List<Book1> booksData1 = books1.map((e) => Book1.fromJson(e)).toList();
