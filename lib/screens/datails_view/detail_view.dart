import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_task/model/user_model.dart';
import 'package:user_task/providers/data_provider.dart';
import 'package:user_task/screens/datails_view/widget/post_widget.dart';
import 'package:user_task/screens/datails_view/widget/user_background_view.dart';
import 'package:user_task/utils/shared_widgets/loader.dart';

// utils
class DetailView extends ConsumerWidget {
  const DetailView({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;
  final double _contentPadding = 15.0;

  @override
  Widget build(BuildContext context, ref) {
    final postsData = ref.watch(postDataProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserBackgroundView(
              image: user.thumbnailUrl,
            ),
            postsData.when(
              data: (postsData) {
                final data = (postsData.data ?? [])
                    .where((c) => c.userId == user.userId)
                    .toList();
                return Padding(
                  padding: EdgeInsets.all(_contentPadding),
                  child: Column(
                    children: [
                      ...(data).map((e) => PostWidget(
                            postData: e,
                          ))
                    ],
                  ),
                );
              },
              error: (err, s) => Text(err.toString()),
              loading: () => const Loader(),
            ),
          ],
        ),
      ),
    );
  }
}
