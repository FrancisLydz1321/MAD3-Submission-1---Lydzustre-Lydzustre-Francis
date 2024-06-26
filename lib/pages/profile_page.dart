import 'package:flutter/material.dart';
import 'package:mobile_midterm2/models/user.dart';
import 'package:modular_ui/modular_ui.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "profile",
        ),
      ),
      body: Center(
        child: MUIProfileCard(
          name: user.name,
        ),
      ),
    );
  }
}
