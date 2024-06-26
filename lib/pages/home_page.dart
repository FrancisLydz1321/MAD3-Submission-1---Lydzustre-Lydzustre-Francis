import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_midterm2/models/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              context.pushNamed(
                "/profile",
                // extra: User(
                //   name: "Francis",
                //   role: "Player",
                //   imageURL:
                //       ,
                // ),
              );
            },
            color: Colors.orange,
            child: const Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              context.pushNamed(
                "/anotherprofilePage",
                // pathParameters: {
                //   "anotherProfile ": "another",
                // },
              );
            },
            color: Colors.purple,
            child: const Text(
              "Another Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
