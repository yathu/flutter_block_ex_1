import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_ex_1/post.dart';
import 'package:flutter_block_ex_1/post_cubit.dart';

class PostView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('posts'),
      ),
      body: BlocBuilder<PostCubit,List<Post>>(builder: (context,posts){

        if(posts.isEmpty){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text(posts[index].title),
            ),
          );
        });
        },),
    );
  }

}