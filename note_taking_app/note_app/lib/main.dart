import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyNoteHome(),
    );
  }
}

class MyNoteHome extends StatefulWidget {
  const MyNoteHome({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNoteHome> createState() => _MyNoteHomeState();
}

class _MyNoteHomeState extends State<MyNoteHome> {
  List<Map> myNotes = [
    {
      "title": "Example note title one",
      "text": "Example text body of the example note one"
    },
    {
      "title": "Example note title two",
      "text": "Example text body of the example note two"
    },
    {
      "title": "Example note title three",
      "text": "Example text body of the example note three"
    },
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Add your Note"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Title"),
                    TextField(
                      controller: titleController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text("Text"),
                    ),
                    TextField(
                      controller: textControler,
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String noteTitle = titleController.text.trim();
                      String noteText = textControler.text.trim();

                      Map newData = {
                        "title": "$noteTitle",
                        "text": "$noteText"
                      };
                      myNotes.add(newData);

                      print(myNotes);

                      print(titleController.text);
                      print(textControler.text);
                    });
                  },
                  child: Text("Add"),
                )
              ],
            ),
          ),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: myNotes.length,
              itemBuilder: (context, index) => Card(
                color: Colors.redAccent.withOpacity(0.5),
                child: Padding(
                  padding: EdgeInsets.all(
                    12.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        myNotes[index]["title"],
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        myNotes[index]["text"],
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
