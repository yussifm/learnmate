import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learnmate/Pages/Assignments/assignment.dart';
import 'package:learnmate/Pages/Home/home.dart';
import 'package:learnmate/Pages/Notes/Notes.dart';
import 'package:learnmate/Pages/TimeTable/Timetable.dart';
import 'package:learnmate/Pages/Todo/Todo.dart';
import 'package:learnmate/constants/ContainerDetails.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    VisualDensity.adaptivePlatformDensity;
    return MaterialApp(
      title: 'LearnMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/${ContainerDetails[0].name}': (context) => Todo(),
        '/${ContainerDetails[1].name}': (context) => Notes(),
        '/${ContainerDetails[2].name}': (context) => TimeTable(),
        '/${ContainerDetails[3].name}': (context) => Assignment(),
      },
    );
  }
}
