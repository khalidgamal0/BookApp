import 'package:flutter/material.dart';

void customSunkBar(context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text))
  );
}