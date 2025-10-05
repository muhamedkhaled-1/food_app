import 'package:flutter/cupertino.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/custom_text_form_field.dart';

import '../../../../../../utils/text_styles.dart';

class LayoutTextFormField extends StatelessWidget {
  const LayoutTextFormField({super.key, this.suffixIcon, required this.hintText, required this.keyboardType, required this.headerText, this.onSaved, required this.failureValidation});
  final Widget? suffixIcon;
  final String hintText,headerText,failureValidation;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText,style: AppTextStyles.styleRegular20,),
        SizedBox(height: 8,),
        CustomTextFormField(
          failureValidation:failureValidation ,
          onSaved: onSaved,
            suffixIcon: suffixIcon,
            hintText: hintText, keyboardType: keyboardType)
      ],
    );
  }
}
