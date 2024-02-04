import 'package:flutter/material.dart';
import 'package:mobile_money_app/pages/home_screen.dart';
import 'package:mobile_money_app/pages/main_screen.dart';
import 'package:pinput/pinput.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      color: Color(0xffeae6e6),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Please enter your PIN",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 60,
              ),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.black),
                  ),
                ),
                onCompleted: (pin) => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  )
                },
              ),
              SizedBox(
                height: 25,
              ),
              const Text("Phone Number: *******069",
                  style: const TextStyle(
                      fontWeight: FontWeight.w100, fontSize: 16)),
              SizedBox(
                height: 25,
              ),
              const Text(
                "Forgot PIN?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
