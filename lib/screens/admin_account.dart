import 'package:flutter/material.dart';

class AdminAccount extends StatefulWidget {
  const AdminAccount({super.key});

  @override
  State<AdminAccount> createState() => _AdminAccountState();
}

class _AdminAccountState extends State<AdminAccount> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: AppBar(
          title: const Text('welcome administrator john doe'),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: const Color(0xFF674AEF),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 18,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "FAQs"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
      ),
    );
  }
}
