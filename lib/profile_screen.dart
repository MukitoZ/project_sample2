import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_sample2/bottom_navigation.dart';
import 'package:project_sample2/home_screen.dart';
import 'package:project_sample2/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 400,
                child: SvgPicture.asset(
                  "svg/bg_profile.svg",
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationScreen(),
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                    ),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    print("Feedback Button Has Been Clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 164, 164),
                    onPrimary: Colors.red,
                    elevation: 3,
                    minimumSize: const Size.fromHeight(40),
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
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 155, 10, 0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("Edit Profile Button Has Been Clicked");
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
                  icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
                  label: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("Application Tracking Button Has Been Clicked");
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
                  icon: SvgPicture.asset("svg/icon/ico_aplc_track.svg"),
                  label: const Text(
                    "Application Tracking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("Change Password Button Has Been Clicked");
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
                  icon: SvgPicture.asset("svg/icon/ico_chg_pass.svg"),
                  label: const Text(
                    "Change Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("My Reward Button Has Been Clicked");
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
                  icon: SvgPicture.asset("svg/icon/ico_myrwd.svg"),
                  label: const Text(
                    "My Reward",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("Bank Account Button Has Been Clicked");
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
                  icon: SvgPicture.asset("svg/icon/ico_bank_acc.svg"),
                  label: const Text(
                    "Bank Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 88, 87, 87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("Log Out Button Has Been Clicked");
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginScreen())),
                        (route) => false);
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
                  icon: SvgPicture.asset("svg/icon/ico_logout.svg"),
                  label: const Text("Log Out"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
