import 'package:flutter/material.dart';
import 'screen/home_splash.dart'; 
import 'package:google_fonts/google_fonts.dart';


const Color kBackgroundColor = Color(0xFF000B1C); 
const Color kSurfaceColor = Color(0xFF001F54);   
const Color kAccentGold = Color(0xFFD4AF37);    

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan ThemeData.dark() sebagai basis
    final darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: kBackgroundColor, 
        elevation: 0, 
        centerTitle: true,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.dark,
        primary: kAccentGold,    
        secondary: kAccentGold,  
        surface: kSurfaceColor,  
      ),
      useMaterial3: true,
      // Font Poppins untuk tampilan lebih elegan
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
      
      // Style Card global
      cardTheme: CardThemeData(
        elevation: 0, // Desain flat modern
        color: kSurfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          // Tambahkan border gold tipis
          side: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
        ),
      ),
    );

    return MaterialApp(
      title: 'Finance Mate',
      debugShowCheckedModeBanner: false,
      theme: darkTheme, 
      home: const SplashScreen(),
    );
  }
}

