import 'package:flutter/material.dart';
import 'scripts/QrCodeWidget.dart';
import 'scripts/HomeWindow.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  runApp(
    MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeWidget(), //initial widget
          'scripts/QrCodeWidget': (context) => const QrCodeWidget(),
    }),
  );
}
