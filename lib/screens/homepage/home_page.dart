import 'package:edukate/service/get_data.dart';
import 'package:flutter/material.dart';

import 'components/home_appbar.dart';
import 'components/popular_week.dart';
import 'components/section_header.dart';
import 'components/story_row.dart';
import 'components/upcomming_pictures.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppBar(screenSize: screenSize),

              //main page content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    StoryRow(data: data),
                    const SizedBox(
                      height: 20,
                    ),
                    const SectionHeader(word1: "Popular", word2: "This Week"),
                    const SizedBox(
                      height: 20,
                    ),
                    PopularWeek(screenSize: screenSize, data: data),
                    const SizedBox(
                      height: 20,
                    ),
                    const SectionHeader(word1: "Upcomming", word2: "Pictures"),
                    const SizedBox(
                      height: 20,
                    ),
                    UpcomingPictures(screenSize: screenSize, data: data),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
