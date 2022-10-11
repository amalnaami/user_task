import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_task/model/post_model.dart';
import 'package:user_task/model/user_model.dart';
import 'package:user_task/screens/users_view/widgets/user_card_content.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user, required this.postsData})
      : super(key: key);
  final UserModel user;
  final List<PostModel> postsData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed('detail', extra: {'user': user}),
      child: UserCardContent(
        user: user,
        postsData: postsData,
      ),
    );
  }
}
