import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  Future<void> _signInAnonymously () async {
    try{
      final userCredentials = await FirebaseAuth.instance.signInAnonymously();
      print(userCredentials.user!.uid);
    } catch (e) {
      print(e.toString());
    }
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () => _signInAnonymously(),
              child: const Text("Go anonymous")
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authetication"),
      ),
      body: _buildContent(),
    );
  }
}
