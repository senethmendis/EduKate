import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../service/get_data.dart';

class PopularWeek extends StatelessWidget {
  const PopularWeek({
    super.key,
    required this.screenSize,
    required this.data,
  });

  final Size screenSize;
  final GetData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(data.getUsers().length, (index) {
          return PopularWeekCard(
            screenSize: screenSize,
            data: data,
            index: index,
          );
        }),
      ),
    );
  }
}

class PopularWeekCard extends StatelessWidget {
  const PopularWeekCard({
    super.key,
    required this.screenSize,
    required this.data,
    required this.index,
  });

  final Size screenSize;
  final GetData data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: screenSize.width * 0.8,
        height: screenSize.height * 0.5,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(data.getUsers()[index].bgImage),
                fit: BoxFit.cover,
                opacity: 0.4)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundImage:
                      NetworkImage(data.getUsers()[index].profilePicture),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.getUsers()[1].name,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text("@${data.getUsers()[index].profileTag}",
                        style: const TextStyle(
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
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      data.getUsers()[index].discription,
                      maxLines: 3,
                      style: const TextStyle(
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
    );
  }
}
