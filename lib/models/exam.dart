import 'package:latlong2/latlong.dart';

class Exam {
  final String id;
  final String title;
  final DateTime date;
  final LatLng coordinates;
  final String location;

  Exam({
    required this.id,
    required this.title,
    required this.date,
    required this.coordinates,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'date': date.toIso8601String(),
      'latitude': coordinates.latitude,
      'longitude': coordinates.longitude,
      'location': location,
    };
  }

  factory Exam.fromMap(Map<String, dynamic> map) {
    return Exam(
      id: map['id'],
      title: map['title'],
      date: DateTime.parse(map['date']),
      coordinates: LatLng(map['latitude'], map['longitude']),
      location: map['location'],
    );
  }

}