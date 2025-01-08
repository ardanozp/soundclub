import 'package:go_router/go_router.dart';
import 'package:music_app/start_screen.dart';
import 'package:music_app/views/app_view.dart';
import 'package:music_app/views/genres_view/genres_view.dart';
import 'package:music_app/views/profile_view/sign_up_screen.dart';
// import 'package:music_app/views/app_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/kesfet',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AppView(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/kesfet',
              builder: (context, state) => const GenresView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/about',
              builder: (context, state) => const AboutScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
