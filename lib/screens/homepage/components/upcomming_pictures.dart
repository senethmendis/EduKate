import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../service/get_data.dart';

class UpcomingPictures extends StatelessWidget {
  const UpcomingPictures({
    super.key,
    required this.screenSize,
    required this.data,
  });

  final Size screenSize;
  final GetData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(data.getUsers().length, (index) {
          return UpcommingPictureCard(
            screenSize: screenSize,
            data: data,
            index: index,
          );
        }),
      ),
    );
  }
}

class UpcommingPictureCard extends StatelessWidget {
  const UpcommingPictureCard({
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
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: screenSize.width,
        height: 100,
        decoration: BoxDecoration(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: ListTile(
            title: Text(
              data.getUsers()[index].discription,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "@${data.getUsers()[index].profileTag}",
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
                  NetworkImage(data.getUsers()[index].profilePicture),
            ),
          ),
        ),
      ),
    );
  }
}
