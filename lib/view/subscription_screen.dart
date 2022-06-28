import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oro_task/controller/change_cubit.dart';
import '../model/selection_model.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  bool val = false;
  int selectedInd = 5;
  int tax = 0;
  String months = '0 Months';
  int amount = 0;

  void calculateTax(int? amnt, String? mon) {
    tax = (amnt! * 0.18).toInt();

    amount = amnt + tax;

    months = mon!;
  }

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
    rampResult =
        ValueModel(name: '6 Months', price: '1,444', emi: '₹ 240 MONTHLY');
    Get.back();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF5F5F5),
          body: BlocBuilder<ChangeCubit, ValueModel>(builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Column(
                children: [
                  //top bar
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.width * 0.03,
                      vertical: mediaQuery.width * 0.043,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: mediaQuery.width * 0.09,
                              height: mediaQuery.width * 0.09,
                              padding: EdgeInsets.all(
                                mediaQuery.width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                // color: const Color(0xff7c94b6),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFFE79B),
                                    Color(0xFFFFB81E)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50.0)),
                                border: Border.all(
                                  color: const Color(0xFFFFAA07),
                                  width: 2.0,
                                ),
                              ),
                              child: Image.asset(
                                'assets/pay_icon.png',
                              ),
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.05,
                            ),
                            Text(
                              'Choose Plan & Pay',
                              style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: mediaQuery.width * 0.045,
                                  color: Colors.black,
                                  letterSpacing: mediaQuery.width * 0.001),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            rampResult = ValueModel(
                                name: '6 Months',
                                price: '1,444',
                                emi: '₹ 240 MONTHLY');
                            Get.back();
                          },
                          child: Icon(
                            Icons.close,
                            size: mediaQuery.width * 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.015,
                  ),
                  //plans
                  ListView.builder(
                      shrinkWrap: true,
                      // controller: _controller,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: rampValues.length,
                      itemBuilder: (context, int index) {
                        var tt = rampValues[index];

                        return Container(
                            height: mediaQuery.height * 0.1,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              bottom: mediaQuery.height * 0.015,
                              left: mediaQuery.height * 0.015,
                              right: mediaQuery.height * 0.015,
                            ),
                            decoration: BoxDecoration(
                              color: selectedInd == index
                                  ? const Color(0xFFFFF7EA)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(
                                  mediaQuery.width * 0.03),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale: 0.9,
                                      child: Radio<ValueModel>(
                                          value: tt,
                                          groupValue: rampResult,
                                          activeColor: const Color(0xFF5A953E),
                                          onChanged: (ValueModel? value) {
                                            // setState(() {
                                            // rampResult = value;
                                            selectedInd = index;
                                            calculateTax(
                                                value!.amnt, value.name);
                                            context
                                                .read<ChangeCubit>()
                                                .change(value);
                                            // });
                                          }),
                                    ),
                                    Text(
                                      tt.name!,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunitoSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: mediaQuery.width * 0.04,
                                          color: Colors.black,
                                          letterSpacing:
                                              mediaQuery.width * 0.001),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      right: mediaQuery.width * 0.045),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '₹ ${tt.price!}',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: mediaQuery.width * 0.045,
                                            color: Colors.black,
                                            letterSpacing:
                                                mediaQuery.width * 0.001),
                                      ),
                                      SizedBox(
                                        height: mediaQuery.width * 0.005,
                                      ),
                                      Text(
                                        tt.emi!,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: mediaQuery.width * 0.024,
                                            color: const Color(0xFF5A953E),
                                            letterSpacing:
                                                mediaQuery.width * 0.001),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ));

                        // return ListTile(
                        //   title: Text(tt.name!),
                        //   leading:
                        // Radio<ValueModel>(
                        //       value: tt,
                        //       groupValue: rampResult,
                        //       onChanged: (ValueModel? value) {
                        //         // setState(() {
                        //         // rampResult = value;
                        //         context.read<ChangeCubit>().change(value!);
                        //         // });
                        //       }),
                        // );
                      }),

                  //Card
                  Container(
                    margin: EdgeInsets.only(
                      top: mediaQuery.height * 0.035,
                      left: mediaQuery.height * 0.015,
                      right: mediaQuery.height * 0.015,
                    ),
                    height: mediaQuery.height * 0.1,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFE79B), Color(0xFFFFB81E)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: mediaQuery.height * 0.015,
                              top: mediaQuery.height * 0.022),
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: mediaQuery.height * 0.027,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: mediaQuery.height * 0.055),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NO SECURITY DEPOSIT',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: mediaQuery.width * 0.035,
                                      color: Colors.black,
                                      letterSpacing: mediaQuery.width * 0.001),
                                ),
                                SizedBox(
                                  height: mediaQuery.height * 0.013,
                                ),
                                Flexible(
                                  child: Text(
                                    'Oro Safe does not charge security deposit for your lockers.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: mediaQuery.width * 0.025,
                                        color: Colors.black,
                                        letterSpacing:
                                            mediaQuery.width * 0.001),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  //Tax
                  Text(
                    'Tax payable (18%): ₹$tax',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: mediaQuery.width * 0.04,
                        color: Colors.black,
                        letterSpacing: mediaQuery.width * 0.001),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),

                  //last card
                  Container(
                    height: mediaQuery.height * 0.15,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFE9BF), Color(0xffF5F5F5)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              // left: mediaQuery.height * 0.02,
                              right: mediaQuery.height * 0.02,
                              top: mediaQuery.height * 0.02),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: mediaQuery.height * 0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'DURATION',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: mediaQuery.width * 0.028,
                                            color: const Color(0xFF454545),
                                            letterSpacing:
                                                mediaQuery.width * 0.0018),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'AMOUNT',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.nunitoSans(
                                                fontWeight: FontWeight.w700,
                                                fontSize:
                                                    mediaQuery.width * 0.028,
                                                color: const Color(0xFF454545),
                                                letterSpacing:
                                                    mediaQuery.width * 0.0018),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom:
                                                    mediaQuery.width * 0.006),
                                            child: Text(
                                              '(INCL TAX)',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.nunitoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      mediaQuery.width * 0.018,
                                                  color:
                                                      const Color(0xFF454545),
                                                  letterSpacing:
                                                      mediaQuery.width *
                                                          0.0018),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mediaQuery.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: mediaQuery.height * 0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        months,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: mediaQuery.width * 0.045,
                                            color: Colors.black,
                                            letterSpacing:
                                                mediaQuery.width * 0.001),
                                      ),
                                      Text(
                                        '₹ $amount',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: mediaQuery.width * 0.045,
                                            color: Colors.black,
                                            letterSpacing:
                                                mediaQuery.width * 0.001),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mediaQuery.height * 0.002,
                                ),
                                Row(
                                  children: [
                                    Transform.scale(
                                        scale: 0.9,
                                        child: Checkbox(
                                          activeColor: const Color(0xFF5A953E),
                                          value: val,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              val = value!;
                                            });
                                          },
                                        )),
                                    Text(
                                      'I agree to terms & conditions',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunitoSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: mediaQuery.width * 0.032,
                                          color: Colors.black,
                                          letterSpacing:
                                              mediaQuery.width * 0.001),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: mediaQuery.width * 0.05),
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.width * 0.05),
                    height: mediaQuery.width * 0.11,
                    child: RaisedButton(
                      elevation: 3,
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
                            maxWidth: double.infinity,
                            minHeight: mediaQuery.width * 0.11,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Confirm Plan Selection',
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
            );
          })),
    );
  }
}
