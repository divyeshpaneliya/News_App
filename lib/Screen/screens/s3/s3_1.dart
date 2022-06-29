import 'package:flutter/material.dart';

import '../../../util/constant/size.dart';

class s3_1 extends StatefulWidget {
  const s3_1({Key? key}) : super(key: key);

  @override
  _s3_1State createState() => _s3_1State();
}

List site_name = ["BBC News", "VICE News"];
List site = ["BBC", "VICE"];
List site_img = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj4NfaaO1ExEC6sAhxe3ukMTRWmxVQDfOYNg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4GJMlUbApd2YlKr29ezMsA2voq2kqx3B_Ug&usqp=CAU",
];

class _s3_1State extends State<s3_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount:site_name.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 's3_2',arguments: site[index]);
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("${site_img[index]}",fit: BoxFit.cover,)),
                        ),
                        H(3),
                        Text("${site_name[index]}"),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
