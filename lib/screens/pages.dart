import 'package:flutter/material.dart';

class DocumentsCls extends StatefulWidget {
  const DocumentsCls({super.key});

  @override
  State<DocumentsCls> createState() => _DocumentsClsState();
}

class _DocumentsClsState extends State<DocumentsCls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 10),
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height, // "/ 0.45"
                        decoration: const BoxDecoration(
                          color: Color(0xFF674AEF),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        padding: const EdgeInsets.only(top: 40, bottom: 30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // this is where the forms goes
                            const CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Color(0xFF674AEF),

                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              shadowColor: Colors.black, 
                              color: Colors.blueGrey[50],
                              child: SizedBox(
                                width: 350,
                                height: 350,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Custom card',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ), //TextStyle
                                      ), //Text
                                      SizedBox(
                                        height: 10,
                                      ), //SizedBox
                                      Text(
                                        'This card is supposed to contain a downloadable forms',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ), //TextStyle
                                      ), //Text
                                      SizedBox(
                                        height: 10,
                                      ), //SizedBox
                                      // SizedBox(
                                      //   width: 100,
                                      //   child: ElevatedButton(
                                      //     onPressed: () => 'Null',
                                      //     child: Padding(
                                      //       padding: const EdgeInsets.all(4),
                                      //       child: Row(
                                      //         children: const [
                                      //           Icon(Icons.touch_app),
                                      //           Text('Visit')
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
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