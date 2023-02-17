import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/product_model.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
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
                      product.image,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: kPadding / 2,
                  ),
                  Text(
                    'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: kPadding / 2,
                  ),
                  Text(
                    product.price,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: kPadding / 2,
                  ),
                  MaterialButton(
                    height: 40,
                    minWidth: 200,
                    color: Color.fromARGB(255, 237, 122, 0),
                    onPressed: () {},
                    child: Text(
                      'Купить',
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
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
