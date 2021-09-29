import 'package:flutter/material.dart';

class MySearchButton extends StatelessWidget {
  const MySearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff40DF9F),
            // fixedSize: const Size(200.0, 100.0),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
            child: Icon(Icons.add_road_outlined),
          )),
    );
  }
}
