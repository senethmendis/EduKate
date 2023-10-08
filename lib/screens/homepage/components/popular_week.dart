import 'dart:ui';

import 'package:flutter/material.dart';

class PopularThisWeek extends StatelessWidget {
  const PopularThisWeek({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: screenSize.width * 0.8,
            height: screenSize.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/premium-photo/illustration-woman-sitting-couch-using-tablet-generative-ai_900396-41069.jpg?w=360"),
                    fit: BoxFit.cover,
                    opacity: 0.4)),
            child: Column(
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          "https://miro.medium.com/v2/resize:fit:1200/0*YoNIUVJ3OC8j95tH.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lana Maranida",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text("@lanamarani",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white))
                      ],
                    )
                  ],
                ),
                const Spacer(),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      width: screenSize.width,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade700.withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Learn Photshop with ease \n2023 Edition",
                          maxLines: 3,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
