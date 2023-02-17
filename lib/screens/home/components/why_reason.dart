import 'package:flutter/material.dart';

import '../../../constants.dart';

import '../../../model.dart/reason_model.dart';

import 'reason.dart';

class WhyReason extends StatelessWidget {
  const WhyReason({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: kMAxWidth),
      child: Column(
        children: [
          Text(
            'Почему выбирают именно нас',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              fontFamily: 'RussoOne'
            ),
          ),
          SizedBox(
            height: kPadding,
          ),
          Text(
            'Причины, по которым к нам обращаются многочисленные клиенты',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          //create model of our product images

          // Products()
          GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              // childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) => Reasons(
              press: () {},
              reason: reasons[index],
            ),
            itemCount: reasons.length,
          ),
          // SizedBox(
          //   height: 90,
          // )
        ],
      ),
    );
  }
}
