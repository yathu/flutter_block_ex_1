import 'package:flutter_block_ex_1/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataService{
  final baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<Post>> getPosts() async{

    try{
      final uri = Uri.https(baseUrl, '/posts');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final posts = json.map((postJson) => Post.fromJson(postJson)).toList();
      return posts;
    }catch(e){
      throw e;
    }
  }
}
