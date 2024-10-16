import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7EE),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // Updated welcome text
                  Text(
                    'Welcome to Grain',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                      letterSpacing: -1.5,
                      color: Colors.black, // Full black color
                    ),
                  ),
                ],
              ),
            ),
          ),

          // FilledButton from Material 3
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF008DDF),
                      foregroundColor: Colors.white, // White text color
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Signup'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFAFDEDC),
                      foregroundColor: Colors.black, // Black text color
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),

          // Terms and Conditions with darker color
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: InkWell(
              onTap: () {
                // Handle Terms and Conditions navigation
              },
              child: const Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Color(0xFF333333), // Darker gray color
                  fontFamily: 'Inter',
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}