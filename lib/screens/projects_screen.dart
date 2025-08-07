import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Lovela Dating App',
      'description':
          'Contributed to frontend development using Flutter and Dart. Designed UI, added new features, and optimized performance while collaborating in a team-oriented environment. Gained hands-on experience working with PHP and real-world product development.'
    },
    {
      'title': 'BizGrow',
      'description':
          'Built a business community app for entrepreneurs and professionals using Flutter and Dart. Focused on UI/UX, authentication integration, and backend services using PHP and Firebase for seamless cross-device performance.'
    },
    {
      'title': 'Auth System (Web)',
      'description':
          'Developed a full-stack authentication app using Next.js, React, and Firebase. Features included user registration, login/logout, JWT-based authentication, protected routes, and secure session management with form validation.'
    },
    {
      'title': 'Flutter Profile App',
      'description':
          'Built a personal profile app using Flutter to showcase education, experience, and projects. Emphasized clean UI, responsive layout, and organized navigation to present professional details effectively on mobile devices.'
    },
  ];

  ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project Highlights',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 22),
          Expanded(
            child: ListView.builder(
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    title: Text(
                      project['title']!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(project['description']!),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Optional: Navigate to detail screen if needed
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
