import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Education",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "• BS Computer Science, Karakoram International University\n• Intermediate in Pre-Engineering",
          ),
          const SizedBox(height: 20),

          const Text(
            "Skills",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: const [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Dart")),
              Chip(label: Text("Firebase")),
              Chip(label: Text("UI/UX Design")),
            ],
          ),
          const SizedBox(height: 20),

          const Text(
            "Hobbies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text("• Reading tech blogs\n• Playing football\n• Exploring new apps"),
        ],
      ),
    );
  }
}
