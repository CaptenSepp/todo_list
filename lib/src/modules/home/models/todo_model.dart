import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel extends HiveObject {
  @HiveField(0)
  final id = UniqueKey().toString();

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String? description;

  @HiveField(3)
  final DateTime createdDate;

  @HiveField(4)
  bool isDone;

  TodoModel({
    required this.title,
    required this.createdDate,
    this.description,
    this.isDone = false,
  });
}
