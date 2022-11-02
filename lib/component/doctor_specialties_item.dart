import 'dart:async';

import 'package:flutter/material.dart';

import '../data/models/specialty.dart';
import '../utils/app_constant/app_gradient.dart';

class DoctorSpecialtiesItem extends StatefulWidget {
  final int index;
  final Specialty specialty;
  final bool showAnim;

  const DoctorSpecialtiesItem({
    Key? key,
    required this.index,
    required this.specialty,
    required this.showAnim,
  }) : super(key: key);

  @override
  _DoctorSpecialtiesItemState createState() => _DoctorSpecialtiesItemState();
}

class _DoctorSpecialtiesItemState extends State<DoctorSpecialtiesItem> {
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
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: showAnimation ? 40 : 0,
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: showAnimation ? 0 : 1,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: AppGradient.gradient[widget.index % 4]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.specialty.iconPath.isNotEmpty)
                  ImageIcon(
                    AssetImage(widget.specialty.iconPath),
                    color: Colors.white,
                    size: 50,
                  ),
                Padding(
                  padding: EdgeInsets.only(
                    top: widget.specialty.iconPath.isNotEmpty ? 8.0 : 0,
                  ),
                  child: Text(
                    widget.specialty.name,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize:
                              widget.specialty.iconPath.isNotEmpty ? 11 : 15,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
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
