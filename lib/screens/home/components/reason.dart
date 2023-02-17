import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/reason_model.dart';

class Reasons extends StatelessWidget {
  const Reasons({
    super.key,
    required this.reason,
    required this.press,
  });
  final Reason reason;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          child: Container(
            // width: 364,
            // height: 522,
            // height: 780,
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                // spacing: 32,
                // runSpacing: 16,
                // child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      reason.image,
                      width: 128,
                      height: 128,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    reason.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: kPadding / 2,
                  ),

                  Text(
                    reason.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  // SizedBox(
                  //   height: 30,
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
