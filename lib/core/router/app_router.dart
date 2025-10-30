import 'package:go_router/go_router.dart';
import 'package:navegacion_2_0/features/color_scheme_page/presentation/pages/color_scheme_page.dart';
import 'package:navegacion_2_0/features/responsive_card/presentation/pages/home.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/color',
      name: 'color',
      builder: (context, state) => const ColorSchemePage(),
    ),
  ],
);


