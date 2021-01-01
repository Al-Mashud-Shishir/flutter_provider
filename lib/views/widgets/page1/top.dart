import 'package:flutter/material.dart';
import 'package:flutter_provider/models/info.dart';
import 'package:flutter_provider/views/page2.dart';
import 'package:provider/provider.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Info>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          child: RaisedButton(
            onPressed: () {
              // we are changing the state value
              info.setTitle = "Changed title";
              info.setDescription = "Changed description";
            },
            child: Text(
              "Change",
            ),
          ),
        ),
        Flexible(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page2View(),
                ),
              );
            },
            child: Text(
              "Next Page",
            ),
          ),
        )
      ],
    );
  }
}
