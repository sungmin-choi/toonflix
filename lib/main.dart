import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hello Sungmin',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        '\$5 194 382',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Button(
                                text: 'Transfer',
                                bgColor: Color(0xfff2b33a),
                                textColor: Colors.black),
                            Button(
                                text: 'Request',
                                bgColor: Color(0xff202123),
                                textColor: Colors.white)
                          ],
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Column(children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                      color: const Color(0xff202123),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Euro',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 15),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('6 428',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 17)),
                                const SizedBox(width: 10),
                                Text(
                                  'EUR',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 16),
                                )
                              ]),
                        ],
                      ),
                      Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(60, 17),
                          child: const Icon(
                            Icons.euro,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: 'Dollor',
                    code: 'USD',
                    amount: '55 622',
                    bgColor: Color(0xfffafafa),
                    textColor: Colors.black,
                    icon: Icon(
                      Icons.attach_money,
                      size: 80,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -80),
                  child: const CurrencyCard(
                    name: 'Rupee',
                    code: 'INR',
                    amount: '28 981',
                    bgColor: Color(0xff202123),
                    textColor: Colors.white,
                    icon: Icon(
                      Icons.currency_rupee,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
