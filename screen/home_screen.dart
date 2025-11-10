import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengganti data transaksi sesuai permintaan
    final transactions = [
      TransactionModel('Martabak', '-Rp35.000', 'Food'),
      TransactionModel('Nasi Padang', '-Rp25.000', 'Food'), 
      TransactionModel('Jersey Barcelona', '-Rp1.500.000', 'Fashion'), 
      TransactionModel('Jaket Eiger', '-Rp650.000', 'Fashion'), 
      TransactionModel('Salary', '+Rp5.000.000', 'Income'), 
    ];
    
    final titleStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white.withAlpha(229),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Mate'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cards', style: titleStyle),
            const SizedBox(height: 16),

            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AtmCard(
                    bankName: 'ABC Priority',
                    cardNumber: '**** 2345',
                    balance: 'Rp195.500.000.000',
                    color1: Colors.grey.shade900,
                    color2: Colors.black,
                  ),
                  AtmCard(
                    bankName: 'ABC Xpresi',
                    cardNumber: '**** 8765',
                    balance: 'Rp8.150.000',
                    color1: const Color(0xFF0D1B2A),
                    color2: const Color(0xFF001F54),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            SizedBox(
              height: 100, 
              child: ListView(
                scrollDirection: Axis.horizontal, 
                children: const [
                  GridMenuItem(icon: Icons.send_rounded, label: 'Transfer'),
                  SizedBox(width: 16), 
                  GridMenuItem(icon: Icons.account_balance_wallet_outlined, label: 'Top Up'),
                  SizedBox(width: 16),
                  GridMenuItem(icon: Icons.receipt_long_outlined, label: 'Pay Bills'),
                  SizedBox(width: 16),
                  GridMenuItem(icon: Icons.trending_up_rounded, label: 'Investment'),
                  SizedBox(width: 16),
                  GridMenuItem(icon: Icons.history_rounded, label: 'History'),
                  SizedBox(width: 16), 
                ],
              ),
            ),

            const SizedBox(height: 28),

            Text('Recent Transactions', style: titleStyle),
            const SizedBox(height: 12),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}