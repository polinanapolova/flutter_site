import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/catalog_model.dart';

class Catalogs extends StatelessWidget {
  const Catalogs({
    super.key,
    required this.catalog,
    required this.press,
  });
  final Catalog catalog;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(kPadding / 2),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              catalog.image,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            textDirection: TextDirection.ltr,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                catalog.title,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                catalog.text,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                catalog.price,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                height: 40,
                                minWidth: 200,
                                color: Color.fromARGB(255, 237, 122, 0),
                                onPressed: () {},
                                child: Text(
                                  'Купить',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
