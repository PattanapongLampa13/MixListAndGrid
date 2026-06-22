import 'package:flutter/material.dart';

class CowboyListView extends StatelessWidget {
  const CowboyListView({super.key});

  final List<Map<String, String>> equipment = const [
    {'name': 'หมวกคาวบอย', 'image': '🤠', 'price': '\$50', 'desc': 'หมวกปีกกว้างกันแดดอย่างดี'},
    {'name': 'รองเท้าบูท', 'image': '👢', 'price': '\$120', 'desc': 'รองเท้าหนังแท้ทนทาน'},
    {'name': 'เชือกบ่วงบาศ', 'image': '🪢', 'price': '\$20', 'desc': 'เชือกเหนียวพิเศษสำหรับคล้องวัว'},
    {'name': 'อานม้า', 'image': '🐴', 'price': '\$300', 'desc': 'อานม้าหนังแท้นั่งสบาย'},
    {'name': 'สเปอร์ส', 'image': '⚙️', 'price': '\$35', 'desc': 'เหล็กติดรองเท้าบูท'},
    {'name': 'ปืนลูกโม่จำลอง', 'image': '🔫', 'price': '\$80', 'desc': 'ปืนจำลองสำหรับประดับตกแต่ง'},
    {'name': 'เข็มขัดหนัง', 'image': '🪤', 'price': '\$45', 'desc': 'เข็มขัดหนังแท้พร้อมหัวเข็มขัดคาวบอย'},
    {'name': 'ผ้าพันคอ', 'image': '🧣', 'price': '\$10', 'desc': 'ผ้าพันคอกันฝุ่น'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: equipment.length,
      itemBuilder: (context, index) {
        final item = equipment[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 5),
          color: Colors.orange[50],
          child: ListTile(
            leading: Text(item['image']!, style: const TextStyle(fontSize: 40)),
            title: Text(item['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item['desc']!),
            trailing: Text(item['price']!, style: const TextStyle(fontSize: 16, color: Colors.brown, fontWeight: FontWeight.bold)),
          ),
        );
      },
    );
  }
}
