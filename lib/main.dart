import 'package:flutter/material.dart';
import 'package:flutter_toonflix/widgets/button.dart';
import 'package:flutter_toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //android style
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    height: 25,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // Customized button here
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFf2b33a),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xff212121),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    title: 'Euro',
                    amount: '6 500',
                    currencyCode: 'EUR',
                    currencyIcon: Icons.euro_rounded,
                    isInverted: false,
                    index: 0,
                  ),
                  const CurrencyCard(
                    title: 'Dollar',
                    amount: '55 620',
                    currencyCode: 'US',
                    currencyIcon: Icons.monetization_on_outlined,
                    isInverted: true,
                    index: 1,
                  ),
                  const CurrencyCard(
                    title: 'Rupee',
                    amount: '26 500',
                    currencyCode: 'INR',
                    currencyIcon: Icons.currency_rupee_rounded,
                    isInverted: false,
                    index: 2,
                  ),
                  const CurrencyCard(
                    title: 'BitCoin',
                    amount: '26 500',
                    currencyCode: 'BTC',
                    currencyIcon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    index: 3,
                  ),
                ],
              ),
            ),
          )),
    );
    //ios style
    // return CupertinoApp();
  }
}

typedef CurrencyData = List<Map<String, dynamic>>;

const CurrencyData currencyApiData = [
  {
    'title': 'Euro',
    'amount': '6 500',
    'currencyCode': 'EUR',
    'currencyIcon': Icons.euro_rounded,
    'isInverted': false,
  },
  {
    'title': 'Dollar',
    'amount': '55 620',
    'currencyCode': 'US',
    'currencyIcon': Icons.monetization_on_outlined,
    'isInverted': true,
  },
  {
    'title': 'Rupee',
    'amount': '26 500',
    'currencyCode': 'INR',
    'currencyIcon': Icons.currency_rupee_rounded,
    'isInverted': false,
  },
  {
    'title': 'BitCoin',
    'amount': '26 500',
    'currencyCode': 'BTC',
    'currencyIcon': Icons.currency_bitcoin_rounded,
    'isInverted': true,
  }
];
