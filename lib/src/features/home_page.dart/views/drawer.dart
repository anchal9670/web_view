// custom_drawer.dart

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final ValueChanged<int> onItemSelected;

  const CustomDrawer({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF4A5637),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF4A5637),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sara',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle edit profile
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                              Icon(
                                Icons.edit_note,
                                color: Colors.white70,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.chat, color: Colors.white),
              title: const Text(
                'Chat with us',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                onItemSelected(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text(
                'Booking History',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                onItemSelected(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment, color: Colors.white),
              title: const Text(
                'Payment History',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                onItemSelected(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                onItemSelected(3);
              },
            ),
            const Divider(color: Colors.white54),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Favorites',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.white),
              title: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                onItemSelected(
                    2); // Navigate to favorites (adjust logic as needed)
              },
            ),
          ],
        ),
      ),
    );
  }
}
