import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/catalog_model.dart';
import 'catalog.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({
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
                'Каталог строительных материалов',
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
                  crossAxisCount: 2,
                  childAspectRatio: 1.7,
                ),
                itemBuilder: (context, index) => Catalogs(
                  press: () {},
                  catalog: catalogs[index],
                ),
                itemCount: catalogs.length,
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
