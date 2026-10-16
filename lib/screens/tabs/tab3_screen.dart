import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Food Database')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _foodTile('Egg Whites (100g)', '52 kcal • 11g Protein'),
          _foodTile('Greek Yogurt 0% (200g)', '120 kcal • 20g Protein'),
          _foodTile('Avocado Medium (150g)', '240 kcal • 22g Fat'),
        ],
      ),
    );
  }

  Widget _foodTile(String name, String macros) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text(macros, style: const TextStyle(color: Colors.white60, fontSize: 12)),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
    );
  }
}

