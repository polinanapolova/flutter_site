import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWebNav extends StatelessWidget {
  const HeaderWebNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderNav(
          press: () {},
          title: 'ПОЧЕМУ МЫ',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderNav(
          press: () {},
          title: 'КАТАЛОГ',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderNav(
          press: () {},
          title: 'ОТЗЫВЫ',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderNav(
          press: () {},
          title: 'КОНТАКТЫ',
        ),
      ],
    );
  }
}

class HeaderNav extends StatelessWidget {
  const HeaderNav({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
        ),
      ),
    );
  }
}
