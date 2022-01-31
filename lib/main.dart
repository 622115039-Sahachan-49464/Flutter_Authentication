import 'package:flutter/material.dart';
import 'package:se492_flutter_auth/screen/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:se492_flutter_auth/screen/sing_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(),
    );
  }
}

