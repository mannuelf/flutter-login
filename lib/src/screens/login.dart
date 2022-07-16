import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [emailField(), passwordField(), submitButton()],
          ),
        ));
  }

  Widget emailField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          labelText: 'Add Email',
          hintText: 'you@example.com',
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            labelText: 'Enter Password', hintText: 'Password'),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, onPrimary: Colors.white),
        onPressed: (() => print('submitting')),
        child: const Text('Submit'));
  }
}
