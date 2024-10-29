import 'package:drawer/src/features/web_view/views/web_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.push(WebViewScreen.routePath,
                    extra: 'https://flutter.dev');
              },
              child: const Text("Flutter Website"),
            ),
          ),
        ],
      ),
    );
  }
}
