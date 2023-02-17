import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomForm extends StatelessWidget {
  CustomForm({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 80),
          child: Container(
            constraints: BoxConstraints(maxWidth: kMAxWidth),
            decoration: BoxDecoration(
              border:
                  Border.all(width: 5, color: Color.fromARGB(255, 237, 122, 0)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Container(
                child: Column(children: [
                  Text(
                    'Остались вопросы? Оставьте заявку на сайте',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: kPadding,
                  ),
                  Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Form(
                          key: _formKey,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 190,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Введите имя',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: kPadding,
                              ),
                              SizedBox(
                                height: 40,
                                width: 190,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'mail@mail.ru',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                    border: UnderlineInputBorder(),
                                  ),
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Enter email';
                                    }
                                    String p =
                                        "[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                                    RegExp regExp = RegExp(p);
                                    if (regExp.hasMatch(val)) return null;
                                    {
                                      return 'This is not email';
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: kPadding,
                              ),
                              SizedBox(
                                height: 40,
                                width: 190,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'xxx-xxx-xxx',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                    border: UnderlineInputBorder(),
                                  ),
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
                                width: kPadding,
                              ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     // Validate returns true if the form is valid, or false otherwise.
                              //     if (_formKey.currentState!.validate()) {
                              //       // If the form is valid, display a snackbar. In the real world,
                              //       // you'd often call a server or save the information in a database.
                              //       ScaffoldMessenger.of(context).showSnackBar(
                              //         const SnackBar(
                              //             content: Text('Processing Data')),
                              //       );
                              //     }
                              //   },
                              //   child: const Text('Submit'),
                              // ),
                              MaterialButton(
                                height: 50,
                                minWidth: 190,
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
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: kPadding,
                  ),
                  Text(
                    'Нажимая на кнопку, Вы принимаете Положение и Согласие на обработку персональных данных.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 237, 122, 0),
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
