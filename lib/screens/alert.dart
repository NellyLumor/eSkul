import 'package:flutter/material.dart';
import 'package:eskul_project/screens/home_screen.dart';
import 'package:eskul_project/screens/pages.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF674AEF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/squareAlert2.png',
                width: 74,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Enrolment Form',
                style: TextStyle(
                  color: Color(0xffEC5B5B),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Modify Enrolment Form now?',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
      
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 32,
                      ),
                      foregroundColor: const Color(0xffEC5B5B),
                      side: const BorderSide(
                        color: Color(0xffEC5B5B),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: const Text('Cancel'),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5BEC84),
                      foregroundColor: const Color(0xff2A303E),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 32,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DocumentsCls(),
                        ),
                      );
                    },
                    child: const Text('Yes'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}