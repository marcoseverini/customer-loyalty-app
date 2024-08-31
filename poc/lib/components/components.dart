// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:poc/pages/news.dart';
import 'package:poc/style/app_theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'LOGO',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 28,
        letterSpacing: 1.5,
      ),
    );
  }
}

class Button extends StatefulWidget {
  final String title;
  VoidCallback onPress;
  Button({Key? key, required this.onPress, required this.title})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342,
      height: 48,
      child: ElevatedButton(
        onPressed: widget.onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.redAccent),
        ),
        child: Text(widget.title,
            style: AppTextTheme.bodyBold(color: Colors.white)),
      ),
    );
  }
}

class LittleButton extends StatefulWidget {
  VoidCallback onPress;
  Widget icona;
  late String tag;
  LittleButton(
      {Key? key, required this.onPress, required this.icona, required this.tag})
      : super(key: key);

  @override
  State<LittleButton> createState() => _LittleButtonState();
}

class _LittleButtonState extends State<LittleButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: FloatingActionButton(
        heroTag: widget.tag,
        onPressed: widget.onPress,
        backgroundColor: AppColors.redAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        elevation: 0,
        child: widget.icona,
      ),
    );
  }
}

class AppCardLampo extends StatefulWidget {
  late var prezzo;
  late var prezzoscontato;
  late var prodotto;
  late var tipoprodotto;
  late String immagine;
  VoidCallback onTap;
  AppCardLampo({
    Key? key,
    required this.prezzo,
    required this.prezzoscontato,
    required this.prodotto,
    required this.tipoprodotto,
    required this.immagine,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AppCardLampo> createState() => _AppCardLampoState();
}

class _AppCardLampoState extends State<AppCardLampo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        width: 175,
        height: 227,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(32),
                ),
              ),
              margin: EdgeInsets.zero,
              child: InkWell(
                onTap: widget.onTap,
                child: Column(children: [
                  Row(children: [
                    Column(children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 16, left: 16),
                          child: Text(
                            'LAMPO',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: AppColors.fucsia,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '-3 giorni',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                          color: AppColors.fucsia,
                        ),
                      ),
                    ]),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.15, left: 62.5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline),
                          color: AppColors.grey6,
                        ),
                      ),
                    ),
                  ]),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Ink.image(
                          image: AssetImage(widget.immagine),
                          height: 74,
                          width: 74,
                          //alignment: Alignment.center,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.prodotto,
                        style: AppTextTheme.captionBold(color: AppColors.grey7),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.tipoprodotto,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.grey6,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 196.0),
                  child: SizedBox(
                    width: 72,
                    height: 32,
                    child: Card(
                      margin: EdgeInsets.zero,
                      clipBehavior: Clip.antiAlias,
                      color: AppColors.redPrimary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                      child: InkWell(
                        onTap: widget.onTap,
                        child: Center(
                          child: (Text(
                            widget.prezzoscontato,
                            style: AppTextTheme.captionBold(
                                color: AppColors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 7),
                    child: Text(
                      widget.prezzo,
                      style: const TextStyle(
                        color: AppColors.grey7,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppCard extends StatefulWidget {
  late var prezzo;
  late var prezzoscontato;
  late var prodotto;
  late var tipoprodotto;
  late String immagine;
  VoidCallback onTap;

  AppCard({
    Key? key,
    required this.prezzo,
    required this.prezzoscontato,
    required this.prodotto,
    required this.tipoprodotto,
    required this.immagine,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        width: 175,
        height: 227,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(32),
                ),
              ),
              margin: EdgeInsets.zero,
              child: InkWell(
                onTap: widget.onTap,
                child: Column(children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.15),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                        color: AppColors.grey6,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Ink.image(
                          image: AssetImage(widget.immagine),
                          height: 74,
                          width: 74,
                          //alignment: Alignment.center,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.prodotto,
                        style: AppTextTheme.captionBold(color: AppColors.grey7),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 16),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.tipoprodotto,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.grey6,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 196.0),
                  child: SizedBox(
                    width: 72,
                    height: 32,
                    child: Card(
                        margin: EdgeInsets.zero,
                        clipBehavior: Clip.antiAlias,
                        color: AppColors.redPrimary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: InkWell(
                          onTap: widget.onTap,
                          child: Center(
                            child: (Text(
                              widget.prezzoscontato,
                              style: AppTextTheme.captionBold(
                                  color: AppColors.white),
                            )),
                          ),
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 7),
                    child: Text(
                      widget.prezzo,
                      style: const TextStyle(
                        color: AppColors.grey7,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardNewsH extends StatelessWidget {
  late var title;
  late var image;
  CardNewsH({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 160,
        width: 358,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(32),
            ),
          ),
          margin: EdgeInsets.zero,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(image, fit: BoxFit.cover),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: SizedBox(
                      width: 133,
                      child: Text(
                        title,
                        style: AppTextTheme.headline(color: AppColors.grey1),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 130,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsDetailPage()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.redAccent),
                    ),
                    child: Text("Scopri di più",
                        style: AppTextTheme.bodyBold(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardNewsV extends StatelessWidget {
  late var title;
  late var image;
  CardNewsV({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 252,
        width: 220,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(32),
            ),
          ),
          margin: EdgeInsets.zero,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(image, fit: BoxFit.cover),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: SizedBox(
                      width: 133,
                      child: Text(
                        title,
                        style: AppTextTheme.headline(color: AppColors.grey1),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsDetailPage()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.redAccent),
                    ),
                    child: const Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 15,
                      color: AppColors.grey1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
