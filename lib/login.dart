import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexa_dairy/signup.dart';

class Login extends StatelessWidget{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //Input({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            // image: DecorationImage(
            //   image: AssetImage('assets/images/'),
            //   fit: BoxFit.cover,)
        ),
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  //maxLength: ,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.indigoAccent),
                    suffixIcon: Icon(Icons.mail_outline),
                    suffixIconColor: Colors.indigoAccent,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent, width: 2.0),
                      borderRadius: BorderRadius.circular(4.5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    obscuringCharacter: "#",
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.indigoAccent),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: Colors.indigoAccent,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(4.5),
                      ),
                    )
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                login(email: emailController.text, password: passwordController.text);
              },
                  child:Text("Login")
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
              },
                  child:Text("Sign up")
              )
            ],
          ),
        ),
      ),
    );
  }
  login({required String email,required String password}){
    if(email=="" || password==""){
      log("Enter Required Field's");
    }
    else{
      log("Email is ${email}");
      log("Password is ${password}");
    }
  }

}

// TextFormField(
// decoration: InputDecoration(
// hintText: 'Enter your text here', // Your hint text
// hintStyle: TextStyle(color: Colors.grey), // Optional: Set hint text color
//
// // Set border color
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.blue, width: 2.0), // Set border color and width
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.green, width: 3.0), // Set focused border color and width (optional)
// ),
// ),
// ),

