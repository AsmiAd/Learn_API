import 'package:flutter/material.dart';


class HomeScreenLogin extends StatefulWidget {
  final String? token;
  const HomeScreenLogin({super.key, this.token});

  @override
  State<HomeScreenLogin> createState() => _HomeScreenLoginState();
}

class _HomeScreenLoginState extends State<HomeScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
      ),

      body: Center(
        child: Text("Token : ${widget.token}", textScaleFactor: 2,),
      ),
    );
  }
}