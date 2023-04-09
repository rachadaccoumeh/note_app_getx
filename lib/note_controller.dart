import 'package:get/get.dart';
import 'note.dart';

class NoteController extends GetxController {
  final notes = <Note>[].obs;

  void add(Note note) {
    notes.add(note);
  }

  void remove(Note note) {
    notes.remove(note);
  }
}
