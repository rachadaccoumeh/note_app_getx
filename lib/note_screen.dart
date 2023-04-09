import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'note_controller.dart';
import 'note.dart';
import 'note_editor.dart';

class NotesScreen extends StatelessWidget {
  final noteController = Get.find<NoteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: noteController.notes.length,
          itemBuilder: (context, index) {
            final note = noteController.notes[index];
            return ListTile(
              title: Text(note.title),
              subtitle: Text(note.body),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  noteController.remove(note);
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(NoteEditor())?.then((value) {
            if (value != null) {
              noteController.add(value);
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
