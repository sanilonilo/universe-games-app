class Game{
  int id;
  String name;
  String description;
  String imageUrl;
  String? trailerUrl;
  String? categoryName;
  int? categoryId;

  Game({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    this.trailerUrl,
    this.categoryName,
    this.categoryId
  });

}