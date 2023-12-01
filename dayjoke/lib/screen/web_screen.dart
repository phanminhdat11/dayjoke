import 'dart:math';

import 'package:dayjoke/widgets/button_custom.dart';
import 'package:flutter/material.dart';

import '../data/cookie_manager.dart';
import '../data/joke_model.dart';
import '../widgets/app_bar_widget.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});
  static const String routeName = 'web_screen';

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  List<JokeModel> listJoke = allJoke;

  String endJoke =
      '''"That's all the jokes for today! Come back another day!" ''';

  final String text =
      "This app is created as part of Hlsolutions progam. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise form reliance on the infor-mation contained on this site.";

  int currentJoke = Random().nextInt(allJoke.length);

// new joke when click votes and cookie
  void changeJoke() {
    setState(() {
      if (allJoke.isNotEmpty) {
        currentJoke;

        allJoke.removeAt(currentJoke);
      } else {}

      set('user', 'votes');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: const Color.fromARGB(255, 21, 168, 82),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'A joke a day keeps the doctor away',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'If you joke wrong way, your teeth have to pay. (Serious)',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Center(
                          child: Text(
                            allJoke.isNotEmpty
                                ? allJoke[currentJoke].joke
                                : endJoke,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      )),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
            const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(flex: 3, child: Divider()),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCustom(
                    ontap: () {
                      changeJoke();
                    },
                    title: 'This is Funny!',
                    width: 220,
                    color: Colors.blue[700]),
                SizedBox(
                  width: 30,
                ),
                ButtonCustom(
                    ontap: () {
                      changeJoke();
                    },
                    title: 'This is not Funny',
                    width: 220,
                    color: const Color.fromARGB(255, 21, 168, 82))
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Divider(),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Center(
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      )),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
            Center(
              child: Text('Copyright 2021 HLS'),
            )
          ],
        ),
      ),
    );
  }
}
