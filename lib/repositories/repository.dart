import 'package:user_task/core/constant.dart';
import 'package:user_task/model/post_model.dart';
import 'package:user_task/model/user_model.dart';
import 'package:user_task/services/api_manger.dart';
import 'package:user_task/services/response_api.dart';

class Repository {
  final ApiManger apiManger;

  Repository(this.apiManger);

  Future<ResponseApi<List<UserModel>>> getUsers() async {
    try {
      final obj = await apiManger.get(
        Constant.users,
        parse: (response) => UserModel.parseList(response.data),
      );
      return obj;
    } catch (error) {
      rethrow;
    }
  }

  Future<ResponseApi<List<PostModel>>> getPosts() async {
    try {
      final obj = await apiManger.get(
        Constant.posts,
        parse: (response) => PostModel.parseList(response.data),
      );
      return obj;
    } catch (error) {
      rethrow;
    }
  }
}
