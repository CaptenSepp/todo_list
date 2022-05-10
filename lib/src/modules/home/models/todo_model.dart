import 'package:flutter/material.dart';

class TodoModel {
  final UniqueKey id = UniqueKey();
  final String title;
  final String? description;
  bool isDone;

  TodoModel({
    required this.title,
    this.description,
    this.isDone = false,
  });
}
