import 'package:flutter/material.dart';

class MyContactItem extends StatelessWidget {
  const MyContactItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200"),
            backgroundColor: Colors.cyanAccent,
            radius: 40.0,
          ),
          title: const Text(
            "Alice Smith",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            "Great, I will have a look",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "4:20 PM",
                style: TextStyle(color: Colors.white),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff3ED598),
                radius: 10.0,
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
