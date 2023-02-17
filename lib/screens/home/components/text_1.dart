import 'package:flutter/material.dart';

import '../../../constants.dart';

class Text_1 extends StatelessWidget {
  const Text_1({
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
                  'Магазин строительных материалов',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300, fontFamily: 'RussoOne'),
                ),
                SizedBox(
                  height: 55,
                ),
                Text(
                  'Изделия на основе гипсовых вяжущих имеют сравнительно небольшую плотность, достаточную прочность, несгораемы, обладают высокими звуко- и тепло изоляционными свойствами, хорошо поддаются обработке (распиливанию, сверлению). Для повышения влаго- и водостойкости гипсовых изделий при их изготовлении используют гипсо-цементно-пуццолоновые и гипсошлакоцементнопуццолановые вяжущие, покрывают их водостойкими водонепроницаемыми защитными красками или пастами.',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Изделия на основе гипсовых вяжущих изготавливают из гипсового теста, гипсового раствора или гипсобетона с минеральными заполнителями (песок, керамзитовый гравий…) и органическими наполнителями (древесные опилки, стружка, камыш…). Гипсовые и гипсобетонные изделия обладают значительной хрупкостью, поэтому в них при их изготовлении вводят армирующие материалы в виде деревянных реек, камыша, металлической арматуры (сетка, проволока…).',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
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
