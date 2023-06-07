import 'package:flutter/material.dart';
import 'package:eskul_project/screens/staff_screen.dart';
import 'package:eskul_project/screens/administrator_screen.dart';


class DocumentsCls extends StatefulWidget {
  const DocumentsCls({super.key});

  @override
  State<DocumentsCls> createState() => _DocumentsClsState();
}

class _DocumentsClsState extends State<DocumentsCls> {
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
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Here...",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          )),
                    ),
                  )
                ],
              ),
            ),

            // card
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            // this is where the forms goes
                            const CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Color(0xFF674AEF),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Student Name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ), //TextStyle
                            ),

                            //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Student',
                              style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ), //TextStyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ),
                            //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, right: 20, top: 40),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                            const AdministratorPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Administrator',
                                      style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontStyle: FontStyle.italic,
                                        color: Color(0xFF674AEF),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 20, top: 40),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                            const StaffPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Staff',
                                      style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        fontStyle: FontStyle.italic,
                                        color: Color(0xFF674AEF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shadowColor: Colors.black,
                        color: Colors.blueGrey[50],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: const SizedBox(
                          // width: 350,
                          // height: 350,
                        ),
                      ),
                    ),
                  ],
                ),
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
