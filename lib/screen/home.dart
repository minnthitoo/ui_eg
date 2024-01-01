import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: ListTile(
              leading: Image.asset('images/kbz.png'),
              title: const Text('KBZ Pay'),
              subtitle: const Text('Pay with KBZ Pay'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),),
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              leading: Image.asset('images/uab.jpg'),
              title: const Text('UAB Pay'),
              subtitle: const Text('Pay with UAB Pay'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),),
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              leading: Image.asset('images/wave.png'),
              title: const Text('Wave Pay'),
              subtitle: const Text('Pay with Wave Pay'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),),
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage('images/me.png')
                  )
                ),
              ),
              title: const Text('mtoPay'),
              subtitle: const Text('Pay with mtoPay'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),),
            ),
          ),
        ],
      ),
    );
  }
}
