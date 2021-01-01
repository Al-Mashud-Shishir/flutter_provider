import 'package:flutter/material.dart';
import 'package:flutter_provider/views/widgets/page1/bottom.dart';
import 'package:flutter_provider/views/widgets/page1/top.dart';

class Page1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Flexible(child: Top()), Flexible(child: Bottom())],
      ),
    );
  }
}
