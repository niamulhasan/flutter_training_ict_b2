import 'package:flutter/material.dart';
import 'package:tdd_multi_note_sp/modules/notes/controllers/controller.dart';
import 'package:tdd_multi_note_sp/modules/notes/views/add_note_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddNoteView()),
            );
          },
          child: Icon(Icons.add)),
      appBar: AppBar(
        title: Text("My Awsome Note App"),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Refresh"))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FutureBuilder(
            future: NotesController().getNotes(),
            builder: (BuildContext context, AsyncSnapshot<List<String>?> sn) {
              if (sn.hasData) {
                List<String>? notes = sn.data;
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: notes != null ? notes.length : 0,
                  itemBuilder: (BuildContext context, int i) => Card(
                    color: Colors.redAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${notes![i]}",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                );
              }
              if (sn.hasError) {
                return Center(
                  child: Text("Something went wrong!"),
                );
              }
              return Center(
                child: Text("${sn.hasData}"),
              );
            }),
      ),
    );
  }
}
