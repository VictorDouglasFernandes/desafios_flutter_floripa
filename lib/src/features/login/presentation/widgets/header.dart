import 'package:desafios_flutter_floripa/src/commons/assets/assets.dart';
import 'package:desafios_flutter_floripa/src/commons/colors/colors_manager.dart';
import 'package:desafios_flutter_floripa/src/commons/fonts/fonts_manager.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late Size _screenSize;

  double get _imageSize => _screenSize.shortestSide * (1 / 3);

  double get _minSpace => _screenSize.longestSide * 0.015;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenSize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.logo.path,
          height: _imageSize,
          width: _imageSize,
        ),
        SizedBox(
          height: _minSpace * 2,
        ),
        Text(
          'Bem-vindo\nao FlutterFloripa!',
          style: FontsManager.ptSans(
            color: ColorsManager.black,
            fontSize: 32.0,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: _minSpace * 2,
        ),
        Text(
          'A comunidade oficial Flutter em\nFlorianópolis-SC',
          style: FontsManager.ptSans(
            color: ColorsManager.darkGrey,
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
