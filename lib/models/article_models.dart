class ArticleModels {
  final String? image;
  final String title;
  final String? subtitle;

  const ArticleModels({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory ArticleModels.fromJson(Map<String, dynamic> json) {
    return ArticleModels(
      image: json["urlToImage"], // Ensure this matches the API field
      title: json["title"],
      subtitle: json["description"], // Ensure this matches the API field
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "urlToImage": this.image, // Change to match API response key if needed
      "title": this.title,
      "description": this.subtitle, // Change to match API response key if needed
    };
  }
}