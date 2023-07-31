import 'package:easywaygooglemaps/pages/Signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:easywaygooglemaps/buttons/SignUpButton.dart';
import 'package:easywaygooglemaps/buttons/my_textfield.dart';
//import 'package:easywaygooglemaps/pages/social_buttom.dart';
//import 'package:flutter/foundation.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, Key});
  final usernameController = TextEditingController();
  final usernameController1 = TextEditingController();
  final usernameController2 = TextEditingController();
  final usernameController3 = TextEditingController();
  final passwordController = TextEditingController();
  void buttonPressed(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 26, 36, 0.08),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 25,),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 25,),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 25,
              ),
              const NeuButton(),
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 267, top: 22),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 267, top: 22),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signupscre()),
                          );
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 230, top: 52),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 230, top: 52),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 52),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signupscre()),
                          );
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

