import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vanilla_contacts/ChangeSelected.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Very useful to call variable from a change notifier.
        Provider.of<ChangeSelected>(context, listen: false).changeSelect(text);
        print(text);
        },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Colors.black)
            ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
