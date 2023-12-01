import 'package:flutter/material.dart';

import '../core/helpers/assets_helper.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 63,
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      // color: const Color.fromARGB(255, 162, 39, 39),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70,
                            // color: Colors.orange,
                            child: Image.asset(
                              AssetsHelper.logo,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 170,
                            // color: Colors.orange,
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Handicrafted by',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: const Color.fromARGB(
                                                  255, 63, 61, 61)),
                                        ),
                                        Text(
                                          'Jim HLS',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                AssetsHelper.avt,
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: child,
          )
        ],
      ),
    );
  }
}
