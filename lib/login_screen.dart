import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iglo Beyond',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const SplashScreen(title: 'Iglo Beyond Splash Screen'),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Image background = Image.asset("images/bg_splashscreen.png");
  final String appVersion = "1.0";

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: background.image, fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "images/logo.png",
                width: 150,
                height: 150,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "version $appVersion",
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "svg/icon/iglo_logo_small_white.svg",
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("svg/icon/iglo_logo_big_color.svg"),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Username"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                print("Forgot Password Text Button Has Been Clicked");
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: Text("Forgot Password"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print("Log In Button Has Been Clicked");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                shadowColor: Colors.red[700],
                elevation: 5,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text("Log In"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print("Register Button Has Been Clicked");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shadowColor: Colors.red[700],
                elevation: 5,
                side: BorderSide(color: Colors.red),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
