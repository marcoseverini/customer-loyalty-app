import 'package:flutter/material.dart';
import 'package:poc/pages/app.dart';
import 'package:poc/style/app_theme.dart';
import 'package:poc/components/components.dart';
import 'package:poc/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _passwordVisible = false;
  late String _email1;
  late String _password1;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'EMAIL',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
          ),
          onSaved: (value) {
            _email1 = value!;
          },
        ),
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 342),
        child: TextFormField(
          style: AppTextTheme.caption(color: AppColors.grey7),
          obscureText: _passwordVisible,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: 'PASSWORD',
            hintStyle: AppTextTheme.caption(color: AppColors.grey5),
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColors.grey6,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
          onSaved: (value) {
            _password1 = value!;
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
          key: _formKey,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Align(alignment: Alignment.topCenter, child: Logo()),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 195, top: 40),
              child: Text(
                'Bentornato',
                style: AppTextTheme.title1(color: AppColors.grey7),
              ),
            ),
            _buildEmail(),
            _buildPassword(),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 240),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: AppTextTheme.captionBold(color: AppColors.grey7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: SizedBox(
                width: 342,
                height: 48,
                child: Button(
                  onPress: () {
                    _formKey.currentState!.save();
                    // ignore: avoid_print
                    print(_email1);
                    // ignore: avoid_print
                    print(_password1);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => App()));
                  },
                  title: "ACCEDI",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sei un nuovo utente?',
                    style: AppTextTheme.caption(color: AppColors.grey7),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: Text(
                      'Registrati',
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
