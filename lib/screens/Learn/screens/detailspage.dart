import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:project1/screens/Learn/data.dart';
import 'package:project1/screens/Learn/widets/custom_headers.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.animal});
  final AnimalInfo animal;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            animal.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: animal.color,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: animal.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: GestureDetector(
                child: Center(
                  child: Hero(
                    tag: animal.iconImage,
                    child: Image.asset(
                      animal.iconImage,
                      // height: 150,
                      // width: 150,
                    ),
                  ),
                ),
                onTap: () {
                  Get.back();
                },
              ),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Header(
                        text: animal.name,
                      ),
                      SubHeader(
                        text: animal.description,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Header(
                        text: "lifespan",
                      ),
                      SubHeader(
                        text: animal.lifespan,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Header(
                        text: "speed",
                      ),
                      SubHeader(
                        text: animal.speed,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.white,
                  child: animal.images.length != 0
                      ? Container(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          color: Colors.white,
                          width: double.infinity,
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Header(
                                  text: "Images",
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: animal.images.length,
                                    itemBuilder: (context, index) =>
                                        PictureCard(
                                      imageUrl: animal.images[index],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
