//for all routes
import 'package:drawer/src/common/views/splashscreen.dart';
import 'package:drawer/src/features/home_page.dart/views/bottom_nav_screen.dart';
import 'package:drawer/src/features/web_view/views/web_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: Splashscreen.routePath,
  routes: [
    GoRoute(
      path: Splashscreen.routePath,
      builder: (context, state) {
        return const Splashscreen();
      },
    ),
    GoRoute(
      path: BottomNavScreen.routePath,
      builder: (context, state) {
        return const BottomNavScreen();
      },
    ),
    GoRoute(
      path: WebViewScreen.routePath,
      builder: (context, state) {
        return WebViewScreen(
          url: state.extra as String,
        );
      },
    ),
  ],
);
