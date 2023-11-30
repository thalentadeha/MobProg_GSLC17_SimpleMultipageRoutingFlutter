import 'package:flutter/material.dart';
import 'package:gslc17/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Second Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no2.jpg',
              width: 500,
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
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil(
                  (route) => route.isFirst,
                );
              },
              child: const Text("Press to go back to first screen"),
            ),
          ],
        ),
      ),
    );
  }
}
