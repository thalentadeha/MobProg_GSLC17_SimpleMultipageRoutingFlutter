import 'package:flutter/material.dart';
import 'package:gslc17/screen_three.dart';
import 'package:gslc17/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("First Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no1.png',
              width: 500,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenTwo(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Press to go to second screen"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenThree(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Press to go to third screen"),
            ),
          ],
        ),
      ),
    );
  }
}
