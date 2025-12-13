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
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/profile2');
          //   }, 
          //   child: const Text('Go to Profile Screen 2'),
          // ),

          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/login');
          //   }, 
          //   child: const Text('Go to Login Screen'),
          // ),

          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/register');
          //   }, 
          //   child: const Text('Go to Registration Screen'),
          // ),

          // SizedBox(height: 20),
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