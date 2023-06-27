import 'package:flutter/material.dart';
//import 'package:eskul_project/screens/staff_screen.dart';
//import 'package:eskul_project/screens/administrator_screen.dart';


class PaymentCls extends StatefulWidget {
  const PaymentCls({super.key});

  @override
  State<PaymentCls> createState() => _PaymentClsState();
}

class _PaymentClsState extends State<PaymentCls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF674AEF),
      body: SafeArea(
        child: Column(
          children: [
            // top
            Container(
              // ignore: prefer_const_constructors
              padding: const EdgeInsets.only(
                  top: 15, right: 15, left: 15, bottom: 10),
              decoration: const BoxDecoration(
                color: Color(0xFF674AEF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.dashboard,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      "eSkul Client",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  
                  Column(
                    children: [
                      Expanded(
                          child: Card(
                            shadowColor: Colors.black,
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          
                            
                          ),
                        ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
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
