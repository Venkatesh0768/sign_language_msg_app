import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sign_language_msg_app/screens/welcome_screen.dart';
import 'package:sign_language_msg_app/screens/login_screen.dart';
import 'package:sign_language_msg_app/screens/registration_screen.dart';
import 'package:sign_language_msg_app/screens/chat_screen.dart';

void main() {
  // if (kIsWeb) {
  //   Firebase.initializeApp(
  //       options: FirebaseOptions(
  //           apiKey: "AIzaSyAXXnPoHwsBan_gyDthJ1T31X6fdWJhzlY",
  //           authDomain: "sign-language-msg-app.firebaseapp.com",
  //           projectId: "sign-language-msg-app",
  //           storageBucket: "sign-language-msg-app.firebasestorage.app",
  //           messagingSenderId: "818871687909",
  //           appId: "1:818871687909:web:117d5c8f9ed4371abe520c",
  //           measurementId: "G-XSC4CTM09Y"));
  // }else{
  //   Firebase.initializeApp();
  // }

  

  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.black54),
      //   ),
      // ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}


