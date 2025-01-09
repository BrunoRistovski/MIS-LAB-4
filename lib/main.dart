import 'package:flutter/material.dart';
import 'package:laboratory4/providers/calendar.dart';
import 'package:laboratory4/providers/exam_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExamProvider(),
      child: MaterialApp(
        title: "211137 - Exam schedules",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const CalendarScreen(),
      ),
    );
  }
}