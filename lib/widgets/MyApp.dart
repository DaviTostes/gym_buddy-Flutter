import 'package:flutter/material.dart';
import 'package:gym_buddy/widgets/HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gym Buddy',
      home: HomePage(),
    );
  }
}
