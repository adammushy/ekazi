import 'package:ekazi/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            // color: Colors.grey[200],

            color: colorApp.withOpacity(0.1)),
        child: Row(
          children: [
            Icon(Icons.search,
                color: colorApp, size: 24.sp), // Responsive icon size
            SizedBox(width: 10.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for jobs...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 12.sp,
                    color: colorApp.withOpacity(0.5),
                  ), // Responsive font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
