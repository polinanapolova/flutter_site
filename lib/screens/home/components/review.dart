import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/review_model.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
    required this.review,
    required this.press,
  });
  final Review review;
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
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      review.image,
                      width: 120,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    review.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: kPadding / 2,
                  ),
                  Text(
                    review.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  // SizedBox(
                  //   height: 60,
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
