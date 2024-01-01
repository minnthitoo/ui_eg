import 'package:flutter/material.dart';
import 'package:ui_eg/main.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: const Color(0xff12c2e9),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 450,
            decoration: BoxDecoration(
              color: Color(0xfffefefa),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  offset: Offset(0, 2), // Shadow position, (x, y)
                  blurRadius: 5.0, // Blur radius
                  spreadRadius: 1.0, // Spread radius
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfffaf0e6)
                  ),
                  child: Image.asset('images/money.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Successful Transaction',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('You have success paid for electricity transaction from mtoPay',
                  style: TextStyle(
                    fontSize: 16
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Balance in Wallet',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('\$22,670',
                      style: TextStyle(
                          fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Invoice',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('INV/293/A/109',
                      style: TextStyle(
                          fontSize: 18,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff12c2e9),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                        ),
                        child: const Text('Back to Home'),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
