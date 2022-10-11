import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_task/providers/state.dart';
import 'package:user_task/model/post_model.dart';
import 'package:user_task/model/user_model.dart';
import 'package:user_task/services/response_api.dart';

final userDataProvider =
    FutureProvider<ResponseApi<List<UserModel>>>((ref) async {
  return ref.read(apiProvider).getUsers();
});

final postDataProvider =
    FutureProvider<ResponseApi<List<PostModel>>>((ref) async {
  return ref.read(apiProvider).getPosts();
});
