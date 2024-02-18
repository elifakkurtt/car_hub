import 'package:car_hub/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Premium Cars",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Enjoy The Luxury",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Premium and Prestige car daily rental",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          const Text(
            "Experience the thrill at a lower price",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "images/intro_car.png",
          ).animate().fade(duration: 1000.ms).scale(delay: 100.ms),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
