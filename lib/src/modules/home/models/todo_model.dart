import 'package:flutter/material.dart';

class TodoModel {
  final UniqueKey id = UniqueKey();
  final String title;
  bool isDone;

  TodoModel({
    required this.title,
    this.isDone = false,
  });
}
