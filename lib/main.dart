import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //android style
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Darcy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf2b33a),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 50,
                          ),
                          child: Text(
                            'Transfer',
                            style: TextStyle(fontSize: 16),
                          )),
                    )
                  ],
                )
              ],
            ),
          )),
    );
    //ios style
    // return CupertinoApp();
  }
}
