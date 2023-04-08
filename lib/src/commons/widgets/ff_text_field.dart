import 'package:desafios_flutter_floripa/src/commons/colors/colors_manager.dart';
import 'package:desafios_flutter_floripa/src/commons/fonts/fonts_manager.dart';
import 'package:flutter/material.dart';

class FFTextField extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  const FFTextField({
    this.padding = const EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 16.0),
    this.labelText,
    this.prefixIcon,
    this.sufixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        contentPadding: padding,
        filled: true,
        fillColor: ColorsManager.lightGrey,
        labelStyle: FontsManager.ptSans(
          fontSize: 18.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
