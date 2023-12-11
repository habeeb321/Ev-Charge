import 'package:ev_charge/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Delay for 2 seconds before navigating to LoginScreen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.4),
                SizedBox(
                  height: 70,
                  child: Stack(
                    children: const [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'charge',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: 'MOD',
                              style: TextStyle(
                                fontSize: 50,
                                color: Color(0xffEC6E00),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 50,
                        child: Text(
                          'Power to People',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Color(0xffF29242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: size.width * 0.6,
                  child: const LinearProgressIndicator(
                    value: 0.25,
                    color: Color(0xffF76C00),
                    backgroundColor: Color(0xffEBEBEB),
                    minHeight: 8,
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Connecting to chargeMOD'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
