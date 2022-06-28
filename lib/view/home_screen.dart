import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oro_task/view/ekyc.dart';
import 'package:oro_task/view/locker_contents_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var list = [
    'assets/img1.png',
    'assets/img2.png',
    'assets/img1.png',
    'assets/img2.png'
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.04,
                    vertical: mediaQuery.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/menu.png',
                      height: mediaQuery.width * 0.06,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: mediaQuery.width * 0.14,
                      width: mediaQuery.width * 0.14,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const EKycScreen());
                      },
                      child: Image.asset(
                        'assets/ekyc.png',
                        height: mediaQuery.width * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.width * 0.025,
              ),

              //Card
              Container(
                height: mediaQuery.height / 4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE6E6E6),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.05,
                        right: mediaQuery.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: mediaQuery.width * 0.05,
                        ),
                        Image.asset(
                          'assets/clock.png',
                          height: mediaQuery.width * 0.08,
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.01,
                        ),
                        Image.asset(
                          'assets/line.png',
                          height: mediaQuery.width * 0.05,
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.01,
                        ),
                        Image.asset(
                          'assets/tick.png',
                          height: mediaQuery.width * 0.08,
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.01,
                        ),
                        Image.asset(
                          'assets/line.png',
                          height: mediaQuery.width * 0.05,
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.01,
                        ),
                        Image.asset(
                          'assets/account.png',
                          height: mediaQuery.width * 0.08,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CURRENT DOORSTEP LOCKER VISIT',
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: mediaQuery.width * 0.028,
                              color: const Color(0xff909090),
                              letterSpacing: mediaQuery.width * 0.001),
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.025,
                        ),
                        Text(
                          'Locker',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: mediaQuery.width * 0.06,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.025,
                        ),
                        Text(
                          'We will confirm your request shortly.',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: mediaQuery.width * 0.038,
                              color: const Color(0xff909090),
                              letterSpacing: mediaQuery.width * 0.001),
                        ),
                        SizedBox(
                          height: mediaQuery.width * 0.028,
                        ),
                        RaisedButton(
                          elevation: 3,
                          onPressed: () {
                            Get.to(() => const LockerContentsScreen());
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFF9CA36),
                                    Color(0xFFF8B830)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: mediaQuery.width * 0.7,
                                minHeight: mediaQuery.width * 0.1,
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Locker Contents',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunitoSans(
                                        textStyle: TextStyle(
                                            fontSize: mediaQuery.width * 0.04,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: mediaQuery.width * 0.02,
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: mediaQuery.width * 0.04,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              //Advantages Text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Advantages of Doorstep Lockers',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: mediaQuery.width * 0.041,
                          color: const Color(0xff454545),
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/line3.png',
                        height: mediaQuery.width * 0.0045,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.01,
                      ),
                      child: Image.asset(
                        'assets/line_logo.png',
                        height: mediaQuery.width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    mediaQuery.width * 0.02,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffE6E6E6),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                height: mediaQuery.height / 17,
                width: double.infinity,
                child: Text(
                  'Access lockers at your doorstep.',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: mediaQuery.width * 0.038,
                      color: const Color(0xff454545),
                      letterSpacing: mediaQuery.width * 0.001),
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              //A Sneak-peek Text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                ),
                child: Row(
                  children: [
                    Text(
                      'A sneak-peek into our Locker Space!',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: mediaQuery.width * 0.041,
                          color: const Color(0xff454545),
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/line2.png',
                        height: mediaQuery.width * 0.0045,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.01,
                      ),
                      child: Image.asset(
                        'assets/line_logo.png',
                        height: mediaQuery.width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    mediaQuery.width * 0.02,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffE6E6E6),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                height: mediaQuery.height / 4.5,
                width: double.infinity,
                child: Image.asset(
                  'assets/right_trian.png',
                  height: mediaQuery.width * 0.07,
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              //Where are Text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                ),
                child: Row(
                  children: [
                    Text(
                      'Where are your Locker Items stored?',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: mediaQuery.width * 0.041,
                          color: const Color(0xff454545),
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/line2.png',
                        height: mediaQuery.width * 0.0045,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.01,
                      ),
                      child: Image.asset(
                        'assets/line_logo.png',
                        height: mediaQuery.width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              Container(
                margin: EdgeInsets.only(left: mediaQuery.width * 0.04),
                height: mediaQuery.width * 0.32,
                child: ListView.builder(
                    itemCount: list.length,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: mediaQuery.width * 0.035,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              mediaQuery.width * 0.035,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffE6E6E6),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              mediaQuery.width * 0.035,
                            ),
                            child: Image.asset(
                              list[index],
                              fit: BoxFit.cover,
                              // height: mediaQuery.width * 0.4,
                              // width: mediaQuery.width * 0.4,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              //Safe Text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.04,
                ),
                child: Row(
                  children: [
                    Text(
                      'Safe & Secure Guarantee',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: mediaQuery.width * 0.041,
                          color: const Color(0xff454545),
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/line1.png',
                        height: mediaQuery.width * 0.0045,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.01,
                      ),
                      child: Image.asset(
                        'assets/line_logo.png',
                        height: mediaQuery.width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.07,
              ),

              //Sponser ads
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: mediaQuery.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/spon1.png',
                      height: mediaQuery.width * 0.1,
                    ),
                    SizedBox(
                      height: mediaQuery.width * 0.01,
                    ),
                    Image.asset(
                      'assets/spon2.png',
                      height: mediaQuery.width * 0.1,
                    ),
                    SizedBox(
                      height: mediaQuery.width * 0.01,
                    ),
                    Image.asset(
                      'assets/spon3.png',
                      height: mediaQuery.width * 0.1,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: mediaQuery.width * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
