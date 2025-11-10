import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../main.dart'; // Impor untuk kAccentGold

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  // Menambahkan logika ikon untuk kategori baru
  IconData _getIconForCategory(String category) {
    switch (category) {
      case 'Food': return Icons.restaurant_menu_rounded; 
      case 'Travel': return Icons.travel_explore_outlined;
      case 'Fashion': return Icons.shopping_bag_outlined; 
      case 'Event': return Icons.event_outlined;
      case 'Income': return Icons.attach_money_rounded;
      default: return Icons.swap_horiz_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconData = _getIconForCategory(transaction.category);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: kAccentGold.withAlpha(26), // Updated to withAlpha
          child: Icon(
            iconData,
            color: kAccentGold,
            size: 20,
          ),
        ),
        title: Text(
          transaction.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          transaction.category,
          style: TextStyle(color: Colors.white.withAlpha(153)), // Updated to withAlpha
        ),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            color: transaction.amount.startsWith('-')
                ? Colors.red.shade300
                : Colors.green.shade300,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}