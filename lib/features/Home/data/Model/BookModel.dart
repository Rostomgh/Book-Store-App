class Book {
  String name;
  String author;
  String description;
  double price;
  String? image;
  String language;
  int pages;
  String category;

  Book({
    required this.name,
    required this.author,
    required this.description,
    required this.price,
    this.image,
    required this.language,
    required this.pages,
    required this.category,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      name: json['name'],
      author: json['author'],
      description: json['description'],
      price: json['price'].toDouble(),
      image: json['image'],
      language: json['language'],
      pages: json['pages'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'author': author,
      'description': description,
      'price': price,
      'image': image,
      'language': language,
      'pages': pages,
      'category': category,
    };
  }
}
