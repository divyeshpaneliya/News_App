import 'package:flutter/material.dart';
import 'package:liveap/util/data.dart';

import '../../home_screen/jfilter.dart';
import '../../home_screen/model.dart';
class s1 extends StatefulWidget {
  const s1({Key? key}) : super(key: key);

  @override
  _s1State createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  void initState(){
    super.initState();
    data="Business";
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder<jdfilter>(
                  future: apilink().getapi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text("${snapshot.error}"));
                    } else if (snapshot.hasData) {
                      jdfilter? n1 = snapshot.data;
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, 's1_2',arguments: n1!.artical![index]);
                            },
                            child: Card(
                              margin: EdgeInsets.all(5),
                              elevation: 4,
                              child: ListTile(
                                title: Text("${n1!.artical![index].tital}"),
                                subtitle: Text(
                                  "${n1.artical![index].contant}",
                                  overflow: TextOverflow.fade,
                                  maxLines: 2,

                                ),
                                trailing: Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          "${n1.artical![index].urlimg}",
                                          fit: BoxFit.cover,
                                        ))),
                              ),
                            ),
                          );
                        },
                        itemCount: n1!.artical!.length,
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
