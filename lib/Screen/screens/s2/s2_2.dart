import 'package:flutter/material.dart';
import 'package:liveap/util/data.dart';

import '../../home_screen/jfilter.dart';
import '../../home_screen/model.dart';
class s2_2 extends StatefulWidget {
  const s2_2({Key? key}) : super(key: key);

  @override
  _s2_2State createState() => _s2_2State();
}

class _s2_2State extends State<s2_2> {
  @override
  Widget build(BuildContext context) {

    api_list="https://newsapi.org/v2/top-headlines?country=us&category=$data&apiKey=9745502d9b8c41ae8d42be19492b95b3";

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,title: Text("$data"),centerTitle: true),
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
                          return Card(
                            margin: EdgeInsets.all(5),
                            elevation: 4,
                            child: ListTile(
                              title: Text("${n1!.artical![index].tital}"),
                              subtitle: Text(
                                "${n1.artical![index].contant}",
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                                softWrap: false,
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
