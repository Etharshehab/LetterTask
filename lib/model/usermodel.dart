class UserModel {
  int userid;
  int id;
  String title;
  String body;
  UserModel({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });
  final List<UserModel> data = [];
}
