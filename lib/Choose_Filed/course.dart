class courseModel{
  String? title;
  String? image;
  List<subiect> subjects;
  courseModel({required this.subjects,required this.title, this.image});
}
class subiect{
  String? image1;
  String? image2;
  String? text;
  subiect({required this.image1,required this.image2,required this.text});
}