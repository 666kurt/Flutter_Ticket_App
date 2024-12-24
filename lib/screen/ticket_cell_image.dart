import 'package:flutter/material.dart';
import '../models/ticket.dart';

class TicketCellImage extends StatelessWidget {
  const TicketCellImage({
    super.key,
    required this.ticket,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        // Image
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Image.network(ticket.image),
        ),

        Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFF6F6F9),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            "${ticket.ticketCount} билета",
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
