import 'package:flutter/material.dart';

import '../core/helpers/assets_helper.dart';

class NewAppBar extends StatelessWidget {
  const NewAppBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 63,
                width: 63,
                // color: Colors.amber,
                child: Image.asset(AssetsHelper.logo),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 63,
                width: 180,
                // color: Colors.amber,
                child: Row(
                  children: [
                    const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Handicrafted by',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color.fromARGB(255, 83, 80, 80)),
                            ),
                            Text(
                              'Jim HLS',
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          // color: Colors.red,
                          child: Stack(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(AssetsHelper.avt),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            child: child,
          )
        ],
      ),
    );
  }
}
