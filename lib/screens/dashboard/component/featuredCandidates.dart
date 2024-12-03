import 'package:flutter/material.dart';

class FeaturedCandidates extends StatelessWidget {
  const FeaturedCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for candidates
    final List<Map<String, String?>> candidates = [
      {
        'image': 'assets/images/profile.jpg',
        'name': 'John Doe',
        'position': 'Software Engineer',
        'location': 'Mwanza, TZ',
        'status': 'Available for job vacancies',
      },
      {
        'image': 'assets/images/profile.jpg',
        'name': 'John Smith',
        'position': 'Data Analyst',
        'location': 'Dar es Salaam, TZ',
        'status': 'Available for job vacancies',
      },
      {
        'image': 'assets/images/profile.jpg',
        'name': 'Alice Johnson',
        'position': 'UI/UX Designer',
        'location': 'Kilimanjaro, TZ',
        'status': null, // No status
      },
      {
        'image': 'assets/images/profile.jpg',
        'name': 'Michael Brown',
        'position': 'Product Manager',
        'location': 'Arusha, Tz',
        'status': null, // No status
      },
    ];

    // Show only up to 3 candidates
    final List<Map<String, String?>> visibleCandidates =
        candidates.length > 3 ? candidates.sublist(0, 3) : candidates;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title with 'View All'
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Candidates',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to full candidate list
                  print('View All tapped');
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Candidate cards
        Column(
          children: List.generate(
            visibleCandidates.length,
            (index) {
              final candidate = visibleCandidates[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     blurRadius: 10,
                    //     offset: const Offset(0, 5),
                    //   ),
                    // ],
                  ),
                  child: Row(
                    children: [
                      // Candidate picture
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                candidate['image']!), // Candidate picture
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Candidate details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            candidate['name']!, // Candidate name
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            candidate['position']!, // Candidate position
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            candidate['location']!, // Candidate location
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // Status (if available)
                          if (candidate['status'] != null)
                            Text(
                              candidate['status']!, // Candidate status
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.orange,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}




// class FeaturedCandidates extends StatelessWidget {
//   const FeaturedCandidates({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'Featured Candidates',
//                 textScaler: TextScaler.noScaling,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'View All',
//                 textScaler: TextScaler.noScaling,
//                 style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                     color: colorApp,
//                     // decoration: TextDecoration.underline,
                    
//                     ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 15),
//       ],
//     );
//   }
// }

