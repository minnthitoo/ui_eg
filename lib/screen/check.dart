import 'package:flutter/material.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Shadow color
              offset: const Offset(0, 2), // Shadow position, (x, y)
              blurRadius: 5.0, // Blur radius
              spreadRadius: 1.0, // Spread radius
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(image: AssetImage('images/me.png'))),
            ),
            title: Text('mtoPay'),
            subtitle: Text('Pay with mtoPay'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              hintText: 'Customer ID Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(20)), // Adjust border radius as needed
                borderSide: BorderSide(
                  color: Colors.black, // Set the border color
                  width: 2.0, // Set the border width
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Colors.black, // Set the focused border color
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff12c2e9),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                child: const Text('Check'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
