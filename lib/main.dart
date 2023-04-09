import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'note_controller.dart';
import 'note.dart';
import 'note_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Notes App',
      home: NotesScreen(),
    );
  }
}
