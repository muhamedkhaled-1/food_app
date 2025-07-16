import 'package:flutter/cupertino.dart';

class CustomScrollableWidget extends StatelessWidget {
  const CustomScrollableWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height,),
        child: IntrinsicHeight(
          child: child,
        ),
      ),
    );
  }
}
