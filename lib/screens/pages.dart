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
      // backgroundColor: const Color(0xFF674AEF),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                color: const Color(0xFF674AEF),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              // this is where the forms goes
                              // const Padding(
                              //   padding: EdgeInsets.only(top: 60),
                              // ),
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Color(0xFF674AEF),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Student Name',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ), //TextStyle
                              ),

                              //Text
                              const SizedBox(
                                height: 20,
                              ), //SizedBox
                              const Text(
                                'PROSPECTIVE',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xFF674AEF),
                                ), //TextStyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ),
                              //Text
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Index No."),
                                    hintText: "XXXXXXXX23",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Class"),
                                    hintText: "Department",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Residential Status"),
                                    hintText: "Day/Boarding",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
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
                                          left: 20, right: 10),
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
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shadowColor: Colors.black,
                          color: Colors.blueGrey[50],
                          margin: const EdgeInsets.only(
                            bottom: 60,
                            right: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          //   child: const SizedBox(
                          //      width: 350,
                          //      height: 500,
                          //   ),

                          //  child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: [
                          //       Column(
                          //         children: const [
                          //           Icon(Icons.book,
                          //           color: Color(0xFF674AEF),
                          //           ),
                          //           Text('Enrolment Form',
                          //             style: TextStyle(
                          //               color: Color(0xFF674AEF),
                          //             ),
                          //           ),
                          //           Padding(padding: EdgeInsets.all(8) )
                          //         ],
                          //       ),
                          //       Column(
                          //         children: const [
                          //           Icon(Icons.download,
                          //           color: Color(0xFF674AEF),
                          //           ),
                          //           Text('Downloads',
                          //             style: TextStyle(
                          //               color: Color(0xFF674AEF),
                          //             ),
                          //           ),

                          //         ],
                          //       )
                          //     ],
                          //   ),

                          child: GridView.count(
                            primary: false,
                            padding: const EdgeInsets.all(20),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            // shrinkWrap: true,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: const Color(0xFF674AEF),
                                child: const Icon(
                                  Icons.book,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: const Color(0xFF674AEF),
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: const Color(0xFF674AEF),
                                child: const Icon(
                                  Icons.help,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: const Color(0xFF674AEF),
                                child: const Icon(
                                  Icons.info,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // bottomNavigationBar: BottomNavigationBar(
    //   iconSize: 35,
    //   selectedItemColor: const Color(0xFF674AEF),
    //   unselectedItemColor: Colors.grey,
    //   selectedFontSize: 18,
    //   items: const [
    //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    //     BottomNavigationBarItem(icon: Icon(Icons.help), label: "FAQs"),
    //     BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
    //   ],
    // );
  }
}
