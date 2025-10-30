import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navegacion_2_0/core/router/routes.dart';

// --- IMPORTACIONES "REPARADAS" ---
// Ahora apuntan a la carpeta /shared/widgets/
import 'package:navegacion_2_0/shared/widgets/auth_layout.dart';
import 'package:navegacion_2_0/shared/widgets/custom_filled_button.dart';
import 'package:navegacion_2_0/shared/widgets/custom_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AuthLayout(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Registro', style: textTheme.headlineMedium),
          const SizedBox(height: 24),
          const CustomTextFormField(
            label: 'Nombre',
            prefixIcon: Icons.person_outline,
          ),
          const SizedBox(height: 16),
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
            text: 'Crear Cuenta',
            onPressed: () {
              context.goNamed(AppRoutes.home);
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.goNamed(AppRoutes.login);
            },
            child: const Text('¿Ya tienes cuenta? Ingresa'),
          )
        ],
      ),
    );
  }
}