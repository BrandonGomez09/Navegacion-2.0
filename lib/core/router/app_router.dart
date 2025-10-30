import 'package:go_router/go_router.dart';
import 'package:navegacion_2_0/features/color_scheme_page/presentation/pages/color_scheme_page.dart';
import 'package:navegacion_2_0/features/responsive_card/presentation/pages/home.dart';
import 'package:navegacion_2_0/core/router/routes.dart';
import 'package:navegacion_2_0/features/login/presentation/pages/login_page.dart';
import 'package:navegacion_2_0/features/register/presentation/pages/register_page.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.loginPath,

  routes: [
    // --- RUTAS DE AUTH (AHORA SEPARADAS) ---
    GoRoute(
      path: AppRoutes.loginPath,
      name: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.registerPath,
      name: AppRoutes.register,
      builder: (context, state) => const RegisterPage(),
    ),

    // --- TUS RUTAS EXISTENTES ---
    GoRoute(
      path: AppRoutes.homePath,
      name: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.colorPath,
      name: AppRoutes.color,
      builder: (context, state) => const ColorSchemePage(),
    ),
  ],
);