import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final Icon icon;
  final Color bgColor;
  final Color textColor;
  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(amount,
                    style: TextStyle(
                        color: textColor.withOpacity(0.8), fontSize: 17)),
                const SizedBox(width: 10),
                Text(
                  code,
                  style: TextStyle(
                      color: textColor.withOpacity(0.6), fontSize: 16),
                )
              ]),
            ],
          ),
          Transform.scale(
            scale: 2.2,
            child: Transform.translate(
              offset: const Offset(60, 17),
              child: icon,
            ),
          )
        ],
      ),
    );
  }
}
