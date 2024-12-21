import 'package:cloudoczwork/constants/app_typography.dart';
import 'package:flutter/material.dart';

class SavedCourseCard extends StatelessWidget {
  final String title;
  final String duration;
  final String lessons;
  final String enrolled;
  final String rating;
  final String price;
  final String image;

  const SavedCourseCard({
    Key? key,
    required this.title,
    required this.duration,
    required this.lessons,
    required this.rating,
    required this.price,
    required this.image,
    required this.enrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: const Icon(Icons.bookmark_border_outlined,
                      color: Colors.white),
                  onPressed: () {
                    // Handle favorite button press
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Easy .", style: AppTypography.outfitMedium),
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: AppTypography.outfitMedium,
                      ),
                      const Spacer(),
                      Text(
                        price,
                        style: AppTypography.outfitBold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: AppTypography.outfitMainTitle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          color: Colors.black54, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        duration,
                        style: AppTypography.outfitThin,
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.menu_book,
                          color: Colors.black54, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        lessons,
                        style: AppTypography.outfitThin,
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.person_2,
                          color: Colors.black54, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        enrolled,
                        style: AppTypography.outfitThin,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
