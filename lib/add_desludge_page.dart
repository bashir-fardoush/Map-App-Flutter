import 'package:camp_map/post.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AddDesludgePage extends StatefulWidget {
  const AddDesludgePage({Key? key}) : super(key: key);

  @override
  State<AddDesludgePage> createState() => _AddDesludgePageState();
}

class _AddDesludgePageState extends State<AddDesludgePage> {
  Post post = Post();
  void getHttp()  async{
    try{
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts/1");
     // print(response);
      // print(response.data);
       Post localPost = Post.fromJson(response.data);
       print(localPost.body);

       setState(()=>{
         post = localPost
       });

    }catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    getHttp();
    return Container(
      color: Colors.blue.shade300,
        child: Column(
          children: <Widget>[
            const Text("Add sludge Page"),
            Text("Title: ${post.title ??''}"),
            Text("Post: ${post.body??''}"),
          ],
        ),

    );
  }
}
