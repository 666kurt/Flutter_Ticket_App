import 'package:flutter/material.dart';
import 'package:flutter_ticket_app/models/ticket.dart';
import 'package:flutter_ticket_app/screen/ticket_cell.dart';
import '../resources/ticket_mock.dart';

class TicketScreen extends StatelessWidget {
  TicketScreen({super.key});

  final List<Ticket> tickets = mockTickets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Билеты'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: tickets.length,
          itemBuilder: (context, index) {
            final Ticket ticket = tickets[index];
            return TicketCell(ticket: ticket);
          },
        ),
      ),
    );
  }
}
