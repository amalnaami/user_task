class Assets {
  Assets? _assets;

  Assets getInstance() {
    return _assets == null ? Assets() : _assets!;
  }

  static String userProfile = "assets/images/user.png";
}
