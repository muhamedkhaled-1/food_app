import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../utils/text_styles.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.onTap, required this.text});
  void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.circular(12)
        ),
        height: 62,
        width: MediaQuery.of(context).size.width*.8,
        child: Center(child: Text(text,style: AppTextStyles.styleBold14.copyWith(color: Colors.white),)),
      ),
    );
  }
}
