import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final Object e;
  final StackTrace? trace;
  const ErrorScreen(
    this.e,
    this.trace, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(e.toString()),
          Text(trace.toString()),
        ],
      ),
    );
  }
}
