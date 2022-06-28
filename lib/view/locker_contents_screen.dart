import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oro_task/view/subscription_screen.dart';
import 'package:oro_task/widgets/lockers_con_widget.dart';

class LockerContentsScreen extends StatelessWidget {
  const LockerContentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQuery.width * 0.043,
                  horizontal: mediaQuery.width * 0.038,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: mediaQuery.width * 0.065,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.04,
                    ),
                    Text(
                      'Locker Contents',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: mediaQuery.width * 0.05,
                          color: Colors.black,
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(
                    mediaQuery.width * 0.035,
                  ),
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.585,
                        crossAxisSpacing: mediaQuery.width * 0.035,
                        mainAxisSpacing: mediaQuery.width * 0.035,
                      ),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return const LockerConWidget();
                        // return Container(
                        //   color: Colors.red,
                        // );
                      }),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: mediaQuery.width * 0.05),
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                height: mediaQuery.width * 0.11,
                child: RaisedButton(
                  elevation: 3,
                  onPressed: () {
                    Get.to(() => const SubscriptionScreen());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFF9CA36), Color(0xFFF8B830)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        minHeight: mediaQuery.width * 0.11,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Pay',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: mediaQuery.width * 0.033,
                            color: Colors.black,
                            letterSpacing: mediaQuery.width * 0.001),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
