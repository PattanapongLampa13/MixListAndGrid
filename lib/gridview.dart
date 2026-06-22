import 'package:flutter/material.dart';

class CowboyGridView extends StatelessWidget {
  const CowboyGridView({super.key});

  final List<Map<String, String>> equipment = const [
    {'name': 'หมวกคาวบอย', 'image': '🤠', 'price': '\$50'},
    {'name': 'รองเท้าบูท', 'image': '👢', 'price': '\$120'},
    {'name': 'เชือกบ่วงบาศ', 'image': '🪢', 'price': '\$20'},
    {'name': 'อานม้า', 'image': '🐴', 'price': '\$300'},
    {'name': 'สเปอร์ส', 'image': '⚙️', 'price': '\$35'},
    {'name': 'ปืนลูกโม่จำลอง', 'image': '🔫', 'price': '\$80'},
    {'name': 'เข็มขัดหนัง', 'image': '🪤', 'price': '\$45'},
    {'name': 'ผ้าพันคอ', 'image': '🧣', 'price': '\$10'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: equipment.length,
      itemBuilder: (context, index) {
        final item = equipment[index];
        return Card(
          elevation: 4,
          color: Colors.orange[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item['image']!, style: const TextStyle(fontSize: 50)),
              const SizedBox(height: 10),
              Text(item['name']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(item['price']!, style: const TextStyle(fontSize: 16, color: Colors.brown)),
            ],
          ),
        );
      },
    );
  }
}
