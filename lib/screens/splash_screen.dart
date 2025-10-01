import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stonewise/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF000000)
          : const Color(0xFFffffff),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/backgrounimage.png',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg/SioneWise.svg'),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'StoneWise',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff255CEA)),
                    )
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 375,
                height: 10,
                child: Stack(
                  children: [
                    // ✅ White Background for Progress Bar
                    Container(
                      width: 375,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    // ✅ Animated Gradient Progress
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 375 * _animation.value,
                              height: 10,
                              decoration:
                                  BoxDecoration(color: Color(0xffEAF0FF)),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Text(
                'Loading...',
                style: TextStyle(color: Color(0xff255CEA)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
