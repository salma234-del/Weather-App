import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData? preIcon;
  final Function(String)? onSubmitted;
  const CustomTextField({
    super.key,
    required this.hint,
    this.preIcon,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hint,
        border: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(color: Theme.of(context).colorScheme.primary),
        prefixIcon: Icon(preIcon),
        //enabledBorder:
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(
        color: color ?? AppColors.greyScale2,
      ),
    );
  }
}
