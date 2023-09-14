
enum Category { varios, ropa, compras, ocio, deporte, gasolina, hogar, regalos }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  });

  final String title;
  final double amount;
  final Category category;
  final DateTime date;

}