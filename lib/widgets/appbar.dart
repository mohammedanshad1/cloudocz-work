import 'package:cloudoczwork/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAPPBAR extends StatefulWidget {
  const CustomAPPBAR({super.key});

  @override
  State<CustomAPPBAR> createState() => _CustomAPPBARState();
}

class _CustomAPPBARState extends State<CustomAPPBAR> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180,
      pinned: true,
      backgroundColor:
          Colors.transparent, // Set background color to transparent
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(30), // Adjust the radius as needed
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                HexColor('2E2461'),
                HexColor('352971'),
                HexColor('3D2481'),
                HexColor('3F3089'),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.orange, // Logo background color
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.apps,
                            size: 16,
                            color: Colors.white, // Logo icon color
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text("Learnandexcel",
                            style: AppTypography.outfitBlack
                                .copyWith(color: Colors.white, fontSize: 17)),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.white24, // Circular background color
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              color: Colors.orange, // Notification dot color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Courses',
                    hintStyle: TextStyle(color: HexColor('D7D7D7')),
                    filled: true, // Enable background color
                    fillColor: Colors.white, // Set background color to white
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Set rounded corners for text field
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: HexColor('D7D7D7'),
                    ), // Add leading search icon
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
