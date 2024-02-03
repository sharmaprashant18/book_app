class Book {
  final String imageUrl;
  final String name;
  final String detail;
  final String genre;
  final String rating;
  Book(
      {required this.imageUrl,
      required this.name,
      required this.detail,
      required this.genre,
      required this.rating});
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      imageUrl: json['imageUrl'],
      name: json['name'],
      detail: json['detail'],
      genre: json['genre'],
      rating: json['rating'],
    );
  }
}

final books = [
  {
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/en/b/b5/China_Harayeko_Manchhe.jpg',
    'name': 'Cheena Harayako Manchhe',
    'genre': 'Autobiography',
    'detail':
        'The storyline of Cheena Harayako Manchhe, is about a simple, god-fearing man who happens to lose his "China" or "Cheena" (horoscope). The autobiography depicts the author\'s childhood memories, fantasies and the struggles he had to face during his adolescent years. “The book is the tribute to my late wife Meera and proceeds from the book will go to a trust of her name,” said the author at a press meet',
    'rating': '⭐⭐⭐'
  },
  {
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/en/d/d9/Summer_Love_%28novel%29.jpg',
    'name': 'Summer Love',
    'genre': 'Love Story',
    'detail':
        'Writer is on a cruise ship where he meets another Nepali person, Atit. As writer introduces himself, Atit asks the writer if he is willing to write Atit\'s love story. Reluctantly, the writer agrees to listen to his story. Atit is curious to find out the entrance topper Saaya, who also has the same way back to home as Atit has.',
    'rating': '⭐⭐⭐⭐'
  },
  {
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/en/2/26/Saaya_novel.jpg',
    'name': 'Saaya',
    'genre': 'Romance',
    'detail':
        'It is the sequel of Summer Love. It is based on point of view of narrator, Atit, Saaya and Susmita. According to the story, narrator takes the responsibility to mend the things between Atit and Saaya. Two years after the book about Atit\'s love story is published, the writer comes in contact with Saaya to know her story.',
    'rating': '⭐⭐⭐'
  },
  {
    'imageUrl':
        'http://upload.wikimedia.org/wikipedia/en/4/47/Seto_Dharti_by_Amar_Neupane.jpg?20180114073736',
    'name': 'Seto Dharti',
    'genre': 'Fiction',
    'detail':
        'The story is based on the life of a girl named Tara. She is a simple girl living in her village spending her time playing with other children of same village. While the story goes on, she gets married at the age of seven, the very age at which she does not even understand the meaning of marriage. The story in the novel is of the time period 1850–1950',
    'rating': '⭐⭐⭐⭐⭐'
  },
];

List<Book> booksData = books.map((e) => Book.fromJson(e)).toList();
