class ArticleModels{
  final String ?image;
  final String title;
  final String ?subtitle;
  const ArticleModels({required this.image,required this.title,required this.subtitle});

  factory ArticleModels.fromJson(Map<String, dynamic> json) {
    return ArticleModels(
      image: json["image"],
      title: json["title"],
      subtitle: json["subtitle"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "image": this.image,
      "title": this.title,
      "subtitle": this.subtitle,
    };
  }

//
}