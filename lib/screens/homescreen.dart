import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //nike logo and search button
        title: SizedBox(
          height: 40,
          child: Row(
            children: [
              Image.asset(
                'images/logo1.jpg',
              ),
              const SizedBox(
                height: 10,
              ),
             
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        //sa loob ng body may mga card at scrollable sya pababa
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart')
        ],
      ),
    );
    ;
  }
}
