class Book2 {
  final String detail;
  // final String name;
  Book2({
    required this.detail,
    // required this.name
  });
  factory Book2.fromJson(Map<String, dynamic> json) {
    return Book2(
      detail: json['detail'],
      // name: json['name']
    );
  }
}

final books2 = [
  {
    // 'name': 'Karnali Blues',
    'detail': 'Currently Not Available'
  },
  // {'name': 'Pagal Basti', 'detail': 'Currently Not Available'},
  // {'name': 'Maharani', 'detail': 'Currently Not Available'},
  // {'name': 'Shrishko Phool', 'detail': 'Currently Not Available '},
];
List<Book2> bookssdata1 = books2.map((e) => Book2.fromJson(e)).toList();
