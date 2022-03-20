import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String errorMessage;

  const ErrorMessage({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: (size.width * 0.05)),
        ),
      ),
    );
  }
}
