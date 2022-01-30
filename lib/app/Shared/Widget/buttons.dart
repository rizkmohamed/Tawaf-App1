import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';


class MainButton extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  const MainButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: heightApp * 0.055,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kgoldColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: press,
        child: Center(
          child: Text(
            text!.tr,
            style: kWhite_20r,
          ),
        ),
      ),
    );
  }
}
