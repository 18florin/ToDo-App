import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import './models/task_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String data = 'Mihai';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListScreen(),
      ),
    );
  }
}
