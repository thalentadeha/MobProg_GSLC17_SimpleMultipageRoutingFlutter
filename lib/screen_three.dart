import 'package:flutter/material.dart';
import 'package:gslc17/screen_one.dart';
import 'package:gslc17/screen_two.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Third Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no3.jpg',
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
              child: const Text("Press to go back to second screen"),
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
