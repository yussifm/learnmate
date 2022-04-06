import 'package:flutter/cupertino.dart';

class ContainerModel {
  final String name;
  final IconData iconModel;
  final int totalItems;
  final Color bgColor;
  final iconColor;

  ContainerModel(
      {required this.name,
      required this.bgColor,
      required this.iconModel,
      required this.totalItems,
      required this.iconColor});
}
