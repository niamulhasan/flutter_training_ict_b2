// ignore_for_file: file_names

import 'package:family_routing/pages/MyViewProfile.dart';
import 'package:flutter/material.dart';

import '../components/MyProfileCard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MyProfileCard(
              naaam: "Shah Rukh Khan",
              chobi: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg/330px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
                width: 60.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("I am tapped (2nd card)");
              },
              child: MyProfileCard(
                naaam: "Aryan Khan",
                chobi: Image.network(
                  "https://m.media-amazon.com/images/M/MV5BOWU0MWVkNzAtNmViOC00YzgxLWJjMTQtYmZkMDYzMjJlNjgwXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_.jpg",
                  width: 60.0,
                ),
              ),
            ),
            MyProfileCard(
              naaam: "Gauri Khan",
              chobi: Image.network(
                "https://filmfare.wwmindia.com/content/2021/jun/suhanakhan11623230946.jpg",
                width: 60.0,
              ),
            ),
            MyProfileCard(
              naaam: "Suhana Khan",
              chobi: Image.network(
                "https://wikibio.in/wp-content/uploads/2017/12/suhana-khan-1280x720.jpg",
                width: 60.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
