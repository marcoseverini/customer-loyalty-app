// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, duplicate_ignore, prefer_const_constructors_in_immutables, override_on_non_overriding_member, unused_field, annotate_overrides, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:poc/components/components.dart';
import 'package:poc/style/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 95.0),
                child: Logo(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85.0),
                child: LittleButton(
                  tag: "btn1",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InfoNegozio()));
                  },
                  icona: const Icon(
                    Icons.assistant_direction_outlined,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: LittleButton(
                  tag: "btn2",
                  onPress: () {},
                  icona: const Icon(
                    Icons.favorite_outline,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DettaglioProdotto(
                                      descrizione: "iewsvedrvfkl",
                                      immagine1: "assets/air2.png",
                                      immagine2: "assets/air.png",
                                      immagine3: "assets/air3.png",
                                      prezzo: "100.00€",
                                      prezzoscontato: "80.00€",
                                      prodotto: "AirPods Pro",
                                      tipoprodotto: "Cuffie",
                                    )));
                      },
                      prezzo: "100,00€",
                      prezzoscontato: "80,00€",
                      prodotto: "AirPods Pro",
                      tipoprodotto: "Cuffie",
                      immagine: 'assets/air3.png',
                    ),
                    AppCardLampo(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DettaglioProdottoLampo(
                                      descrizione: "iervfkl",
                                      immagine1: "assets/cat.png",
                                      immagine2: "assets/cat2.png",
                                      immagine3: "assets/cat3.png",
                                      prezzo: "100.00€",
                                      prezzoscontato: "80.00€",
                                      prodotto: "Ipad 2020",
                                      tipoprodotto: "Tablet",
                                    )));
                      },
                      prezzo: "100,00€",
                      prezzoscontato: "80,00€",
                      prodotto: "Ipad",
                      tipoprodotto: "Tablet",
                      immagine: 'assets/cat.png',
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdotto(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  ),
                  AppCardLampo(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdottoLampo(
                                    descrizione: "iewsvedrvfkl",
                                    immagine1: "assets/air2.png",
                                    immagine2: "assets/air.png",
                                    immagine3: "assets/air3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "AirPods Pro",
                                    tipoprodotto: "Cuffie",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "AirPods Pro",
                    tipoprodotto: "Cuffie",
                    immagine: 'assets/air3.png',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdotto(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  ),
                  AppCardLampo(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdottoLampo(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdotto(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  ),
                  AppCardLampo(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdottoLampo(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdotto(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  ),
                  AppCardLampo(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DettaglioProdottoLampo(
                                    descrizione: "iervfkl",
                                    immagine1: "assets/cat.png",
                                    immagine2: "assets/cat2.png",
                                    immagine3: "assets/cat3.png",
                                    prezzo: "100.00€",
                                    prezzoscontato: "80.00€",
                                    prodotto: "Ipad 2020",
                                    tipoprodotto: "Tablet",
                                  )));
                    },
                    prezzo: "100,00€",
                    prezzoscontato: "80,00€",
                    prodotto: "Ipad",
                    tipoprodotto: "Tablet",
                    immagine: 'assets/cat.png',
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

// ignore: must_be_immutable
class DettaglioProdottoLampo extends StatefulWidget {
  late var prezzo;
  late var prezzoscontato;
  late var prodotto;
  late var tipoprodotto;
  late String immagine1;
  late String immagine2;
  late String immagine3;
  late String descrizione;
  DettaglioProdottoLampo({
    Key? key,
    required this.prezzo,
    required this.prezzoscontato,
    required this.prodotto,
    required this.tipoprodotto,
    required this.immagine1,
    required this.immagine2,
    required this.immagine3,
    required this.descrizione,
  }) : super(key: key);

  @override
  State<DettaglioProdottoLampo> createState() => _DettaglioProdottoLampoState();
}

class _DettaglioProdottoLampoState extends State<DettaglioProdottoLampo> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_backspace_outlined),
                    color: AppColors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: const [
                    Text(
                      'LAMPO',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppColors.fucsia,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      '-3 giorni',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.fucsia,
                      ),
                    ),
                  ]),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 252,
                  child: PageView(
                    controller: _controller,
                    children: [
                      Image.asset(widget.immagine1),
                      Image.asset(
                        widget.immagine2,
                      ),
                      Image.asset(widget.immagine3),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                onDotClicked: (index) {
                  _controller.jumpToPage(index);
                },
                effect: const JumpingDotEffect(
                  activeDotColor: AppColors.grey7,
                  dotColor: AppColors.grey6,
                  dotHeight: 5,
                  dotWidth: 5,
                  spacing: 4,
                  //verticalOffset: 50,
                  jumpScale: 3,
                ),
              ),
            ),
            Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 56),
                  child: Column(children: [
                    Text(widget.prodotto,
                        style: AppTextTheme.headline(color: AppColors.grey7)),
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0, top: 5),
                      child: Text(widget.tipoprodotto,
                          style: AppTextTheme.body(color: AppColors.grey6)),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 78),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share_outlined),
                    iconSize: 27,
                    color: AppColors.grey6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64, right: 27.33),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    iconSize: 25,
                    color: AppColors.grey6,
                  ),
                ),
              ),
            ]),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24),
                child: Text(
                  widget.descrizione,
                  style: AppTextTheme.caption(color: AppColors.grey5),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 32),
                child: Row(children: [
                  Text(
                    widget.prezzoscontato,
                    style: AppTextTheme.title2(
                      color: AppColors.redPrimary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      widget.prezzo,
                      style: const TextStyle(
                        color: AppColors.grey7,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class DettaglioProdotto extends StatefulWidget {
  late var prezzo;
  late var prezzoscontato;
  late var prodotto;
  late var tipoprodotto;
  late String immagine1;
  late String immagine2;
  late String immagine3;
  late String descrizione;
  DettaglioProdotto({
    Key? key,
    required this.prezzo,
    required this.prezzoscontato,
    required this.prodotto,
    required this.tipoprodotto,
    required this.immagine1,
    required this.immagine2,
    required this.immagine3,
    required this.descrizione,
  }) : super(key: key);

  @override
  State<DettaglioProdotto> createState() => _DettaglioProdottoState();
}

class _DettaglioProdottoState extends State<DettaglioProdotto> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_backspace_outlined),
                    color: AppColors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 29.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 252,
                  child: PageView(
                    controller: _controller,
                    children: [
                      Image.asset(widget.immagine1),
                      Image.asset(
                        widget.immagine2,
                      ),
                      Image.asset(widget.immagine3),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                onDotClicked: (index) {
                  _controller.jumpToPage(index);
                },
                effect: const JumpingDotEffect(
                  activeDotColor: AppColors.grey7,
                  dotColor: AppColors.grey6,
                  dotHeight: 5,
                  dotWidth: 5,
                  spacing: 4,
                  //verticalOffset: 50,
                  jumpScale: 3,
                ),
              ),
            ),
            Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 56),
                  child: Column(children: [
                    Text(widget.prodotto,
                        style: AppTextTheme.headline(color: AppColors.grey7)),
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0, top: 5),
                      child: Text(widget.tipoprodotto,
                          style: AppTextTheme.body(color: AppColors.grey6)),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 78),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share_outlined),
                    iconSize: 27,
                    color: AppColors.grey6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64, right: 27.33),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    iconSize: 25,
                    color: AppColors.grey6,
                  ),
                ),
              ),
            ]),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24),
                child: Text(
                  widget.descrizione,
                  style: AppTextTheme.caption(color: AppColors.grey5),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 32),
                child: Row(children: [
                  Text(
                    widget.prezzoscontato,
                    style: AppTextTheme.title2(
                      color: AppColors.redPrimary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      widget.prezzo,
                      style: const TextStyle(
                        color: AppColors.grey7,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class InfoNegozio extends StatefulWidget {
  InfoNegozio({Key? key}) : super(key: key);
  @override
  State<InfoNegozio> createState() => _InfoNegozioState();
}

class _InfoNegozioState extends State<InfoNegozio> {
  @override
  final _controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_backspace_outlined),
                    color: AppColors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Info  Negozio",
                      style: AppTextTheme.bodyBold(color: AppColors.grey7)),
                ),
              )
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 29.0),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Container(color: AppColors.grey3),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 168.5),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              bottomRight: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.redAccent),
                      ),
                      child: Text("Mappa",
                          style: AppTextTheme.bodyBold(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ]),
            Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 24),
                  child: Text(
                    "Unieuro",
                    style: AppTextTheme.headline(color: AppColors.grey7),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 24),
                  child: Text(
                    "Via Santo Spirito, 119",
                    style: AppTextTheme.body(color: AppColors.grey5),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 90.0, left: 24),
                  child: Text(
                    "Tel. 0291947777",
                    style: AppTextTheme.body(color: AppColors.grey5),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 105.0, left: 24),
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          "Giovedì 9.30 - 20.30",
                          style: AppTextTheme.body(color: AppColors.grey5),
                        ),
                        tilePadding: const EdgeInsets.only(
                            right: 80, left: 0, top: 0, bottom: 0),
                        childrenPadding: const EdgeInsets.only(
                            right: 0, left: 0, top: 0, bottom: 10),
                        expandedAlignment: Alignment.topLeft,
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Lunedì 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Martedì 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Mercoledì 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Giovedì 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Venerdì 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Sabato 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Domenica 9.30 - 20.30",
                                style:
                                    AppTextTheme.body(color: AppColors.grey5)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lafeltrinelli.it",
                            style: AppTextTheme.body(color: AppColors.grey5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                height: 136,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset("assets/unieuro.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset("assets/unieuro2.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset("assets/unieuro3.png"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56.0),
              child: SizedBox(
                child: Button(onPress: () {}, title: "CHIAMA"),
                width: 342,
                height: 48,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
