import 'package:ekazi/components/appbar.dart';
import 'package:ekazi/screens/dashboard/component/AddSlider.dart';
import 'package:ekazi/screens/dashboard/component/JobCategory.dart';
import 'package:ekazi/screens/dashboard/component/featuredCandidates.dart';
import 'package:ekazi/screens/dashboard/component/postedJobs.dart';
import 'package:ekazi/screens/dashboard/component/search.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            10.height,
            const SearchInput(),
            10.height,
            addSlider().paddingSymmetric(horizontal: 16),
            20.height,
            JobCategories(),
            20.height,
            const RecentJobs(),
            20.height,
            FeaturedCandidates(),
          ],
        ),
      )),
    );
  }
}
