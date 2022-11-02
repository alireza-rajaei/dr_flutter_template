import 'package:dr_flutter_template/component/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:lottie/lottie.dart';

import '../../../utils/app_constant/colors.dart';
import '../utils/app_constant/app_data.dart';
import 'doctor_item.dart';
import 'doctor_specialties.dart';

class DoctorAppointmentBody extends StatefulWidget {
  const DoctorAppointmentBody({Key? key}) : super(key: key);

  @override
  _DoctorAppointmentBodyState createState() => _DoctorAppointmentBodyState();
}

class _DoctorAppointmentBodyState extends State<DoctorAppointmentBody> {
  bool showAnimation = true;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    handleAnimation();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const ToolbarBody(
              isOnTop: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DoctorSpecialities(
                      showAnimation: showAnimation,
                    ),
                    if(!showAnimation)
                      Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.white.withOpacity(.05),
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                    ),
                    if (!showAnimation)
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 20),
                        child: Row(
                          children: [
                            Text(
                              'Top Doctor',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(.7)),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              'See All',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: g21),
                            ),
                          ],
                        ),
                      ),
                    ListView.separated(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return DoctorItem(
                          doctor: AppData.doctors[index],
                          index: index,
                          showAnim: showAnimation,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 10,
                        );
                      },
                      itemCount: AppData.doctors.length,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        if (showAnimation)
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Center(
              child: Lottie.asset(
                'assets/animations/6bgdark.json',
                width: 25,
                height: 25,
              ),
            ),
          ),
      ],
    );
  }

  Future<void> handleAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
    );
    setState(() {
      showAnimation=!showAnimation;
    });
  }
}
