import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(
            onPressed: () {
          Navigator.pushNamed(context, '/home');
            }, 
            child: const Text('Go to REST API'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/withModel');
            }, 
            child: const Text('API with Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/withoutModel');
            }, 
            child: const Text('API without Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listwithmodel');
            }, 
            child: const Text('API List with Model Screen'),
          ),

          SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/commerce');
          //   }, 
          //   child: const Text('Go to Ecommerce Screen'),
          // ),

          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/counter');
          //   }, 
          //   child: const Text('Go to Counter Screen'),
          // ),

          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/counterriverpod');
          //   }, 
          //   child: const Text('Go to Counter App Riverpod Screen'),
          // ),

          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/toggle');
          //   }, 
          //   child: const Text('Go to Dark/Light Mode Screen'),
          // ),

        ],
      ),
    );
  }
}