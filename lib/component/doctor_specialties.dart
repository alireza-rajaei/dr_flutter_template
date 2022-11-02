import 'package:flutter/material.dart';

import '../../../utils/app_constant/app_data.dart';
import 'doctor_specialties_item.dart';

class DoctorSpecialities extends StatefulWidget {
  const DoctorSpecialities({Key? key,required this.showAnimation}) : super(key: key);
  final bool showAnimation;
  @override
  _DoctorSpecialitiesState createState() => _DoctorSpecialitiesState();
}

class _DoctorSpecialitiesState extends State<DoctorSpecialities> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(!widget.showAnimation)
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              'Hello AliReza',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white.withOpacity(.3)),
            ),
          ),
          if(!widget.showAnimation)
            Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              'Medical specialties',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DoctorSpecialtiesItem(
                  index: index,
                  specialty: AppData.specialties[index],
                  showAnim: widget.showAnimation,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  width: 15,
                );
              }, itemCount: AppData.specialties.length,
            ),
          )
        ],
      ),
    );
  }


}

