import 'package:hive_flutter/hive_flutter.dart';
part 'notemodel.g.dart';

@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String desc;
  @HiveField(2)
  final String date;

  Notemodel({
    required this.title,
    required this.desc,
    required this.date,
  });
}
