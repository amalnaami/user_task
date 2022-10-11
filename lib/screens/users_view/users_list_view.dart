import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_task/providers/state.dart';
import 'package:user_task/providers/data_provider.dart';
import 'package:user_task/screens/users_view/widgets/custom_app_bar.dart';
import 'package:user_task/screens/users_view/widgets/user_card.dart';
import 'package:user_task/utils/shared_widgets/dio_error.dart';
import 'package:user_task/utils/shared_widgets/disconnect_internet.dart';
import 'package:user_task/utils/shared_widgets/loader.dart';

// ignore: must_be_immutable
class UsersListView extends ConsumerWidget {
  const UsersListView({Key? key}) : super(key: key);
  final double _contentPadding = 15.0;

  @override
  Widget build(BuildContext context, ref) {
    final userData = ref.watch(userDataProvider);
    final postsData = ref.watch(postDataProvider);

    return Scaffold(
        appBar: CustomAppBar(
          arTap: () {
            ref.refresh(languageProvider).setLanguage("ar");
          },
          enTap: () {
            ref.refresh(languageProvider).setLanguage("en");
          },
        ),
        body: (userData.value?.isNoInternet ?? false)
        ? const DisconnectInternet()
        : (userData.value?.isError ?? false)
        ? const DioError()
        : userData.when(
      data: (userData) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(_contentPadding),
          child: Column(
            children: [
              ...(userData.data ?? []).map(
                    (e) =>
                    UserCard(
                      user: e,
                      postsData: postsData.value?.data ?? [],
                    ),
              ),
            ],
          ),
        );
      },
      error: (err, s) =>
          Text(
            err.toString(),
          ),
      loading: () => const Loader(),
    ),);
  }
}
