import 'package:dtu_hackathon/Core/Models/course.dart';
import 'package:dtu_hackathon/Providers/courses.dart';
import 'package:dtu_hackathon/Providers/streaks.dart';
import 'package:dtu_hackathon/Providers/user_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoadMapAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;

  RoadMapAppBar({
    required this.child,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.orange,
      alignment: Alignment.center,
      child: child,
    );
  }
}
