import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/screens/login_screen.dart';
import 'package:medical_healthcare_app/widgets/navbar_roots.dart';
import 'package:medical_healthcare_app/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarRoots(),
                      ));
                },
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 149, 134), fontSize: 15),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset("images/doc2.png"),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Doctor Appointment",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 149, 134),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromARGB(255, 1, 149, 134),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Login In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color.fromARGB(255, 1, 149, 134),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
