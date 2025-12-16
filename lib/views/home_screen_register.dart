import 'package:flutter/material.dart';

class HomeScreenRegister extends StatefulWidget {
    final String? id,token;
  const HomeScreenRegister({Key? key, this.id, this.token}) : super(key: key);

  @override
  State<HomeScreenRegister> createState() => _HomeScreenRegisterState();
}

class _HomeScreenRegisterState extends State<HomeScreenRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Id : ${widget.id}"),
            Text("Token : ${widget.token}"),
          ],
        ),
      ),
    );
  }
}