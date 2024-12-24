class Ticket {
  final String title;
  final DateTime eventDate;
  final DateTime orderDate;
  final String orderNumber;
  final int ticketCount;
  final String image;

  Ticket({
    required this.title,
    required this.eventDate,
    required this.orderDate,
    required this.orderNumber,
    required this.ticketCount,
    required this.image,
  });
}
