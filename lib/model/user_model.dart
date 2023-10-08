class UserModel {
  String name;
  String profileTag;
  String profilePicture;
  String type;
  String points;
  String levelUpPoints;
  String completion;
  String discription;
  String bgImage;

  UserModel({
    required this.name,
    required this.profileTag,
    required this.profilePicture,
    this.levelUpPoints = "0",
    required this.type,
    required this.completion,
    required this.points,
    required this.discription,
    required this.bgImage,
  });
}
