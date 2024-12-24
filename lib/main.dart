import 'package:flutter/material.dart';
import 'package:flutter_ticket_app/resources/app_fonts_style.dart';
import 'screen/ticket_screen.dart';

void main() {
  runApp(const TicketApp());
}

class TicketApp extends StatelessWidget {
  const TicketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: TicketScreen(),
    );
  }
}
