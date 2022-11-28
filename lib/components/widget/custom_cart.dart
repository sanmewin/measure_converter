import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/size_constant.dart';

class CommonCart extends StatelessWidget {
  final String text;
  final Icon icon;
  const CommonCart({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).getProportionateScreenHeight(140),
        width: MediaQuery.of(context).getProportionateScreenWidth(90),
        decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
            color: Colors.black12
            )
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(text),
          ],
        ));
  }
}
