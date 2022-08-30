import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_sample2/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  late bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "svg/icon/iglo_logo_small_white.svg",
        ),
        backgroundColor: Color.fromARGB(255, 183, 28, 28),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("svg/icon/iglo_logo_big_color.svg"),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Username",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
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
                    controller: passwordController,
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        splashRadius: 18,
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print("Log In Button Has Been Clicked");
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 183, 28, 28),
                shadowColor: Color.fromARGB(255, 211, 47, 47),
                elevation: 5,
                minimumSize: const Size.fromHeight(50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              child: const Text("Log In"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print("Register Button Has Been Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegisterScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.grey,
                shadowColor: Color.fromARGB(255, 211, 47, 47),
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                side: const BorderSide(color: Colors.red),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Privacy Policy Button Has Been Clicked");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.white,
                shadowColor: Colors.white,
                surfaceTintColor: Colors.white,
                onSurface: Colors.white,
                elevation: 0,
                minimumSize: const Size.fromHeight(50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              icon: SvgPicture.asset("svg/icon/ico_prv_polcy.svg"),
              label: const Text(
                "Privacy Policy",
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 87, 87),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Feedback Button Has Been Clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 164, 164),
                      onPrimary: Colors.red,
                      elevation: 3,
                      // minimumSize: Size.fromWidth(20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    icon: SvgPicture.asset("svg/icon/ico_feedback.svg"),
                    label: const Text(
                      "Feedback",
                      style: TextStyle(
                        color: Color.fromARGB(255, 155, 10, 0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Share Button Has Been Clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 164, 164),
                      onPrimary: Colors.red,
                      elevation: 3,
                      // minimumSize: Size.fromWidth(20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    icon: SvgPicture.asset("svg/icon/ico_share.svg"),
                    label: const Text(
                      "Share",
                      style: TextStyle(
                        color: Color.fromARGB(255, 155, 10, 0),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
