import 'package:cloudoczwork/widgets/ongoing_course.dart';
import 'package:cloudoczwork/widgets/saved_course_card.dart';
import 'package:cloudoczwork/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseListingPage extends StatelessWidget {
  CourseListingPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> ongoingCourses = [
    {
      'title': 'Basics of UI/UX Design',
      'instructor': 'By Jamvel Miles',
      'description':
          'Learn how to design user interface from design to prototype in Figma.',
      'progress': 0.6,
      'image': 'assets/icons/figma_5968705.png',
      'color': '284B9D',
    },
    {
      'title': 'Advanced Photoshop Course',
      'instructor': 'By Sarah Johnson',
      'description':
          'Master advanced photo editing and manipulation techniques.',
      'progress': 0.3,
      'image': 'assets/icons/photoshop.png',
      'color': '7440CF',
    },
  ];

  final List<Map<String, String>> savedCourses = [
    {
      'title': 'Basics of UI/UX Design Workflow',
      'duration': '17h 53m',
      'lessons': '14 Lessons',
      'rating': '4.7 (25)',
      'price': '\$55',
      'enrolled': "Enrolled",
      'image': 'assets/icons/Untitled design (1).png',
    },
    {
      'title': 'Advanced UX Research',
      'duration': '15h 30m',
      'lessons': '12 Lessons',
      'rating': '4.8 (32)',
      'price': '\$65',
      'enrolled': "Enrolled",
      'image': 'assets/icons/Untitled design (1).png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FCFAFF'),
      body: CustomScrollView(
        slivers: [
          CustomAPPBAR(),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ongoing Courses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor('B6B4B7'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ongoingCourses.length,
                    itemBuilder: (context, index) {
                      final course = ongoingCourses[index];
                      return OngoingCourseCard(
                        title: course['title']!,
                        instructor: course['instructor']!,
                        description: course['description']!,
                        progress: course['progress'],
                        image: course['image']!,
                        color: course['color']!,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saved Courses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor('B6B4B7'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: savedCourses.length,
                    itemBuilder: (context, index) {
                      final course = savedCourses[index];
                      return SavedCourseCard(
                        title: course['title']!,
                        duration: course['duration']!,
                        lessons: course['lessons']!,
                        rating: course['rating']!,
                        price: course['price']!,
                        image: course['image']!,
                        enrolled: course['enrolled']!,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
