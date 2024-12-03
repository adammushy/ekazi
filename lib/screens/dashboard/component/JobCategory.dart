// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ekazi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class JobCategories extends StatelessWidget {
  final List<Map<String, dynamic>> jobCategories = [
    {'name': 'Accountants', 'count': 8},
    {'name': 'Technology', 'count': 15},
    {'name': 'Marketing', 'count': 10},
    {'name': 'Human Resources', 'count': 5},
    {'name': 'Design', 'count': 12},
  ];

  JobCategories({super.key});

  Color getRandomColor() {
    // Replace with your color generation logic
    return Colors.blueAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Job Categories',
                textScaler: TextScaler.noScaling,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                textScaler: TextScaler.noScaling,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  // color: colorApp,
                  color: Colors.blue,

                  // decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            // spacing: 8,
            children: jobCategories.map((category) {
              String categoryName =
                  '${category['name']} (${category['count']})';
              return Padding(
                padding: const EdgeInsets.only(right: 11.0, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: getRandomColor().withOpacity(0.1),
                  ),
                  height: 30,
                  width: 120, // Adjust width as needed for consistent sizing
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        categoryName,
                        style: TextStyle(
                          color: colorApp,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';

// Widget jobCategory() {
//   return  Container(
//     height: 100,
//     width: 100,
//     color: Colors.red,
//     // child: ,
//   );
// }
