import 'package:flutter/material.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome"),
      ),
      body: const Center(
        child: Text("Welcome!! This is Your Home Page!!"),
      ),
    );
  }
}
