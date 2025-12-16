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
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listwithoutmodel');
            }, 
            child: const Text('API List without Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mulitiWithModel');
            }, 
            child: const Text('API Multi Data with Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '//mulitiWithModel');
            }, 
            child: const Text('API Multi Data without Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/loginWithModel');
            }, 
            child: const Text('API Login with Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/loginWithoutModel');
            }, 
            child: const Text('API Login without Model Screen'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/createJobHomeScreen');
            }, 
            child: const Text('Create Job'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registerScreen');
            }, 
            child: const Text('Register Screen'),
          ),

        ],
      ),
    );
  }
}