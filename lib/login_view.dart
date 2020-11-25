import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginView extends HookWidget {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Theme(
          data: ThemeData(primarySwatch: Colors.amber).copyWith(
            buttonTheme: ButtonTheme.of(context).copyWith(
              buttonColor: Colors.amberAccent,
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 560,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 48),
                child: FlatButton(
                  child: Text(
                    'はじめる',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () async => await _auth.signInAnonymously(),
                ),
              ),
            ),
          ),
        ),
      );
}
