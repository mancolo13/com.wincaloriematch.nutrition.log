import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final meals = [
      {'name': 'Breakfast', 'kcal': '480 kcal', 'desc': 'Oatmeal, whey isolate, berries, almond milk'},
      {'name': 'Lunch', 'kcal': '620 kcal', 'desc': 'Grilled chicken breast, quinoa, avocado'},
      {'name': 'Dinner', 'kcal': '360 kcal', 'desc': 'Baked Atlantic salmon & asparagus'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Daily Meals')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (context, i) {
          final m = meals[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                  child: const Icon(Icons.restaurant, color: AppTheme.primaryColor),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(m['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(m['desc']!, style: const TextStyle(color: Colors.white60, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                Text(m['kcal']!, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.secondaryColor)),
              ],
            ),
          );
        },
      ),
    );
  }
}

