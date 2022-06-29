import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/data.dart';

class s2 extends StatefulWidget {
  const s2({Key? key}) : super(key: key);

  @override
  _s2State createState() => _s2State();
}

class _s2State extends State<s2> {
  @override

  List category=["Business",
    "Entertainement",
    "Health",
    "Scince",
    "Sports",
    "Technology"];
  List i1=[Icons.business,
    Icons.smart_display,
    Icons.medical_services,
    Icons.science,
    Icons.sports_volleyball,
    Icons.settings];

  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: category.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return
            InkWell(
            onTap: (){
              setState(() {
              data=category[index];
              Navigator.pushNamed(context, 's2_2');
              });
            },
            child: Card(
              elevation: 5,

              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(i1[index]),
                    Text("${category[index]}"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
