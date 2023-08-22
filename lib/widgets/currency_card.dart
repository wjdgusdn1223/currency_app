import 'package:flutter/material.dart';

enum CardOrder {
  first,
  second,
  third,
}

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final CardOrder cardOrder;

  final Color blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.isInverted = false,
    required this.cardOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -25.0 * cardOrder.index),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: isInverted ? Colors.white : blackColor,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(code,
                            style: TextStyle(
                              color: isInverted
                                  ? blackColor.withOpacity(0.8)
                                  : Colors.white.withOpacity(0.8),
                              fontSize: 20,
                            )),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(3, 11),
                    child: Icon(
                      icon,
                      color: isInverted ? blackColor : Colors.white,
                      size: 88,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
