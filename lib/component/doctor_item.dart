import 'dart:async';

import 'package:flutter/material.dart';
import '../../../utils/app_constant/colors.dart';
import '../data/models/doctor.dart';
import '../utils/app_constant/app_gradient.dart';

class DoctorItem extends StatefulWidget {
  const DoctorItem(
      {Key? key,
      required this.doctor,
      required this.index,
      required this.showAnim})
      : super(key: key);
  final Doctor doctor;
  final int index;
  final bool showAnim;

  @override
  _DoctorItemState createState() => _DoctorItemState();
}

class _DoctorItemState extends State<DoctorItem> {
  bool showAnimation = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.showAnim != showAnimation) {
      handleAnimation();
    }
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: showAnimation ? 0 : 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: showAnimation ? 80 : 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: searchInput,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        gradient: widget.doctor.gender == "m"
                            ? AppGradient.gradient[1]
                            : AppGradient.gradient[0],
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(widget.doctor.picture),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.doctor.fullName,
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white.withOpacity(.8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                            child: Text(
                              widget.doctor.specialties,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(.6)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                size: 20,
                                color: g21,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Text(
                                  widget.doctor.time,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white.withOpacity(.8)),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                  ),
                                  child: Text(
                                    widget.doctor.price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Colors.white.withOpacity(.8)),
                                  ),
                                ),
                                Expanded(child: Container()),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: widget.doctor.gender == "m"
                                        ? AppGradient.gradient[1]
                                        : AppGradient.gradient[0],
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Appointment',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                  )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Timer? _debounce;
  Future<void> handleAnimation() async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(Duration(milliseconds: ((widget.index) * 200)), () {
      setState(() {
        showAnimation = !showAnimation;
      });
    });
  }
}
