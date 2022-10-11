import 'package:go_router/go_router.dart';
import 'package:user_task/screens/datails_view/detail_view.dart';
import 'package:user_task/screens/users_view/users_list_view.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
        path: '/usersListView',
        builder: (context, state) {
          return const UsersListView();
        },
        routes: <GoRoute>[
          GoRoute(
            path: 'detailView',
            name: 'detail',
            builder: (context, state) {
              final args = state.extra as Map<String, dynamic>?;
              return DetailView(user: args!["user"]);
            },
          ),
        ]),
  ],
  initialLocation: '/usersListView',
);
