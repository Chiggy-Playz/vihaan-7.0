import 'package:dtu_hackathon/Core/Models/user_info.dart';
import 'package:dtu_hackathon/Pages/HomePage.dart';
import 'package:dtu_hackathon/Providers/courses.dart';
import 'package:dtu_hackathon/Providers/streaks.dart';
import 'package:dtu_hackathon/Providers/user_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserInfoProvider()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (context) => StreaksProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CoursesProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
