import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: EdgeInsets.all(15),
      constraints: BoxConstraints(maxWidth: kMAxWidth),
      child: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}
