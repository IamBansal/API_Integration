import 'package:flutter/material.dart';

import 'home.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('LoginScreen'),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    const Text('Welcome',
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 1.2,
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  email = value;
                                },
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                                decoration: const InputDecoration(
                                    hintText: 'Username or Email',
                                    hintStyle:
                                    TextStyle(fontSize: 15, letterSpacing: 1.2)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: TextFormField(
                                obscureText: true,
                                obscuringCharacter: '*',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  password = value;
                                },
                                decoration: const InputDecoration(
                                    hintText: 'Password',
                                    hintStyle:
                                    TextStyle(fontSize: 15, letterSpacing: 1.2)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'LOG IN',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                                    },
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                        fixedSize: const Size(60, 60)),
                                    child: Image.network(
                                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                                        fit: BoxFit.cover),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  const Text('or'),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50.0)),
                                        fixedSize: const Size(60, 60),
                                      ),
                                      child: Icon(
                                        Icons.list,
                                        size: 30,
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account? ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 113, 113, 113)),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Sign Up',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 29, 93, 158))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}