import 'package:flutter/material.dart';
import 'package:sign_language_msg_app/screens/welcome_screen.dart';
import 'package:sign_language_msg_app/screens/login_screen.dart';
import 'package:sign_language_msg_app/screens/registration_screen.dart';
import 'package:sign_language_msg_app/screens/chat_screen.dart';


void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => ChatScreen(),
      },
    );
  }
}
