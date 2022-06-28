import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockerConWidget extends StatelessWidget {
  const LockerConWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: mediaQuery.width / 2.2,
      height: mediaQuery.height / 2.85,
      child: Stack(
        children: [
          // Container(
          //   width: mediaQuery.width / 2.2,
          //   height: mediaQuery.height / 2.85,
          //   color: Colors.blue,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: mediaQuery.width * 0.03),
                width: mediaQuery.width / 2.6,
                height: mediaQuery.height / 7,
                alignment: Alignment.center,
                color: const Color(0xffF9F9F9),
                child: Text(
                  'SEAL PHOTOS \n HERE',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w500,
                      fontSize: mediaQuery.width * 0.035,
                      color: Colors.black,
                      letterSpacing: mediaQuery.width * 0.001),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: mediaQuery.width / 2.6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'OSS1001',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w500,
                          fontSize: mediaQuery.width * 0.033,
                          color: Colors.black,
                          letterSpacing: mediaQuery.width * 0.001),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: mediaQuery.width * 0.019,
                    horizontal: mediaQuery.width * 0.03,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Necklace',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: mediaQuery.width * 0.033,
                            color: Colors.black,
                            letterSpacing: mediaQuery.width * 0.001),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.width * 0.01),
                        decoration: BoxDecoration(
                            color: const Color(0xffFFE1A8).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(80.0),
                            border: Border.all(
                              width: 1.2,
                              color: const Color(0xffFFE1A8),
                            )),
                        child: Text(
                          '02 QTY',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: mediaQuery.width * 0.020,
                              color: Colors.black,
                              letterSpacing: mediaQuery.width * 0.001),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: mediaQuery.width * 0.03,
                        left: mediaQuery.width * 0.03,
                        right: mediaQuery.width * 0.028,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUALITY',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: mediaQuery.width * 0.016,
                                    color: const Color(0xff909090),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                              Text(
                                '22 carats',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: mediaQuery.width * 0.027,
                                    color: const Color(0xff454545),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: mediaQuery.width * 0.019,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GROSS WEIGHT',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: mediaQuery.width * 0.016,
                                    color: const Color(0xff909090),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                              Text(
                                '150 grams',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: mediaQuery.width * 0.027,
                                    color: const Color(0xff454545),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: mediaQuery.width * 0.019,
                        left: mediaQuery.width * 0.028,
                        right: mediaQuery.width * 0.03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STONE WEIGHT',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: mediaQuery.width * 0.016,
                                    color: const Color(0xff909090),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                              Text(
                                '30 grams',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: mediaQuery.width * 0.027,
                                    color: const Color(0xff454545),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: mediaQuery.width * 0.019,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NET WEIGHT / ANW',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: mediaQuery.width * 0.016,
                                    color: const Color(0xff909090),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                              Text(
                                '4g / 4g',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: mediaQuery.width * 0.027,
                                    color: const Color(0xff454545),
                                    letterSpacing: mediaQuery.width * 0.001),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: mediaQuery.width * 0.037,
                  child: RaisedButton(
                    elevation: 3,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          color: const Color(0xffFFE1A8),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: mediaQuery.width * 0.27,
                          minHeight: mediaQuery.width * 0.037,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'VIEW GOLD PHOTOS',
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: mediaQuery.width * 0.02,
                              color: Colors.black,
                              letterSpacing: mediaQuery.width * 0.001),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
