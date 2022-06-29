import 'package:flutter/material.dart';

class s1_2 extends StatefulWidget {
  const s1_2({Key? key}) : super(key: key);

  @override
  _s1_2State createState() => _s1_2State();
}

class _s1_2State extends State<s1_2> {
  @override
  Widget build(BuildContext context) {
    dynamic d1 = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                child: Image.network(d1.urlimg)),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 5,left: 5,right: 5),
                margin: EdgeInsets.only(top: 180),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Text("${d1.tital}",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 3,
                    ),
                    Text("${d1.contant}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
