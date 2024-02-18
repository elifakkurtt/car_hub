import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      //appbar
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            Text(
              "Elif Akkurt",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications_active,
            color: Colors.white,
            size: 30,
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.1),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            //top brands
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Brands",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),

            //available car
            

            //bottom navigation bar
          ],
        ),
      ),
    );
  }
}
