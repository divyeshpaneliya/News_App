import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:liveap/Screen/home_screen/jfilter.dart';
import 'package:liveap/util/data.dart';

class apilink {
  String lapi = "https://newsapi.org/v2/top-headlines?country=us&category=$data&apiKey=9745502d9b8c41ae8d42be19492b95b3";
  Future<jdfilter> getapi()async{
    Uri uri=Uri.parse(lapi);
    var res=await http.get(uri);
    var jsondata=jsonDecode(res.body);
    return jdfilter().dfilter(jsondata);
  }
}
