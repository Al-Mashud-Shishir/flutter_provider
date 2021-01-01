import 'package:flutter/material.dart';
import 'package:flutter_provider/models/info.dart';
import 'package:provider/provider.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context);
    return Container(
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: info.getTitle,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ": ",
            ),
            TextSpan(
              text: info.getDescription,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
