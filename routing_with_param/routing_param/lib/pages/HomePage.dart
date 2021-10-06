import 'package:flutter/material.dart';
import 'package:routing_param/pages/ViewPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Page',
                style: TextStyle(fontSize: 30.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ViewPage(text: "Title of the first page"),
                    ),
                  );
                },
                child: Text("First Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ViewPage(text: "Title of the second page"),
                    ),
                  );
                },
                child: Text("Second Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ViewPage(text: "Title of the third page"),
                    ),
                  );
                },
                child: Text("Third Page"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
