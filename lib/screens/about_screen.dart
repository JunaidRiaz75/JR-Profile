import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Junaid is a Junior Software Engineer who has developed several applications as part of his learning "
              "journey, gaining hands-on experience in real-world development. Known for his keen attention to detail "
              "and analytical thinking, he excels in problem-solving and creating high-quality, efficient solutions. Junaid "
              "is punctual, reliable, and communicates effectively, making him a valuable team player. He is committed to "
              "continuous learning and strives to deliver impactful results in every project.",
            ),
            /*  SizedBox(height: 12),
            Text(
              "I'm currently pursuing a Bachelor's in IT (2022–2026) with a 3.53 GPA. I love building useful, scalable apps with Flutter, React, Firebase, and more.",
            ), */
            SizedBox(height: 24),
            Text(
              'Education',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'University of Sahiwal (2022–2026)\n'
              "Currently pursuing a Bachelor's degree in Information Technology with a GPA of 3.53, consistently ranking "
              "among the top of my class. A well-rounded student, with leadership experience in semester projects, "
              "earning A* grades for strong problem-solving, teamwork, and a commitment to delivering high-quality results.",
            ),
            SizedBox(height: 12),
            Text(
              'Govt Post Graduate College Arifwala (2020–2022)\n'
              'Completed ICS with an overall 83.33% mark. Demonstrated academic excellence and strong foundational skills.',
            ),
            SizedBox(height: 12),
            Text(
              'The Smart School Arifwala (2018–2020)\n'
              'Achieved 71.33% in Matriculation (Science) and consistently ranked among the top 10 students of the school.',
            ),
          ],
        ),
      ),
    );
  }
}
