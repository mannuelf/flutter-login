import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              Container(margin: const EdgeInsets.only(top: 25.0)),
              passwordField(),
              Container(margin: const EdgeInsets.only(top: 25.0)),
              submitButton()
            ],
          ),
        ));
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Add Email',
        hintText: 'you@example.com',
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Email cannot be empty.';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email.';
        }
        return null;
      },
      onSaved: (String? value) {
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Enter Password', hintText: 'Password'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Password cannot be empty.';
        }
        if (value.length < 4) {
          return 'Password must be at least 4 characters long.';
        }
        return null;
      },
      onSaved: (String? value) {
        print(value);
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, onPrimary: Colors.white),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
          }
        },
        child: const Text('Submit'));
  }
}
