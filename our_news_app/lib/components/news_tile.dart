import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  final List? data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 120.0,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "http://localhost:1337${data![index]["attributes"]["image"]["data"]["attributes"]["url"]}"),
              )),
        ),
        Text(
          "${data![index]["attributes"]["title"]}",
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          "${(data![index]["attributes"]["details"]).substring(0, 20)}",
        ),
        Row(
          children: [
            Expanded(
              child: Text("${data![index]["attributes"]["publishedAt"]}"),
            ),
            Expanded(child: Text("${data![index]["attributes"]["createdAt"]}"))
          ],
        )
      ],
    );
  }
}
