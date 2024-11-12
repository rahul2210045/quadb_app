import 'package:flutter/material.dart';
import 'package:movie_app/screens/Home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds before navigating to the Home screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/movie.jpg'),
              fit: BoxFit.cover,
              ),
            ),
            ),
          ),
    );
  }
}
