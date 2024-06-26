import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_midterm2/models/user.dart';

class AnotherprofilePage extends StatelessWidget {
  final User user;

  const AnotherprofilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "anotherprofilePage",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 90,
              backgroundImage: const AssetImage('assets/images/unknown2.png'),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                title: const Text('Name'),
                subtitle: const Text('Another White Husky'),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                title: const Text('Phone'),
                subtitle: const Text('0123456789'),
                leading: Icon(CupertinoIcons.phone),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                title: const Text('Address'),
                subtitle: const Text('Cebu City'),
                leading: Icon(CupertinoIcons.location),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                title: const Text('email'),
                subtitle: const Text('abcdefg@hotmail.com'),
                leading: Icon(CupertinoIcons.mail),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
                tileColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
