import 'package:flutter/material.dart';
import 'package:new_project/pallets.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox({super.key, required this.color, required this.headerText, required this.descText});
  final Color color;
  final String headerText;
  final String descText;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(headerText,style: TextStyle(
                color: Pallete.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(descText,style: TextStyle(
                  color: Pallete.blackColor,

              ),),
            )
          ],
        ),
      ),
    );
  }
}

class PopupBox extends StatefulWidget {
  const PopupBox({super.key, required this.speech});
  final String speech;

  @override
  State<PopupBox> createState() => _PopupBoxState();
}

class _PopupBoxState extends State<PopupBox> {
  @override
  Widget build(BuildContext context) {
    return AboutDialog(
      children: [
        Text(widget.speech)
      ],
    );
  }
}
