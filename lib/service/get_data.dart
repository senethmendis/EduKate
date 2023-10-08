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
  final userPic5 =
      "https://letstryai.com/wp-content/uploads/2023/08/gamer-girl-digital-avatar-midjourney-prompt.jpg";
  final userPic6 =
      "https://preview.redd.it/what-kind-of-artstyle-is-this-i-created-this-images-with-v0-h5y5avgotsva1.png?width=640&crop=smart&auto=webp&s=e3b1c48c592caf8b2bdadf79d3558bda46c46c67";

  final u1Bg1 =
      "https://digitalsynopsis.com/wp-content/uploads/2019/08/beautiful-illustrations-design-inspiration-38.png";
  final u2Bg2 =
      "https://digitalsynopsis.com/wp-content/uploads/2019/08/beautiful-illustrations-design-inspiration-37.png";
  final u3Bg3 =
      "https://img.freepik.com/premium-photo/man-works-desk-with-laptop-it_901275-11003.jpg";
  final u4Bg4 = "https://cdn.mos.cms.futurecdn.net/ZcD9zyBoBHt6ATTFmZHr5B.jpg";
  final u4Bg5 =
      "https://digitalsynopsis.com/wp-content/uploads/2019/08/beautiful-illustrations-design-inspiration-22.png";
  final u6Bg6 =
      "https://i.pinimg.com/736x/ce/ce/e0/cecee03be7295c50ed5a6c94149be8b3.jpg";

  List<UserModel> getUsers() {
    List<UserModel> users = [
      UserModel(
          name: "Emily",
          profileTag: "EmilyAdventures",
          profilePicture: userPic1,
          type: "Begginer",
          completion: "55",
          points: "200",
          discription: "Exploring Life, One Adventure at a Time!",
          bgImage: u1Bg1),
      UserModel(
          name: "Sophia",
          profileTag: "SophiaSmiles",
          profilePicture: userPic2,
          type: "Intermediate",
          completion: "35",
          points: "400",
          discription: "Spreading Joy, One Smile at a Click!",
          bgImage: u2Bg2),
      UserModel(
          name: "seneth",
          profileTag: "OliviaGlam",
          profilePicture: userPic3,
          type: "Expert",
          completion: "15",
          points: "500",
          discription: "Where Glamour Meets Everyday Life!",
          bgImage: u3Bg3),
      UserModel(
          name: "Ava",
          profileTag: "AvaTraveler",
          profilePicture: userPic4,
          type: "Prodigy",
          completion: "80",
          points: "250",
          discription: "Wanderlust in Every Post!",
          bgImage: u4Bg4),
      UserModel(
          name: "Mia",
          profileTag: "@MiaFashionista",
          profilePicture: userPic5,
          type: "Prodigy",
          completion: "80",
          points: "250",
          discription: "Style Redefined, One Outfit at a Pose!",
          bgImage: u4Bg5),
      UserModel(
          name: "Isabella",
          profileTag: "@BellaVoyage",
          profilePicture: userPic6,
          type: "Prodigy",
          completion: "80",
          points: "250",
          discription: "Capturing the World, One Bella Adventure at a Time!",
          bgImage: u6Bg6),
    ];
    return users;
  }
}
