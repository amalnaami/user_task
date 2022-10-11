import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:user_task/core/theme/app_text_theme/text_theme.dart';
import 'package:user_task/model/post_model.dart';
import 'package:user_task/model/user_model.dart';

import '../../../core/assets.dart';

class UserCardContent extends StatelessWidget {
  final UserModel user;
  final List<PostModel> postsData;

  const UserCardContent({Key? key, required this.user, required this.postsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: _verticalPadding),
      padding: EdgeInsets.symmetric(vertical: _verticalMargin),
      decoration: _containerDecoration(),
      child: ListTile(
        leading: _leading(size),
        title: Text(
          user.name,
          style: CustomTextTheme().headlineMedium,
        ),
        subtitle: Builder(
          builder: (context) {
            int postCounter = 0;
            postCounter =
                postsData.where((c) => c.userId == user.userId).length;
            return Text(
              "$postCounter Posts",
              style: CustomTextTheme().bodyMedium,
            );
          },
        ),
        trailing: _trailing(),
      ),
    );
  }

  final double _verticalPadding = 10.0;
  final double _verticalMargin = 5.0;
  final double _blurRadius = 5.0;
  final double _spreadRadius = 2.0;
  final double _borderRadius = 10.0;

  Decoration _containerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(_borderRadius),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: _blurRadius,
            spreadRadius: _spreadRadius)
      ],
    );
  }

  Widget _trailing() {
    return const Icon(
      Icons.arrow_right,
      size: 30,
    );
  }

  Widget _leading(Size size) {
    return CachedNetworkImage(
      imageUrl: user.url,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) =>
          CircleAvatar(
            radius: size.width / 14,
            backgroundImage: NetworkImage(user.url),
          ),
      placeholder: (context, url) => Image.asset(Assets.userProfile),
    );
  }
}
