import 'package:ekazi/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class RecentJobs extends StatelessWidget {
  const RecentJobs({super.key});

  // Static list of job details
  final List<Map<String, String>> jobs = const [
    {
      'title': 'Software Engineer',
      'company': 'Exact Manpower',
      'location': 'Dar es Salaam',
      'type': 'Full-Time',
      'deadline': 'Dec 10, 2024',
      'image': 'assets/images/exact.png', // Example image path
    },
    {
      'title': 'Marketing Specialist',
      'company': 'Creative Agency',
      'location': 'Mwanza',
      'type': 'Full time',
      'deadline': 'Dec 20, 2024',
      'image': 'assets/images/nmb.png',
    },
    {
      'title': 'Graphic Designer',
      'company': 'US Embassy',
      'location': 'Dar es Salaam',
      'type': 'Remote',
      'deadline': 'Dec 15, 2024',
      'image': 'assets/images/usembassy.jpg',
    },
    {
      'title': 'Data Analyst',
      'company': 'FinTech Inc.',
      'location': 'Boston, MA',
      'type': 'Remote',
      'deadline': 'Dec 18, 2024',
      'image': 'assets/images/job.jpg',
    },
    {
      'title': 'HR Manager',
      'company': 'Global Enterprises',
      'location': 'Chicago, IL',
      'type': 'Full-Time',
      'deadline': 'Dec 22, 2024',
      'image': 'assets/images/job.jpg',
    },
  ];

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
                'Recent Jobs',
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
        10.height,
        Container(
          height: 240,
          child: ListView.builder(
            itemCount: jobs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final job = jobs[index];
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: colorApp.withOpacity(0.1),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(job['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              job['title']!,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            2.height,
                            Text(
                              job['company']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: colorApp.withOpacity(0.9),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            2.height,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  job['location']!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: colorApp.withOpacity(0.9),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                                         Text(
                                  '${job['type']}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: colorApp.withOpacity(0.7),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            2.height,
                            Text(
                              'Deadline: ${job['deadline']}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.orange,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
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
