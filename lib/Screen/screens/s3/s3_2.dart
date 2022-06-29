import 'package:flutter/material.dart';
import 'package:liveap/util/data.dart';

import '../../home_screen/jfilter.dart';
import '../../home_screen/model.dart';

class s3_2 extends StatefulWidget {
  const s3_2({Key? key}) : super(key: key);

  @override
  _s3_2State createState() => _s3_2State();
}

class _s3_2State extends State<s3_2> {
  @override


  Widget build(BuildContext context) {
  slink();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,title: Text("${site}"),centerTitle: true,),
        body:  Container(
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
  void slink(){
    String d2=ModalRoute.of(context)!.settings.arguments as String;
    setState((){
      site=d2;
      api_list="https://newsapi.org/v2/everything?domains=$site.com&apiKey=9745502d9b8c41ae8d42be19492b95b3";
    });

  }
}
