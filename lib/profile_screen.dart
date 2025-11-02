import 'package:flutter/material.dart';
import 'about_me_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.info_outline),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutMeScreen()),
          );
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 🖼 Profile Image with error handling
            ClipOval(
              child: Image.asset(
                'assets/images/profile.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback image if asset not found
                  return Container(
                    width: 120,
                    height: 120,
                    color: Colors.grey[300],
                    child: const Icon(Icons.person, size: 60, color: Colors.grey),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),
            const Text(
              "Imtiaz Ali",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              "I am passionate about building mobile applications with beautiful and efficient UIs using Flutter. I enjoy learning new technologies and improving my design skills.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, height: 1.4),
            ),
            const SizedBox(height: 20),

            // 📩 Contact Info
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const ListTile(
                leading: Icon(Icons.email, color: Colors.indigo),
                title: Text("imtiaz@example.com"),
                subtitle: Text("Email"),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const ListTile(
                leading: Icon(Icons.phone, color: Colors.indigo),
                title: Text("+92 300 0000000"),
                subtitle: Text("Phone"),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const ListTile(
                leading: Icon(Icons.location_on, color: Colors.indigo),
                title: Text("Gilgit-Baltistan, Pakistan"),
                subtitle: Text("Location"),
              ),
            ),

            const SizedBox(height: 20),

            // 🌐 Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.linked_camera, color: Colors.indigo),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.code, color: Colors.indigo),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.chat, color: Colors.indigo),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
