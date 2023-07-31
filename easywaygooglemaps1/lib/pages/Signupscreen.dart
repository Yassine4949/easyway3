//import 'package:easywaygooglemaps/buttons/SignUpButton.dart';
import 'package:easywaygooglemaps/buttons/my_textfield.dart';
import 'package:easywaygooglemaps/buttons/social_buttom.dart';
//import 'package:easywaygooglemaps/pages/social_buttom.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../buttons/mytextfieldphone.dart';
class signupscre extends StatelessWidget {
  signupscre({super.key, Key});
  final usernameController = TextEditingController();
  final usernameController1 = TextEditingController();
  final usernameController2 = TextEditingController();
  final usernameController3 = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 26, 36, 0.08),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/balls.png'),
              const Text(
                'Sign up.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController1,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController2,
                hintText: 'email address',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextField1(
                controller: usernameController3,
                hintText: 'Phone number',
                obscureText: false,
                validator: (value) {
                  // Regular expression to match phone numbers
                  final phoneRegex = RegExp(r'^\d{10}$');
                  if (!phoneRegex.hasMatch(value!)) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController2,
                hintText: 'confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              const NeuButton1(),

            ],
          ),
        ),
      ),
    );
  }
}
