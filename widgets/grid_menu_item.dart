import 'package:flutter/material.dart';
import '../main.dart'; 

class GridMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap; // Parameter onTap

  const GridMenuItem({
    super.key, 
    required this.icon, 
    required this.label,
    this.onTap, // Masukkan ke constructor
  });

  @override
  Widget build(BuildContext context) {
    // Gunakan InkWell untuk membuat item bisa diklik dan memiliki efek riak (ripple effect)
    return InkWell(
      onTap: onTap, // Terapkan fungsi onTap
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 80, 
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withAlpha(26), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: kAccentGold),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.white.withAlpha(229), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}