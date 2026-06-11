import 'package:flutter/material.dart';
import '../constants.dart';

class AppBari extends StatelessWidget implements PreferredSizeWidget {
  const AppBari({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(170);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 170,
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Center(
              child: const Text(
                appTitle,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/bar.png', height: 100),
          ],
        ),
      ),
    );
  }
}
