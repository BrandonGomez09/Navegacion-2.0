import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navegacion_2_0/core/router/routes.dart';

// --- IMPORTACIONES "REPARADAS" ---
// Ahora apuntan a la carpeta /shared/widgets/
import 'package:navegacion_2_0/shared/widgets/auth_layout.dart';
import 'package:navegacion_2_0/shared/widgets/custom_filled_button.dart';
import 'package:navegacion_2_0/shared/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AuthLayout(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Login', style: textTheme.headlineMedium),
          const SizedBox(height: 24),
          const CustomTextFormField(
            label: 'Email',
            prefixIcon: Icons.email_outlined,
          ),
          const SizedBox(height: 16),
          const CustomTextFormField(
            label: 'Contraseña',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          const SizedBox(height: 24),
          CustomFilledButton(
            text: 'Ingresar',
            onPressed: () {
              context.goNamed(AppRoutes.home);
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.goNamed(AppRoutes.register);
            },
            child: const Text('¿No tienes cuenta? Regístrate'),
          )
        ],
      ),
    );
  }
}