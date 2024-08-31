// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:poc/pages/Login.dart';
import 'package:poc/style/app_theme.dart';
import 'package:poc/components/components.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String _name;
  late String _surname;
  late String _cf;
  late String _email;
  late String _password;

  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'NOME*',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Inserire nome';
            }
            return null;
          },
          onSaved: (value) {
            _name = value!;
          },
        ),
      ),
    );
  }

  Widget _buildSurname() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'COGNOME*',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Inserire cognome';
            }
            return null;
          },
          onSaved: (value) {
            _surname = value!;
          },
        ),
      ),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'EMAIL*',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Inserire indirizzo email';
            }

            if (!RegExp(
                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
              return 'Inserire indirizzo email valido';
            }

            return null;
          },
          onSaved: (value) {
            _email = value!;
          },
        ),
      ),
    );
  }

  Widget _buildCF() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'CODICE FISCALE*',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Inserire codice fiscale';
            }

            if (value.length != 16) {
              return 'Inserire codice fiscale valido';
            }

            return null;
          },
          onSaved: (value) {
            _cf = value!;
          },
        ),
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'PASSWORD*',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Inserire password';
            }
            if (value.length < 8) {
              return 'Lunghezza minima di 8 caratteri';
            }
            if (value.contains(RegExp(r'[a-z]'))) {
            } else {
              return ('La password deve contenere almeno una lettera minuscola');
            }
            if (value.contains(RegExp(r'[A-Z]'))) {
            } else {
              return ('La password deve contenere almeno una lettera maiuscola');
            }
            if (value.contains(RegExp(r'[0-9]'))) {
            } else {
              return ('La password deve contenere almeno un numero');
            }
            return null;
          },
          onSaved: (value) {
            _password = value!;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          //autovalidateMode: AutovalidateMode.always,
          key: _formKey2,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Logo(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170, top: 40),
              child: Text(
                'Crea Account',
                style: AppTextTheme.title1(color: AppColors.grey7),
              ),
            ),
            _buildName(),
            _buildSurname(),
            _buildCF(),
            _buildEmail(),
            _buildPassword(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                width: 342,
                height: 48,
                child: Button(
                  onPress: () {
                    if (!_formKey2.currentState!.validate()) {
                      return;
                    }
                    _formKey2.currentState!.save();
                    print(_name);
                    print(_surname);
                    print(_cf);
                    print(_email);
                    print(_password);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  title: "REGISTRATI",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sei già registrato?',
                    style: AppTextTheme.caption(color: AppColors.grey7),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Text(
                      'Accedi',
                      style: AppTextTheme.captionBold(color: AppColors.grey7),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
