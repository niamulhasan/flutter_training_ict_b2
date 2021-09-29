import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Icon(
            Icons.search,
            color: Color(0xff96A7AF),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            style: BorderStyle.none,
            color: Colors.transparent,
            width: 0.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            style: BorderStyle.none,
            color: Colors.transparent,
            width: 0.0,
          ),
        ),
        filled: true,
        fillColor: Color(0xff1A282F),
        labelText: 'Search',
        labelStyle: TextStyle(
          color: Color(0xff96A7AF),
        ),
      ),
    );
  }
}
