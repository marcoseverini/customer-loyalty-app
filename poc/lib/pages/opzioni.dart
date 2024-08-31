// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:poc/style/app_theme.dart';

class OpzioniPage extends StatefulWidget {
  const OpzioniPage({Key? key}) : super(key: key);

  @override
  State<OpzioniPage> createState() => _OpzioniPageState();
}

enum ThemeColor { red, blue, green, yellow, black }

class _OpzioniPageState extends State<OpzioniPage> {
  bool isSwitched = false;
  ThemeColor? _character = ThemeColor.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.5, top: 25),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("Profilo");
              },
              child: Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 16.5),
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: AppColors.grey7,
                        size: 20,
                      ),
                    ),
                    Text(
                      "Profilo",
                      style: AppTextTheme.body(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 36),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.grey3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: GestureDetector(
                onTap: () {
                  print("Lingua");
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 16.5),
                            child: Icon(
                              Icons.translate_outlined,
                              color: AppColors.grey7,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Lingua",
                            style: AppTextTheme.body(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, right: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              print("italiano");
                            },
                            child: Text(
                              "Italiano",
                              style:
                                  AppTextTheme.caption(color: AppColors.grey5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 36),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.grey3,
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      print("Notifiche");
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 16.5),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: AppColors.grey7,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Notifiche",
                            style: AppTextTheme.body(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.5, right: 9),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      inactiveTrackColor: AppColors.grey3,
                      inactiveThumbColor: AppColors.grey2,
                      activeTrackColor: AppColors.grey3,
                      activeColor: AppColors.grey4,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 36),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.grey3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: GestureDetector(
                onTap: () {
                  print("Tema");
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 16.5),
                        child: Icon(
                          Icons.palette_outlined,
                          color: AppColors.grey7,
                          size: 20,
                        ),
                      ),
                      Text(
                        "Tema",
                        style: AppTextTheme.body(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 36),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Radio<ThemeColor>(
                        value: ThemeColor.red,
                        groupValue: _character,
                        onChanged: (ThemeColor? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: AppColors.redPrimary,
                        focusColor: AppColors.redPrimary,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.redPrimary),
                      ),
                      Radio<ThemeColor>(
                        value: ThemeColor.blue,
                        groupValue: _character,
                        onChanged: (ThemeColor? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: AppColors.bluePrimary,
                        focusColor: AppColors.bluePrimary,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.bluePrimary),
                      ),
                      Radio<ThemeColor>(
                        value: ThemeColor.green,
                        groupValue: _character,
                        onChanged: (ThemeColor? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: AppColors.greenPrimary,
                        focusColor: AppColors.greenPrimary,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.greenPrimary),
                      ),
                      Radio<ThemeColor>(
                        value: ThemeColor.yellow,
                        groupValue: _character,
                        onChanged: (ThemeColor? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: AppColors.yellowPrimary,
                        focusColor: AppColors.yellowPrimary,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.yellowPrimary),
                      ),
                      Radio<ThemeColor>(
                        value: ThemeColor.black,
                        groupValue: _character,
                        onChanged: (ThemeColor? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        activeColor: AppColors.blackPrimary,
                        focusColor: AppColors.blackPrimary,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.blackPrimary),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
