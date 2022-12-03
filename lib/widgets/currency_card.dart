import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String title, amount, currencyCode;
  final IconData currencyIcon;
  final bool isInverted;
  final int index;

  const CurrencyCard({
    super.key,
    required this.title,
    required this.amount,
    required this.currencyCode,
    required this.currencyIcon,
    required this.isInverted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? const Color(0xff212121) : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: isInverted ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      currencyCode,
                      style: TextStyle(
                        color: isInverted
                            ? Colors.white.withOpacity(0.7)
                            : Colors.black.withOpacity(0.7),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(
                  -5,
                  12.5,
                ),
                child: Icon(
                  currencyIcon,
                  color: isInverted ? Colors.white : Colors.black,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
