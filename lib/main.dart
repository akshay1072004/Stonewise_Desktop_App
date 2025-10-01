import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stonewise/screens/splash_screen.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Mulish',
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
