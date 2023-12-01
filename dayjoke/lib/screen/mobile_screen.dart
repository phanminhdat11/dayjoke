import 'dart:math';

import 'package:dayjoke/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import '../data/cookie_manager.dart';
import '../data/joke_model.dart';
import '../widgets/new_app_bar.dart';

class MobileSreen extends StatefulWidget {
  const MobileSreen({super.key});

  static const String routeName = 'mobile_screen';

  @override
  State<MobileSreen> createState() => _MobileSreenState();
}

class _MobileSreenState extends State<MobileSreen> {
  @override
  Widget build(BuildContext context) {
    List<JokeModel> listJoke = allJoke;

    String endJoke =
        '''"That's all the jokes for today! Come back another day!" ''';

    final String text =
        "This app is created as part of Hlsolutions progam. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise form reliance on the infor-mation contained on this site.";

    int currentJoke = Random().nextInt(allJoke.length);

    void changeJoke() {
      setState(() {
        if (allJoke.isNotEmpty) {
          currentJoke;

          allJoke.removeAt(currentJoke);
        } else {}

        // set('user', 'votes');
      });
    }

    return NewAppBar(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 148,
            color: const Color.fromARGB(255, 21, 168, 82),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'A joke a day keeps the doctor away',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
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
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            height: 200,
            child: Center(
              child: Text(
                allJoke.isNotEmpty ? allJoke[currentJoke].joke : endJoke,
                style: TextStyle(fontSize: 14.5),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCustom(
                  ontap: () {
                    changeJoke();
                  },
                  title: 'This is Funny!',
                  width: 150,
                  color: Colors.blue[700]),
              SizedBox(
                width: 30,
              ),
              ButtonCustom(
                  ontap: () {
                    changeJoke();
                    // remove('user');
                  },
                  title: 'This is not Funny.',
                  width: 150,
                  color: const Color.fromARGB(255, 21, 168, 82))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            height: 100,
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('Copyright 2021 HLS'),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
