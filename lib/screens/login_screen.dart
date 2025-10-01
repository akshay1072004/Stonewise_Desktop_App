import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stonewise/screens/home_screen.dart';
//import 'package:stonewise/screens/utility_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 50, top: 50, bottom: 50),
              child: Container(
                color: const Color(0xFF1E4CE5),
                // padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'GALAXY | SARIN | MAGNUS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'PREDICTION / MFG SOFTWARE',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 80),
                    SvgPicture.asset('assets/svg/stone Wise  LOgo.svg'),
                    Text(
                      'StoneWise',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 120),
                    const Text(
                      '● Software  ● Website ● Mobile App\n● Customize Development',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 60,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Log In to your account',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 40),
                  const Text('Screen No.',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8B8B8B))),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Screen No.',
                      hintStyle: TextStyle(color: Color(0xff8B8B8B)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD8D8D8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Password',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8B8B8B))),
                  const SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: Color(0xff8B8B8B)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD8D8D8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  scannedBarcode: "",
                                ),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff255CEA),
                            border: Border.all(color: Color(0xff255CEA)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            child: Text(
                              'log in',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff255CEA)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70, vertical: 10),
                            child: Text(
                              'Exit',
                              style: TextStyle(
                                  color: Color(0xff255CEA), fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
