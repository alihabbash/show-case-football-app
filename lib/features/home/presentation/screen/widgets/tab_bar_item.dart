import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 16.h,
      ),
      child: const Text('Upcoming games'),
    );
  }
}
