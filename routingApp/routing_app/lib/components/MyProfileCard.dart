import 'package:flutter/material.dart';

class MyProfileCard extends StatelessWidget {
  const MyProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/quote.png",
                      width: 36.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        "Really enjoyed the course. I felt like I was getting what you had advertised online and much more!",
                        style: TextStyle(
                            color: Color(0xff6E798C), fontFamily: "Open Sans"),
                      ),
                    ),
                    Text(
                      "Fionn Norris",
                      style: TextStyle(
                          fontFamily: "DMSerifDisplay",
                          fontSize: 25.0,
                          color: Color(0xff081F32)),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: 80.0,
                  height: 130.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://i.pravatar.cc/300")),
                      borderRadius: BorderRadius.all(
                        Radius.circular(90.0),
                      ),
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
