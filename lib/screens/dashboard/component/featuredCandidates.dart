import 'package:ekazi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FeaturedCandidates extends StatelessWidget {
  const FeaturedCandidates({super.key});

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
              const Text(
                'Featured Candidates',
                textScaler: TextScaler.noScaling,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                textScaler: TextScaler.noScaling,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: colorApp,
                    // decoration: TextDecoration.underline,
                    
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
