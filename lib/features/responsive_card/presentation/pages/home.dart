import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navegacion_2_0/core/router/routes.dart';
import '../widgets/custom_responsive_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mockup 4: Card Responsiva'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.palette_outlined),
            tooltip: 'Ver Colores',
            onPressed: () {
              //CONTEXT!!
              context.goNamed(AppRoutes.color);
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: CustomResponsiveCard(),
      ),
    );
  }
}
