import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel extends HiveObject{
  @HiveField(0)
  final UniqueKey id = UniqueKey();

  //TODO final cant be chaned after initializing but we want that the user can change the title and description if needed
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
    //TODO i wanted to add DateTime that is given automatic to each TodoModel
    this.description,
    this.isDone = false,
  });
}
