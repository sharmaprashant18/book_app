class Books {
  final String imageUrl;
  final String name;
  final String detail;
  final String genre;
  final String rating;
  Books(
      {required this.imageUrl,
      required this.name,
      required this.detail,
      required this.genre,
      required this.rating});
  factory Books.fromJson(Map<String, dynamic> json) {
    return Books(
      imageUrl: json['imageUrl'],
      name: json['name'],
      detail: json['detail'],
      genre: json['genre'],
      rating: json['rating'],
    );
  }
}

final bookss = [
  {
    'imageUrl': 'assets/cheena.png',
    'name': 'Karnali Blues',
    'genre': 'Fiction',
    'detail':
        'The novel depicts the father-son relationship in a family from the Mid-western region of Nepal. The family had descended from Surkhet to the plains around present Bardiya National Park when the forest lands had opened up to agriculture, and then moved to Kalikot. Brisha Bagadur, the narrator of the novel, is born into a Pahari family. They are one of the hill people families, who have been moving down to the plains in growing numbers over the past fifty years to open up newly cleared forest lands for agriculture. ',
    'rating': '⭐⭐⭐'
  },
  {
    'imageUrl': ' https://en.wikipedia.org/wiki/File:Pagal-Basti.jpg',
    'name': 'Pagal Basti',
    'genre': 'Fiction',
    'detail':
        'The main characters in the story are (Adiguru) Prashant and (Adimata) Martha. The major focus of the book is the continuous changes that occur in the mental state of these two characters. Both of the characters are dissatisfied with each other and both feel guilty about their past. They have both started a journey of to end their dissatisfaction and face their guilt. Prashant, who had loved Martha has changed into Adiguru after her refusal. Martha realizes the value of love only after she rejects Prashant and she goes on a quest of finding him in the Adi village.',
    'rating': '⭐⭐⭐⭐'
  },
  {
    'imageUrl': 'https://en.wikipedia.org/wiki/File:Maharani_(novel).jpg',
    'name': 'Maharani',
    'genre': 'Fiction',
    'detail':
        'The book is a historical fiction based on Chaubisi Rajya and Baise rajya of Nepal. The story is about King Ghanashyam of Parbat and the controversy over his succession by his sons- Malebam and Bhadribam. Malebam is the elder son and has the birthright to the throne whereas Bhadribam was conceived earlier but born later. When Malebam is declared king, Bhadribam revolts while his wife, to everyone\'s surprise, supports Malebam.',
    'rating': '⭐⭐⭐'
  },
  {
    'imageUrl': 'https://en.wikipedia.org/wiki/File:Shirish_ko_Phool.jpg',
    'name': 'Shrishko Phool',
    'genre': 'Novel',
    'detail':
        'Suyog meets Sakambari and her two sisters through Shivaraj. Suyog is a lonely middle-aged man and sees the three sisters with eyes of lust. He views Mujura as the quintessential woman with all the feminine virtues and the most logical choice for a wife. However, he is drawn towards Sakambari who is a rebellious personality who does not adhere to the traditional expectations of how a woman should act or dress. He finds his philosophies strongly at odds with Sakambari\'s and their acquaintance leads him to reevaluate his past life and actions. ',
    'rating': '⭐⭐⭐⭐⭐'
  },
];

List<Books> bookssData = bookss.map((e) => Books.fromJson(e)).toList();
