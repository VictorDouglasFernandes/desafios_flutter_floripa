import 'package:desafios_flutter_floripa/src/commons/colors/colors_manager.dart';
import 'package:desafios_flutter_floripa/src/commons/fonts/fonts_manager.dart';
import 'package:desafios_flutter_floripa/src/commons/widgets/ff_button.dart';
import 'package:desafios_flutter_floripa/src/commons/widgets/ff_text_field.dart';
import 'package:desafios_flutter_floripa/src/features/login/presentation/widgets/background.dart';
import 'package:desafios_flutter_floripa/src/features/login/presentation/widgets/header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size _screenSize;

  double get _minSpace => _screenSize.longestSide * 0.015;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenSize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  const Header(),
                  SizedBox(height: _minSpace * 4),
                  const FFTextField(
                    labelText: 'E-mail',
                    prefixIcon: Icon(
                      FeatherIcons.mail,
                      color: ColorsManager.grey,
                    ),
                  ),
                  SizedBox(height: _minSpace),
                  const FFTextField(
                    labelText: 'Senha',
                    prefixIcon: Icon(
                      FeatherIcons.lock,
                      color: ColorsManager.grey,
                    ),
                    sufixIcon: Icon(
                      FeatherIcons.eyeOff,
                      color: ColorsManager.grey,
                    ),
                  ),
                  SizedBox(height: _minSpace * 6),
                  FFButton(
                    child: 'ENTRAR',
                    onTap: () {},
                  ),
                  SizedBox(height: _minSpace * 3),
                  RichText(
                    text: TextSpan(
                      style: FontsManager.ptSans(
                        fontSize: 16.0,
                        color: ColorsManager.darkGrey,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Esqueceu sua senha? ',
                        ),
                        TextSpan(
                          text: 'Recupere aqui',
                          style: FontsManager.ptSans(
                            fontSize: 16.0,
                            color: ColorsManager.darkPink,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: _onTapRestorePassword(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureRecognizer _onTapRestorePassword() {
    return TapGestureRecognizer()..onTap = () {};
  }
}
