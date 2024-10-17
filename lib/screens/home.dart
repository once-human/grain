import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import Lottie package
import 'login.dart';
import 'register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818), // Dark background color
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Lottie animation
                  Lottie.network(
                    'https://lottie.host/b859aa4b-acd2-41e2-8e34-705f57937158/gxKDDrvpYy.json',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 20),

                  // Welcome text with adjusted color
                  const Text(
                    'Welcome to Grain',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                      letterSpacing: -1.5,
                      color: Colors.white, // White text for contrast
                    ),
                  ),
                ],
              ),
            ),
          ),

          // FilledButton from Material 3 with adjusted colors
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
                      backgroundColor: const Color(0xFFAFDEDC), // Light button color
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
                      backgroundColor: const Color(0xFF008DDF), // Blue button color
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
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),

          // Terms and Conditions with adjusted color
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: InkWell(
              onTap: () {
                // Handle Terms and Conditions navigation
              },
              child: const Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Color(0xFFCCCCCC), // Lighter gray color
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