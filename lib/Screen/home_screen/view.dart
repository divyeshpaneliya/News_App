import 'package:flutter/material.dart';
import 'package:liveap/Screen/home_screen/model.dart';

import '../../util/data.dart';
import 'jfilter.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 15,

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Category"),
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: "Sites",
            ),
          ],
          currentIndex: index,
          onTap: (value){
            setState(() {
              index=value;
            });
          },
        ),

        body:s_1[index],
      ),
    );
  }
}
