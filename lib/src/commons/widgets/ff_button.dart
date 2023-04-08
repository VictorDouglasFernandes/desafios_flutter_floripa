import 'package:desafios_flutter_floripa/src/commons/colors/colors_manager.dart';
import 'package:desafios_flutter_floripa/src/commons/fonts/fonts_manager.dart';
import 'package:flutter/material.dart';

class FFButton extends StatelessWidget {
  final dynamic child;
  final void Function()? onTap;
  final Gradient? gradient;
  final EdgeInsetsGeometry padding;
  const FFButton({
    this.child,
    this.onTap,
    this.gradient = const LinearGradient(
      colors: [
        ColorsManager.darkBlue,
        ColorsManager.lightBlue,
      ],
    ),
    this.padding = const EdgeInsets.all(16.0),
    super.key,
  }) : assert(child is Widget || child is String);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: gradient,
      ),
      child: FilledButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(padding),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: child is String
            ? Center(
                child: Text(
                  child,
                  style: FontsManager.ptSans(
                    color: ColorsManager.white,
                    fontSize: 18.0,
                  ),
                ),
              )
            : child,
      ),
    );
  }
}
