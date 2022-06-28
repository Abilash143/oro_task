import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oro_task/controller/change_cubit.dart';
import 'package:oro_task/view/home_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EKycScreen extends StatefulWidget {
  const EKycScreen({Key? key}) : super(key: key);

  @override
  State<EKycScreen> createState() => _EKycScreenState();
}

class _EKycScreenState extends State<EKycScreen> {
  String languageText = 'English';
  int selectedInd = 0;
  List<String> list = [
    'assets/pdfFiles/english_pdf.pdf',
    'assets/pdfFiles/tamil_pdf.pdf',
    'assets/pdfFiles/telegu_pdf.pdf'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    // Get.reset();
    Get.offAll(() => const HomeScreen()); // Do some stuff.
    return true;
  }

  void showPdfDialog(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Future.delayed(
        const Duration(
          milliseconds: 500,
        ), () {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(child: StatefulBuilder(
              // StatefulBuilder
              builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: mediaQuery.width * 0.06,
                        top: mediaQuery.width * 0.05,
                      ),
                      child: Text(
                        'e-Kyc Confirmation',
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: mediaQuery.width * 0.041,
                            color: Colors.black,
                            letterSpacing: mediaQuery.width * 0.001),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: mediaQuery.width * 0.06,
                        top: mediaQuery.width * 0.05,
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFE1A8),
                          borderRadius: BorderRadius.circular(80.0)),
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.height * 0.035,
                      child: PopupMenuButton(
                        offset: const Offset(0, 0),
                        padding: EdgeInsets.all(0),
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: mediaQuery.height * 0.01),
                              child: Text(
                                languageText,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: mediaQuery.height * 0.014,
                                    color: Colors.black,
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            // enabled: false,
                            onTap: () {
                              setState(() {
                                languageText = 'English';
                                selectedInd = 0;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'English',
                                  style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: mediaQuery.height * 0.016,
                                      color: Colors.black,
                                      letterSpacing: mediaQuery.width * 0.001),
                                ),
                                if (selectedInd == 0)
                                  Icon(
                                    Icons.done,
                                    color: Colors.black,
                                    size: mediaQuery.height * 0.020,
                                  ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            // enabled: false,
                            onTap: () {
                              setState(() {
                                languageText = 'Tamil';
                                selectedInd = 1;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tamil',
                                  style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: mediaQuery.height * 0.016,
                                      color: Colors.black,
                                      letterSpacing: mediaQuery.width * 0.001),
                                ),
                                if (selectedInd == 1)
                                  Icon(
                                    Icons.done,
                                    color: Colors.black,
                                    size: mediaQuery.height * 0.020,
                                  ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            // enabled: false,
                            onTap: () {
                              setState(() {
                                languageText = 'Telegu';
                                selectedInd = 2;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Telegu',
                                  style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: mediaQuery.height * 0.016,
                                      color: Colors.black,
                                      letterSpacing: mediaQuery.width * 0.001),
                                ),
                                if (selectedInd == 2)
                                  Icon(
                                    Icons.done,
                                    color: Colors.black,
                                    size: mediaQuery.height * 0.020,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQuery.width * 0.017,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: mediaQuery.width * 0.06,
                  ),
                  child: Text(
                    'Please read the document carefully before proceeding further..',
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: mediaQuery.width * 0.032,
                        color: const Color(0xff909090),
                        letterSpacing: mediaQuery.width * 0.001),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.width * 0.035,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: mediaQuery.width * 0.06,
                  ),
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: mediaQuery.width * 0.030,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    left: mediaQuery.width * 0.06,
                    right: mediaQuery.width * 0.06,
                    bottom: mediaQuery.width * 0.05,
                  ),
                  child: Container(
                    height: mediaQuery.height / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: mediaQuery.width * 0.045,
                      color: const Color(0xffC4C4C4),
                    )),
                    width: double.infinity,
                    // color: Colors.red,
                    child: SfPdfViewer.asset(list[selectedInd]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: mediaQuery.width * 0.08,
                      width: mediaQuery.width * 0.17,
                      child: RaisedButton(
                        color: Colors.white,
                        elevation: 2,
                        onPressed: () {
                          Navigator.pop(context);
                          Get.back();
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.width * 0.002,
                                  color: const Color(0xffC4C4C4),
                                ),
                                borderRadius: BorderRadius.circular(80.0)),
                            constraints: BoxConstraints(
                              maxWidth: mediaQuery.width * 0.17,
                              minHeight: mediaQuery.width * 0.08,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Close',
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
                    SizedBox(
                      width: mediaQuery.width * 0.030,
                    ),
                    SizedBox(
                      height: mediaQuery.width * 0.08,
                      child: RaisedButton(
                        elevation: 2,
                        onPressed: () {},
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
                              maxWidth: mediaQuery.width * 0.5,
                              minHeight: mediaQuery.width * 0.08,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Confirm to proceed further',
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
                SizedBox(
                  height: mediaQuery.width * 0.06,
                ),
              ],
            );
          }));
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    showPdfDialog(context);
    return Scaffold(body: Container());
  }
}
