import 'package:flutter/material.dart';

class MySearchButton extends StatelessWidget {
  const MySearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xff40DF9F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            // fixedSize: const Size(200.0, 100.0),
            ),
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
