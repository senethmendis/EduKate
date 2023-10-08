import 'package:edukate/model/user_model.dart';

class GetData {
  final userPic1 =
      "https://www.aipromptsgalaxy.com/wp-content/uploads/2023/06/subrat_female_avatar_proud_face_Aurora_a_25-year-old_girl_with__fd0e4c59-bb7e-4636-9258-6690ec6a71e7.png";
  final userPic2 =
      "https://www.aidemos.info/wp-content/uploads/2023/05/avatar_for_social_app_realistic_female_98944746-c433-464d-8e6c-e44ee6b6c03e.webp";
  final userPic3 =
      "https://www.aidemos.info/wp-content/uploads/2023/05/avatar_for_social_app_realistic_female_42_years_old_te_5cf8ced8-3ece-4131-819a-62a8c9df0b84.webp";
  final userPic4 =
      "https://letstryai.com/wp-content/uploads/2023/08/midjourney-prompt-for-avatars-female.jpg";

  List<UserModel> getUsers() {
    List<UserModel> users = [
      UserModel(
          name: "Emily",
          profileTag: "EmilyAdventures",
          profilePicture: userPic1,
          type: "Begginer",
          completion: "55",
          points: "200",
          discription: "Exploring Life, One Adventure at a Time!"),
      UserModel(
          name: "Sophia",
          profileTag: "SophiaSmiles",
          profilePicture: userPic2,
          type: "Intermediate",
          completion: "35",
          points: "400",
          discription: "Spreading Joy, One Smile at a Click!"),
      UserModel(
          name: "seneth",
          profileTag: "OliviaGlam",
          profilePicture: userPic3,
          type: "Expert",
          completion: "15",
          points: "500",
          discription: "Where Glamour Meets Everyday Life!"),
      UserModel(
          name: "Ava",
          profileTag: "AvaTraveler",
          profilePicture: userPic4,
          type: "Prodigy",
          completion: "80",
          points: "250",
          discription: "Wanderlust in Every Post!"),
    ];
    return users;
  }
}
