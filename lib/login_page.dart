import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child:  Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            child: const Text('Login'))
      ),
    );
  }
}

