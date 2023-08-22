import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:currency_app/widgets/button.dart';
import 'package:currency_app/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        backgroundColor: Color(0xFFF1B338),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        backgroundColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    icon: Icons.euro_rounded,
                    cardOrder: CardOrder.first,
                  ),
                  const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "675",
                    icon: Icons.attach_money_rounded,
                    isInverted: true,
                    cardOrder: CardOrder.second,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "9 785",
                    icon: Icons.currency_bitcoin_rounded,
                    cardOrder: CardOrder.third,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
