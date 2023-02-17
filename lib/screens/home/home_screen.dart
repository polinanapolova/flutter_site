import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/model.dart/reason_model.dart';
import 'package:flutter_application_3/screens/home/components/review_cusromer.dart';
import 'package:flutter_application_3/screens/home/components/special_offer.dart';
import 'package:flutter_application_3/screens/home/components/why_reason.dart';

import '../../model.dart/product_model.dart';
import 'components/HeaderContainer.dart';
import 'components/baner_form.dart';
import 'components/banner.dart';
import 'components/catalog_product.dart';
import 'components/custom_form.dart';
import 'components/header.dart';
import 'components/nav.dart';
import 'components/popular_product.dart';
import 'components/product.dart';
import 'components/reason.dart';
import 'components/text_1.dart';
import 'components/text_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(kPadding),
              width: MediaQuery.of(context).size.width,
              // constraints: BoxConstraints(maxWidth: kMAxWidth),
              // color: kSecondaryColor,
              // height: 75
              child: Column(
                children: [
                  HeaderContainer(),
                  BunnerSection(),
                  SizedBox(
                    height: 80,
                  ),
                  PopularProduct(),
                  Text_1(),
                  SizedBox(
                    height: 80,
                  ),
                  WhyReason(),
                  SizedBox(
                    height: 80,
                  ),
                  SpecialOffer(),
                  // SizedBox(
                  //   height: 80,
                  // ),
                  BannerForm(),
                  CatalogProduct(),
                  Text_2(),
                  ReviewCustomer(),
                  CustomForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

