import 'package:flutter/cupertino.dart';

class ContainerCustomPadding extends StatelessWidget {
  const ContainerCustomPadding({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
    child:child ,
    );
  }
}
