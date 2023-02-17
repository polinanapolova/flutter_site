import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/product_model.dart';
import 'product.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: kMAxWidth),
      child: Column(
        children: [
          Text(
            'Популярные товары',
            style: TextStyle(
              fontFamily: 'RussoOne',
              fontSize: 40,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: kPadding,
          ),
          Text(
            'В каталоге нашего магазина представлено большое количество строительных материалов',
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
            itemBuilder: (context, index) => Products(
              press: () {},
              product: products[index],
            ),
            itemCount: products.length,
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
