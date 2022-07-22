
class Post{
  int? id;
  int? userId;
  String? title;
  String? body;

  Post({this.id, this.userId, this.title, this.body});

  Post.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    body = json['body'];

  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['title'] = title;
    data['body'] = body;
    return data;
  }

}