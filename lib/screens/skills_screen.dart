import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  _SkillsScreenState createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  final List<String> skills = [
    'Flutter',
    'React',
    'NextJS',
    'MongoDB',
    'NodeJS',
    'JavaScript',
    'Firebase',
    'PHP',
    'HTML',
    'CSS',
    'C++',
    'Microsoft Office',
    'Figma',
    'Canva',
    'Photoshop',
    'Illustrator',
    'Data Structures',
    'Algorithms',
    'Problem Solving',
    'Logical Analysis',
  ];

  // Keeps track of which index is currently being hovered
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  final isHovered = index == hoveredIndex;

                  return MouseRegion(
                    onEnter: (_) => setState(() => hoveredIndex = index),
                    onExit: (_) => setState(() => hoveredIndex = null),
                    child: Card(
                      color: isHovered ? Colors.teal.shade50 : null,
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      child: ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: isHovered ? Colors.teal : null,
                        ),
                        title: Text(
                          skills[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: isHovered ? Colors.teal : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
