class GroubModels {
  final String id;
  final String name;
  final String teacherId;
  final String centerId;
  final String educationStage;
  final String dateTime;
  final List<String> studentFollowers;
  GroubModels({
    required this.id,
    required this.name,
    required this.teacherId,
    required this.centerId,
    required this.educationStage,
    required this.dateTime,
    required this.studentFollowers,
  });
}
