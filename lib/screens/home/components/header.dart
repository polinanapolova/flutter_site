import 'package:flutter/material.dart';

import 'nav.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/tobiz_logo_def_black.png',
          width: 200,
          height: 45,
        ),
        Spacer(),
        //navigation
        HeaderWebNav(),
        SizedBox(
          width: 24,
        ),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.black,
            ),
            Text(
              '+7 800 333 22 33',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
