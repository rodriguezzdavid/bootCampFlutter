import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User details"),
      ),
      body: const Center(
        child: Text("Nombre del usuario"),
      ),
    );
  }
}
