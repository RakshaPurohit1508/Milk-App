import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:hexa_dairy/oju.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BackgroundImageScreen(),
    );
  }
}

class BackgroundImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/id/1287218584/photo/dairy-products-on-blue-background-with-copy-space.jpg?s=612x612&w=0&k=20&c=AyGIszGerjN_L_sSyEqKoE_HLF-a_VsVlmtE775n5eQ='),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX:10, sigmaY:5),
            child: Container(
              color: Colors.white.withOpacity(0.30),
            ),
          ),
          Center(
            child: Stack(
              children: [
                Positioned(
                  bottom: 40,
                  right: 5,
                  child: Text(
                    'SIP SMILE & SHINE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      backgroundColor: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: 15,
           right: 15,
           child:  Center(
              child: IconButton(
                icon: Icon(Icons.arrow_drop_down, size: 48.0, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myapp()),
                  );
                },
              ),

            )
                     ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to hexa dairy',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
