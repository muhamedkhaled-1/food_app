import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({super.key, this.child});
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
