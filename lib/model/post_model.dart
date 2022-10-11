class PostModel {
  final int userId;
  final String title;
  final String body;

  PostModel({
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        title: json["title"],
        body: json["body"],
      );

  static List<PostModel> parseList(dynamic list) {
    return List<PostModel>.from(list.map(
      (post) => PostModel.fromJson(post),
    ));
  }
}
