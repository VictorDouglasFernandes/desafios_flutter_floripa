import 'package:desafios_flutter_floripa/src/commons/assets/assets.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  late Size _screenSize;

  double get _imageSize => _screenSize.longestSide * (1 / 3);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenSize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -(_imageSize * 0.20),
          left: -(_imageSize * 0.38),
          child: Image.asset(
            Assets.bgBlur1.path,
            height: _imageSize,
            width: _imageSize,
          ),
        ),
        Positioned(
          bottom: (_screenSize.longestSide * 0.1),
          left: -(_imageSize * (3 / 5)),
          child: Image.asset(
            Assets.bgBlur2.path,
            height: _imageSize,
            width: _imageSize,
          ),
        ),
        Positioned(
          bottom: -(_imageSize * (1 / 3)),
          right: -(_imageSize * 0.5),
          child: Image.asset(
            Assets.bgBlur3.path,
            height: _imageSize,
            width: _imageSize,
          ),
        ),
      ],
    );
  }
}
