import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List sliderImage = [
    "images/stat_caro.png",
    "images/stat_caro.png",
    "images/stat_caro.png"
  ];
  int activePage = 0;
  late PageController pagecontroller;

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle,
        ),  
      );
    });
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 5 : 20;
    return AnimatedContainer(
      duration: Duration(
        seconds: 1,
      ),
      curve: Curves.easeInOutCubicEmphasized,
      margin: EdgeInsets.all(margin),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          sliderImage[pagePosition],
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pagecontroller = PageController(
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: SvgPicture.asset(
      //     "svg/icon/bg_header_birthday.svg",
      //     fit: BoxFit.fill,
      //   ),
      //   backgroundColor: Color.fromARGB(255, 183, 28, 28),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                SvgPicture.asset(
                  "svg/icon/bg_header_birthday.svg",
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: SvgPicture.asset(
                        "svg/icon/iglo_logo_small_white.svg",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16,
                      ),
                      child: SvgPicture.asset(
                        "svg/icon/ico_notif_off.svg",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(children: [
              TextSpan(
                text: "Happy Birthday, ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Annisa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              controller: pagecontroller,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemCount: sliderImage.length,
              itemBuilder: ((context, pagePosition) {
                bool active = pagePosition == activePage;
                return InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    print("Slider got tapped");
                  },
                  child: slider(
                          sliderImage,
                          pagePosition,
                          active,
                        ),
                );
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(
              sliderImage.length,
              activePage,
            ),
          ),
        ],
      ),
    );
  }
}
