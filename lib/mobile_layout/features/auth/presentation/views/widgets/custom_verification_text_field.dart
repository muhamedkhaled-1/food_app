import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/text_styles.dart';
import 'one_digit_input.dart';

class CustomVerificationTextField extends StatelessWidget {
  const CustomVerificationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
      height:62 ,
      width: double.infinity,
      child: TextField(
        style: AppTextStyles.styleRegular20.copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        maxLines: 1,
        inputFormatters: [
          OneDigitInputFormatter()
        ],
        decoration: InputDecoration(
            fillColor: Color(0xffF0F5FA),
            filled: true,
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            border: buildOutlineInputBorder()),
        keyboardType: TextInputType.number,
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF0F5FA)));
}
