import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/review_model.dart';
import 'review.dart';

class ReviewCustomer extends StatelessWidget {
  const ReviewCustomer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(
      //   color: kPrimaryColor,
      // ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: kMAxWidth),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Отзывы наших клиентов',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'RussoOne',
                ),
              ),
              SizedBox(
                height: kPadding,
              ),
              Text(
                'Что говорят о нашей компании довольные клиенты',
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
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => Reviews(
                  press: () {},
                  review: reviews[index],
                ),
                itemCount: reviews.length,
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
