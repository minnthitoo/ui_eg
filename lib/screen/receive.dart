import 'package:flutter/material.dart';

class Receive extends StatelessWidget {
  const Receive({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Color(0xff12c2e9),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: Container(
            height: 350,
            padding: EdgeInsets.all(20),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/qr.png')
                    )
                  ),
                ),
                const Text('09 257 819 397',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Text('Set the amount and send to your friend to receive money',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff12c2e9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                  ),
                    onPressed: (){},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text('Set Amount'),
                    )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
