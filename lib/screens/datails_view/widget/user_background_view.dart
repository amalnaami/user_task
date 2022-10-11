import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:user_task/core/assets.dart';

class UserBackgroundView extends StatelessWidget {
  final String image;

  const UserBackgroundView({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
          decoration: _containerDecoration(
            imageProvider,
          ),
        ),
        placeholder: (context, url) => Image.asset(Assets.userProfile),
      ),
    );
  }

  final double _borderRadius = 30.0;

  Decoration _containerDecoration(imageProvider) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(
          _borderRadius,
        ),
        bottomRight: Radius.circular(
          _borderRadius,
        ),
      ),
      image: DecorationImage(
        image: imageProvider,
        fit: BoxFit.cover,
      ),
    );
  }
}
