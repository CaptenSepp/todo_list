import 'package:flutter/material.dart';

class TodoModel {
  final UniqueKey id = UniqueKey();
  //TODO final cant be chaned after initializing but we want that the user can change the title and description if needed
  final String title;
  final String? description;
  final DateTime createdDate;
  bool isDone;

  TodoModel({
    required this.title,
    required this.createdDate,
    //TODO i wanted to add DateTime that is given automatic to each TodoModel
    this.description,
    this.isDone = false,
  });
}
