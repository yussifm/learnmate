import 'package:flutter/material.dart';

import '../models/ContainerModel.dart';

List<ContainerModel> ContainerDetails = [
  ContainerModel(
      name: "To-Dos",
      iconModel: Icons.add_task_rounded,
      totalItems: 100,
      bgColor: Colors.pink.shade50,
      iconColor: Colors.pink.shade800),
  ContainerModel(
      name: "Notes",
      iconModel: Icons.description,
      totalItems: 5,
      bgColor: Colors.green.shade50,
      iconColor: Colors.green.shade800),
  ContainerModel(
      name: "TimeTable",
      iconModel: Icons.backup_table_rounded,
      totalItems: 5,
      bgColor: Colors.blue.shade50,
      iconColor: Colors.blue.shade800),
  ContainerModel(
      name: "Assignment",
      iconModel: Icons.assignment_rounded,
      totalItems: 5,
      bgColor: Colors.orange.shade50,
      iconColor: Colors.orange.shade800)
];
