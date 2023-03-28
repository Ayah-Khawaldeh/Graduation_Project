import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/profile.dart';
import 'package:project1/screens/settings.dart';
import 'package:alan_voice/alan_voice.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  _HomeLayoutState() {
    /// Init Alan Button with project key from Alan Studio
    AlanVoice.addButton(
        buttonAlign: 5,
        "47f528a095bd50046cb091ec8c2622f22e956eca572e1d8b807a3e2338fdd0dc/stage",
        bottomMargin: 100);

    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int currentIndex = 0;
  List<Widget> screens = [
    const home(),
    const profile(),
    const settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xFF9BB491),
          backgroundColor: myBackColor(),
          height: 55,
          index: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            CurvedNavigationBarItem(
                child: Icon(Icons.home, color: Colors.black)),
            CurvedNavigationBarItem(
                child: Icon(Icons.person, color: Colors.black)),
            CurvedNavigationBarItem(
                child: Icon(Icons.menu, color: Colors.black)),
          ]),
    );
  }

  Color myBackColor() {
    if (currentIndex == 0) {
      return const Color(0XFFced0cb);
    } else if (currentIndex == 1) {
      return const Color(0XFFced0cb);
    } else if (currentIndex == 2) {
      return const Color(0XFFced0cb);
    } else {
      return const Color(0XFFced0cb);
    }
  }
}
