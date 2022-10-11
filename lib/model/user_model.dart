class UserModel {
  final int userId;
  final String name;
  final String url;
  final String thumbnailUrl;

  UserModel({
    required this.userId,
    required this.name,
    required this.url,
    required this.thumbnailUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["userId"],
        name: json["name"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  static List<UserModel> parseList(dynamic list) {
    return List<UserModel>.from(list.map(
      (user) => UserModel.fromJson(user),
    ));
  }
}
