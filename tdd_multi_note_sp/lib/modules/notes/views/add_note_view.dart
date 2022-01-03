import 'package:flutter/material.dart';
import 'package:tdd_multi_note_sp/modules/notes/controllers/controller.dart';

class AddNoteView extends StatelessWidget {
  AddNoteView({Key? key}) : super(key: key);

  TextEditingController noteEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Note"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Add your awsome note:"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: noteEditingController,
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Your Note..."),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () async {
                  bool isSaved = await NotesController()
                      .addNote(noteEditingController.text);

                  print("${isSaved}");

                  final snackBar = SnackBar(
                    content:
                        Text('${isSaved ? "Note Saved" : "Note didn't Saved"}'),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Add Note"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
