import '../Screen/screens/s1/s1.dart';
import '../Screen/screens/s2/main.dart';
import '../Screen/screens/s3/s3_1.dart';

String data = "Business";
String site = "bbc";
List s_1=[s1(),s2(),s3_1()];
String api_list= "https://newsapi.org/v2/top-headlines?country=us&category=$data&apiKey=9745502d9b8c41ae8d42be19492b95b3";