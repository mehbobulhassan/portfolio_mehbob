import 'package:flutter/material.dart';
import 'package:portfolio_mehbob/screens/profile_screen.dart';
import 'package:portfolio_mehbob/widgets/button_helper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/placeholder.jpg'),
              ),
              SizedBox(height: 20),
              CustomText(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                title: "Welcome to Portfolio",
              ),
              SizedBox(height: 50),
              CustomButton(
                callBack: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, _) => ProfileScreen(),
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                            final curedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
                            return FadeTransition(opacity: curedAnimation, child: child,);
                          },
                    ),
                  );
                  
                },
                fontSize: 25,
                fontWeight: FontWeight.normal,
                title: "Get Started",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
