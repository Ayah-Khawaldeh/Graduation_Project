import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'Learn/screens/detailspage.dart';
import 'Learn/widets/cards.dart';
import 'Learn/screens/detailspage.dart';

import 'Learn/data.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<AnimalInfo> animals = [];

  @override
  void initState() {
    animals = animallist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.filter_list,
            color: Colors.amber,
            size: 40,
          ),
          actions: <Widget>[
            Image(
              image: AssetImage("assets/learn/deer.png"),
            ),
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          itemCount: animals.length,
          itemBuilder: (context, index) => Cards(
            animal: animals[index],
            onPressed: () {
              //  Get.testMode = true;
              // Get.to(
              //   DetailsPage(
              //     animal: animals[index],
              //   ),
              // );
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(animal: animals[index])),
              );
            },
          ),
        ),
      ),
    );
  }
}
