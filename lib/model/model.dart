import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Courses {
  final String id;
  final String Image;
  final String description;
  String? duration;

  Courses({required this.Image, required this.description, this.duration})
      : id = uuid.v6();
}
