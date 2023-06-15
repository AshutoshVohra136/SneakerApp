import 'package:flutter/material.dart';
import 'package:sneaker_app/screen/shoescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/images/logo.jpg',
                height: 250,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            const Text(
              'Just Do It',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),

//  SubTile
            const Text(
              'Brand New Sneakers And Custom Kicks Made With Premium Quality',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            //appStart Button
            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShoeScreen())),
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[900]),
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
