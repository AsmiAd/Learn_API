import 'package:flutter/material.dart';
import 'package:learn_api/models/login_model.dart';
import 'package:learn_api/services/api_service.dart';
import 'package:learn_api/views/home_screen_login.dart';


class LoginScreenWithoutModel extends StatefulWidget {
  const LoginScreenWithoutModel({super.key});

  @override
  State<LoginScreenWithoutModel> createState() => _LoginScreenWithoutModelState();
}

class _LoginScreenWithoutModelState extends State<LoginScreenWithoutModel> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  LoginModel loginModel = LoginModel();
  bool isReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  loginModel.token ==null || loginModel.token ==""?
        const Text("Login Screen"):Text("Login Screen ${loginModel.token}"),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Enter Email"
              ),
            ),


            TextField(
              controller: password,
              decoration: const InputDecoration(
                  hintText: "Enter Password"
              ),
            ),


            const SizedBox(height: 50),


            SizedBox(
              height: 50, width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {isReady = true;});

                    ApiServices().loginWithOutModel(email.text.toString(), password.text.toString()).then((value){
                      setState(() {
                        isReady = false;
                        print(value["token"]);
                    
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreenLogin(
                            token : value["token"].toString()
                        )));
                    
                      });
                    }).onError((error, stackTrace){
                      setState(() {isReady = false;});
                      print(error);
                    });
                    


                  },
                  child: isReady ==true?
                  const Center(child: CircularProgressIndicator(color: Colors.white,),):
                  const Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}