import 'package:drawer/src/features/home_page.dart/views/bottom_nav_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  static const routePath = '/splashscreen';

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      context.pushReplacement(BottomNavScreen.routePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xFF68A47E), Color(0xFF68A47E)],
                    stops: <double>[0, 1],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
