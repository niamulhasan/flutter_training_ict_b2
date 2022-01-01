import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_multi_note_sp/core/config.dart';
import 'package:tdd_multi_note_sp/interfaces/notes.dart';

class NotesController implements AbsNotesController {
  @override
  Future<bool> addNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? currentNotes = handle.getStringList(Config.notes_key);
    currentNotes!.add(note);
    return await handle.setStringList(Config.notes_key, currentNotes);
  }

  @override
  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return handle.getStringList(Config.notes_key);
  }

  @override
  Future<bool> deleteNote(int index) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? notes = handle.getStringList(Config.notes_key);
    if (notes != null) {
      notes.removeAt(index);
    }
    return await handle.setStringList(Config.notes_key, notes!);
  }

  @override
  Future<bool> updateNote(String note, int index) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? notes = handle.getStringList(Config.notes_key);
    if (notes != null) {
      notes[index] = note;
    }
    return await handle.setStringList(Config.notes_key, notes!);
  }
}
