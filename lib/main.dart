import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Student> allStudent = List.generate(
      500,
      (index) => Student(index + 1, "student name : ${index + 1}",
          "student surname ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView(
            children: allStudent
                .map(
                  (Student student) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(student.id.toString()),
                      ),
                      title: Text(student.name),
                      subtitle: Text(student.surname),
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
