class Movie {
  String titleName;
  String category;
  String cast;
  int productionYear;

  Movie(
      {required this.titleName,
      required this.category,
      required this.cast,
      required this.productionYear});
  @override
  String toString() {
    return "Titel: $titleName, Category: $category, Cast: $cast, From: $productionYear";
  }
}
