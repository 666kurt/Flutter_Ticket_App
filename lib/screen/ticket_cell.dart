import 'package:flutter/material.dart';
import 'package:flutter_ticket_app/helpers/datetime_extensions.dart';
import '../models/ticket.dart';
import 'ticket_cell_image.dart';

class TicketCell extends StatelessWidget {
  const TicketCell({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Image block
          TicketCellImage(ticket: ticket),

          // Information block
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ticket.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  ticket.eventDate.toEventDate(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Divider(color: Color(0xFFE8E9EC)),
                Text(
                  "Заказ №${ticket.orderNumber}",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  ticket.orderDate.toOrderDate(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black.withValues(alpha: 0.35),
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
