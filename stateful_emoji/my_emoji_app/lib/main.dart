import 'package:flutter/material.dart';

void main() => runApp(MyEmojiApp());

class MyEmojiApp extends StatefulWidget {
  @override
  State<MyEmojiApp> createState() => _MyEmojiAppState();
}

class _MyEmojiAppState extends State<MyEmojiApp> {
  List<String> emojis = ["✊", "👍", "❤"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Emoji App'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: emojis.length,
                    itemBuilder: (context, boo) => Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          emojis[boo],
                          style: TextStyle(fontSize: 60.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              emojis.insert(0, "✊");
                            });
                          },
                          child: MyFeastBtn(),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              emojis.insert(0, "👍");
                            });
                          },
                          child: MyLikeBtn(),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              emojis.insert(0, "❤");
                            });
                          },
                          child: MyHeartBtn(),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeastBtn extends StatelessWidget {
  const MyFeastBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        radius: 60.0,
        child: Text(
          "✊",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}

class MyLikeBtn extends StatelessWidget {
  const MyLikeBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60.0,
      child: Text(
        "👍",
        style: TextStyle(fontSize: 50.0),
      ),
    );
  }
}

class MyHeartBtn extends StatelessWidget {
  const MyHeartBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60.0,
      child: Text(
        "❤",
        style: TextStyle(fontSize: 50.0),
      ),
    );
  }
}
