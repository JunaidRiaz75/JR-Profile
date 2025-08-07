import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int? hoveredIndex;

  final List<Map<String, dynamic>> contactInfo = [
    {
      'icon': Icons.email,
      'label': 'Email',
      'value': 'mjunaidriaz575@gmail.com',
    },
    {
      'icon':
          Icons.linked_camera, // You might want to use a better LinkedIn icon
      'label': 'LinkedIn',
      'value': 'linkedin.com/in/junaidRiaz',
    },
    {
      'icon': Icons.code,
      'label': 'GitHub',
      'value': 'github.com/junaidriaz75',
    },
    {
      'icon': Icons.phone_android,
      'label': 'Phone',
      'value': '+92-3102474575',
    },
  ];

  final TextStyle labelStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  final TextStyle detailStyle = TextStyle(fontSize: 15, color: Colors.black87);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Text(
              'Contact Me',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ...List.generate(contactInfo.length, (index) {
              final item = contactInfo[index];
              final isHovered = hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) => setState(() => hoveredIndex = index),
                onExit: (_) => setState(() => hoveredIndex = null),
                child: Card(
                  color: isHovered ? Colors.teal.shade50 : null,
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(
                      item['icon'],
                      color: isHovered ? Colors.teal : Colors.teal.shade700,
                    ),
                    title: Text(
                      item['label'],
                      style: labelStyle.copyWith(
                        color: isHovered ? Colors.teal : Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      item['value'],
                      style: detailStyle.copyWith(
                        color:
                            isHovered ? Colors.teal.shade700 : Colors.black87,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
