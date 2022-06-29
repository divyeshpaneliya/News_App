
class jdfilter{
  List<dynamic>? artical=[];

  jdfilter({this.artical});

  jdfilter dfilter(Map map){
    List<dynamic> articald=[];
    articald=map['articles'].map((e)=>articalfilter().articaldata(e)).toList();
    return jdfilter(artical:articald);
  }
}
class articalfilter{
  String? auther,tital,urlimg,contant;
  source? so1;

  articalfilter({this.auther, this.tital, this.urlimg, this.contant,this.so1});

  articalfilter articaldata(Map map){
       String? a1=map['author'];
       String? t1=map['title'];
       String? ui=map['urlToImage'];
       String? c1=map['content'];
       source? s1=source().sourcefilter(map['source']);
       return articalfilter(auther: a1,tital: t1,urlimg: ui,contant: c1,so1: s1);

     }
}
class source {
 String? id,name;

 source({this.id, this.name});

  source sourcefilter(Map map){

    String? i1=map['id'];
    String? n1=map['name'];

    return source(id:i1, name:n1);

  }
}