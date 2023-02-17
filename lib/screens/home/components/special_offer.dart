import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/special_model.dart';
import 'special.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: kMAxWidth),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Специальные предложения',
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
                'Каждый месяц в нашем магазине проводятся различные скидки и акции',
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
                itemBuilder: (context, index) => Specials(
                  press: () {},
                  special: specials[index],
                ),
                itemCount: specials.length,
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
