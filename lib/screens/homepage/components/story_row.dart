import 'package:flutter/material.dart';

import '../../../service/get_data.dart';

class StoryRow extends StatelessWidget {
  const StoryRow({
    super.key,
    required this.data,
  });

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(data.getUsers().length, (index) {
          return StoryAvatart(data: data, index: index);
        }),
      ),
    );
  }
}

class StoryAvatart extends StatelessWidget {
  const StoryAvatart({
    super.key,
    required this.data,
    required this.index,
  });

  final GetData data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.red, width: 3)),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Center(
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(data.getUsers()[index].profilePicture)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
