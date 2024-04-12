import 'package:dtu_hackathon/Core/Models/user_info.dart';
import 'package:dtu_hackathon/Providers/courses.dart';
import 'package:dtu_hackathon/Providers/streaks.dart';
import 'package:dtu_hackathon/Providers/user_info.dart';
import 'package:dtu_hackathon/Widget/roadmap_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer3<CoursesProvider, UserInfoProvider, StreaksProvider>(
      builder:
          (context, coursesProvider, userInfoProvider, streaksProvider, child) {
        return Scaffold(
          appBar: getAppBar(coursesProvider, userInfoProvider, streaksProvider),
        );
      },
    );
  }

  PreferredSizeWidget? getAppBar(CoursesProvider coursesProvider,
      UserInfoProvider userInfoProvider, StreaksProvider streaksProvider) {
    var currentSelectedCourse = coursesProvider.getCurrentSelectedCourse();

    Widget leading;
    if (currentSelectedCourse != null) {
      leading = SvgPicture.asset(currentSelectedCourse.icon);
    } else {
      leading = const Icon(Icons.add_box_outlined);
    }

    return AppBar(
      leading: leading,
      title: Row(
        children: [],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      actions: null,
    );
  }
}
