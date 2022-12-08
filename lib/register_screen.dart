import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_sample2/login_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final referralCodeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  late bool passwordVisible;
  late bool confirmPasswordVisible;
  late bool loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    referralCodeController.addListener(() {
      setState(() {});
    });
    passwordVisible = false;
    confirmPasswordVisible = false;
    loading = false;
  }

  void onLoading() {
    setState(() {
      loading = true;
      Future.delayed(const Duration(seconds: 3), complete);
    });
  }

  Future complete() async {
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var loadingBody = Container(
      margin: const EdgeInsets.only(top: 300),
      child: Expanded(
        child: Center(
          child: LoadingAnimationWidget.discreteCircle(
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
    );

    var body = Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Please Fill In The Following Data",
            style: TextStyle(
              color: Color.fromARGB(255, 110, 8, 8),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "First Name"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: firstNameController,
            decoration: InputDecoration(
              hintText: "Input your first name",
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
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Last Name"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: lastNameController,
            decoration: InputDecoration(
              hintText: "Input your last name",
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
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Email"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Input your email",
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
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Phone number"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: phoneNumberController,
            decoration: InputDecoration(
              hintText: "Input your phone number",
              prefixIcon: const Padding(
                padding: EdgeInsets.all(10),
                child: Text("+62"),
              ),
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
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Referral Code"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: referralCodeController,
            decoration: InputDecoration(
              hintText: "Input your referral code",
              suffixIcon: referralCodeController.text.contains("INDOCYBER")
                  ? SvgPicture.asset(
                      "svg/icon/ico_data_right.svg",
                      fit: BoxFit.scaleDown,
                    )
                  : null,
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
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Password"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: !passwordVisible,
            decoration: InputDecoration(
              hintText: "Input your password",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                splashRadius: 18,
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
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
          FlutterPwValidator(
            normalCharCount: 1,
            width: 300,
            height: 150,
            minLength: 10,
            uppercaseCharCount: 1,
            numericCharCount: 1,
            specialCharCount: 1,
            onSuccess: () {},
            controller: passwordController,
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Confirm Password"),
                TextSpan(text: "*", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: confirmPasswordController,
            obscureText: !confirmPasswordVisible,
            decoration: InputDecoration(
              hintText: "Input your password",
              suffixIcon: IconButton(
                icon: Icon(
                  confirmPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                splashRadius: 18,
                onPressed: () {
                  setState(() {
                    confirmPasswordVisible = !confirmPasswordVisible;
                  });
                },
              ),
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
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print("Submit Button Has Been Clicked");
              onLoading();
              Timer(
                Duration(seconds: 3),
                (() => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Register Successful"),
                      ),
                    )),
              );
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
            child: const Text(
              "Submit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              print("Cancel Button Has Been Clicked");
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 164, 164),
              onPrimary: Colors.red,
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
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 155, 10, 0),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: ListView(
        children: [loading ? loadingBody : body],
      ),
    );
  }
}
