import 'package:flutter/material.dart';

import '../../../constants.dart';

class BannerForm extends StatelessWidget {
  const BannerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/541948ab5f828406a3795c0102af2763.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.darken),
        ),
      ),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Container(
              constraints: BoxConstraints(maxWidth: kMAxWidth),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.blue,
                      // height: 400,
                      child: Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 100,
                          // ),
                          Text(
                            'СТРОЙМАТЕРИАЛЫ СО\nСКИДКОЙ ДО 20%',
                            style: TextStyle(
                              fontSize: 56,
                              fontFamily: 'RussoOne',
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Успейте заказать в нашем магазине строительные\nматериалы со скидкой до 20%. Для этого вам необходимо\nотслеживать проводимые нашей компанией скидки и\nакции. Чтобы заказать стройматериалы, оставьте заявку на\nсайте или позвоните по номеру 8 800 333 22 33',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 200,
                  // ),
                  //form
                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.white,

                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5, color: Color.fromARGB(255, 237, 122, 0)),
                        color: Colors.white,
                      ),
                      // height: 400,
                      // color: Colors.red,
                      child: Form(
                        child: Column(
                          // textDirection: TextDirection.ltr,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              'Оставьте заявку на сайте',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: FractionalOffset(0.1, 0),
                              child: Text(
                                'Введите имя',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 50,
                              width: 320,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Введите имя',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                    border: OutlineInputBorder(),
                                    fillColor:
                                        Color.fromARGB(47, 187, 187, 187),
                                    filled: true),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: FractionalOffset(0.15, 0),
                              child: Text(
                                'Введите номер телефона',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: FractionalOffset(0.13, 0),
                              child: Text(
                                'Наш менеджер Вам перезвонит',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 50,
                              width: 320,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'xxx-xxx-xxx',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                    border: OutlineInputBorder(
                                        // borderSide: BorderSide(
                                        //   color: Colors,
                                        // ),
                                        ),
                                    fillColor:
                                        Color.fromARGB(47, 187, 187, 187),
                                    filled: true),
                                // maxLength: 11,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Enter number phone';
                                  }
                                  String p = "[+)( .-]*[0-9]+[0-9+)( .-]*";
                                  RegExp regExp = RegExp(p);
                                  if (regExp.hasMatch(val)) return null;
                                  {
                                    return 'This is not number phone';
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              height: 50,
                              minWidth: 320,
                              color: Color.fromARGB(255, 237, 122, 0),
                              onPressed: () {},
                              child: Text(
                                'Отправить',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: FractionalOffset(0.28, 0),
                              child: Text(
                                'Нажимая на кнопку, Вы принимаете Положение и\nСогласие на обработку персональных данных.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
