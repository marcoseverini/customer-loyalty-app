import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc/style/app_theme.dart';
import 'package:flip_card/flip_card.dart';

class TesseraPage extends StatefulWidget {
  const TesseraPage({Key? key}) : super(key: key);

  @override
  State<TesseraPage> createState() => _TesseraPageState();
}

class _TesseraPageState extends State<TesseraPage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: SizedBox(
                    height: 200,
                    width: 358,
                    child: FlipCard(
                      flipOnTouch: false,
                      key: cardKey,
                      direction: FlipDirection.HORIZONTAL,
                      front: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        margin: EdgeInsets.zero,
                        color: AppColors.redPrimary,
                        child: InkWell(
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 32, left: 24),
                                child: Text("N° 0400225012345",
                                    style: AppTextTheme.headline(
                                        color: AppColors.grey1)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 76, left: 24),
                                child: Text("Mario Rossi",
                                    style: AppTextTheme.title2(
                                        color: AppColors.grey1)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 25, right: 56),
                                child: Text("Mostra barcode",
                                    style: AppTextTheme.body(
                                        color: AppColors.grey1)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 12, right: 15),
                                child: IconButton(
                                  onPressed: () {
                                    cardKey.currentState!.toggleCard();
                                  },
                                  icon: const Icon(
                                    CupertinoIcons.barcode,
                                    color: AppColors.grey1,
                                    size: 20,
                                  ),
                                  iconSize: 20,
                                  color: AppColors.grey1,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      back: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        margin: EdgeInsets.zero,
                        child: Stack(
                          children: [
                            Center(
                              child: Ink.image(
                                image: const AssetImage('assets/barcode.png'),
                                height: 127,
                                width: 229,
                                //alignment: Alignment.center,
                                //fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 21.65, right: 21.65),
                                child: IconButton(
                                  icon: const Icon(Icons.close_outlined),
                                  onPressed: () {
                                    cardKey.currentState!.toggleCard();
                                  },
                                  iconSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 284.0),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: AppColors.grey4, width: 1),
                        top: BorderSide(color: AppColors.grey4, width: 1))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("0 Punti",
                          style: AppTextTheme.title1(color: AppColors.grey7)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          height: 40,
                          width: 4,
                          child: Container(
                            color: AppColors.grey4,
                          ),
                        ),
                      ),
                      const Text("€ 0,00",
                          style: TextStyle(
                              color: AppColors.grey7,
                              fontSize: 28,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //original
  }
}
