 
import 'package:flutter/material.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';

class BoxGrey extends StatelessWidget {
  final Widget? child;
  final double? height;
  const BoxGrey({
    Key? key,
    required this.child,
    this.height ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
       
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kcardgray,
          borderRadius: BorderRadius.circular(10),
           boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
             blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(0, 2),

          
            ),
          ],
        ),
        child: child);
  }
}
