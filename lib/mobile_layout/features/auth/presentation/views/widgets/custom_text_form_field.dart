import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.suffixIcon, required this.hintText, required this.keyboardType,});
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon:suffixIcon,
        hintText: hintText,
        hintStyle: AppTextStyles.styleRegular14Subtle,
        fillColor: Color(0xffF0F5FA),
        filled: true,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
          border: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffF0F5FA)
      ),
      borderRadius: BorderRadius.circular(10)
    );
  }
}
