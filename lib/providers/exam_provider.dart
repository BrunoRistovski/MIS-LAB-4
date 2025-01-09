import 'package:flutter/foundation.dart';
import 'package:laboratory4/models/exam.dart';

class ExamProvider with ChangeNotifier {
  final List<Exam> _events = [];

  List<Exam> get events => _events;

  void addEvent(Exam event) {
    _events.add(event);
    notifyListeners();
  }

  List<Exam> getEventsForDay(DateTime day) {
    List<Exam> events = _events.where((event) =>
              event.date.year == day.year &&
                  event.date.month == day.month &&
                  event.date.day == day.day).toList();

    return events;
  }
}