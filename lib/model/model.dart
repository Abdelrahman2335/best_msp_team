import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Courses {
  final String id;
  final String Image;
  final String description;
  final String platform;
  String? duration;

  Courses({
    required this.Image,
    required this.description,
    required this.platform,
    this.duration,
  }) : id = uuid.v6();
}
