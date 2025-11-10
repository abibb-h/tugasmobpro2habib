import 'package:flutter/material.dart';
import '../main.dart'; // Impor untuk kAccentGold
import 'package:google_fonts/google_fonts.dart';

class AtmCard extends StatelessWidget {
  final String bankName;
  final String cardNumber;
  final String balance;
  final Color color1;
  final Color color2;

  const AtmCard({
    super.key,
    required this.bankName,
    required this.cardNumber,
    required this.balance,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, 
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: color2.withAlpha(128),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bankName,
                style: const TextStyle(
                  color: kAccentGold, 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Ikon chip kartu
              const Icon(
                Icons.memory,
                color: kAccentGold,
                size: 40,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                balance,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26, 
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 12),
              // Font monospace untuk nomor kartu
              Text(
                cardNumber,
                style: GoogleFonts.sourceCodePro(
                  color: Colors.white.withAlpha(204),
                  fontSize: 16,
                  letterSpacing: 3, 
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}