import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/utils/text_styles.dart';

class RememberMeListTile extends StatefulWidget {
  const RememberMeListTile({super.key});

  @override
  State<RememberMeListTile> createState() => _RememberMeListTileState();
}

class _RememberMeListTileState extends State<RememberMeListTile> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          activeColor: KprimaryColor,
          side: BorderSide(
            color: Color(0xffE3EBF2)
          ),
          value: value,
          onChanged: (e){
            setState(() {
              value=!value;
            });
          },
        ),
        SizedBox(width: 2),
        Text("Remember me",style: AppTextStyles.styleRegular16.copyWith(color: Color(0xff7E8A97)),),
      ],
    )
    ;
  }
}
