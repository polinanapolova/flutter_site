import 'package:flutter/material.dart';

import '../../../constants.dart';

class Text_2 extends StatelessWidget {
  const Text_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: tMAxWidth),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Условия оплаты и доставки',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'RussoOne'),
                ),
                SizedBox(
                  height: 55,
                ),
                Row(
                  children: [
                    Text(
                      'Способы доставки:',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      children: [
                        Text(
                          'Доставка по всей России - через транспортные компании, а также наложенным платежом. Стоимость доставки через транспортную компанию составляет около 500 руб., доставка наложенным платежом 400-2 000 руб. в зависимости от размера посылки.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Самовывоз.  Самовывоз со склада курьерской службы (срок доставки до пункта самовывоза составляет 7-14  дней в зависимости от региона).',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Способы оплаты:',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      children: [
                        Text(
                          'Наличные при получении – (вы делаете заказ, оставляете контактную информацию, указываете в пункте Оплата – «Наличными», при этом варианте оплата осуществляется курьеру при привозе заказа). ',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Наложенный платеж – это значит, что оплачивать заказ вы будете наличными при получении в отделении Почты России.  Дополнительные комиссии в нашем магазине отсутствуют.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
