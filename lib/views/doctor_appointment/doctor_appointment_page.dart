import 'package:flutter/material.dart';

import '../../component/doctor_appointment_body.dart';
import '../../utils/app_constant/colors.dart';

class DoctorAppointmentPage extends StatefulWidget {
  const DoctorAppointmentPage({Key? key}) : super(key: key);

  @override
  _DoctorAppointmentPageState createState() => _DoctorAppointmentPageState();
}

class _DoctorAppointmentPageState extends State<DoctorAppointmentPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueGray,
      body: Container(
          padding: const EdgeInsets.only(top: 35),
          child: const DoctorAppointmentBody()),
    );
  }
}
