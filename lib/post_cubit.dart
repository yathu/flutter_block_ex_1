import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_ex_1/data_service.dart';
import 'package:flutter_block_ex_1/post.dart';

class PostCubit extends Cubit<List<Post>>{
  PostCubit() : super([]);

  final dataService = DataService();

  void getPost() async=> emit( await dataService.getPosts());
}