import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/profile_item.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentDate = DateFormat('dd MMM yyyy').format(DateTime.now());

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF050212), // Extremely dark blue/purple
            Color(0xFF1B0B3B), // Deep neon purple
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent.withValues(alpha: 0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset('assets/images/chcc-logo.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          title: const Text(
            Constants.appTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.white,
                  blurRadius: 10,
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.1),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.15),
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.cyanAccent, width: 3),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Aaron Jacob B. Capulong',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Computer Science Student',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.cyanAccent, width: 1.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withValues(alpha: 0.3),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: const Text(
                          'Aspiring Developer',
                          style: TextStyle(
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const ProfileItem(
                  title: 'Name',
                  value: 'Aaron Jacob B. Capulong',
                ),
                const ProfileItem(
                  title: 'Course',
                  value: 'BSCS - 3A',
                ),
                const ProfileItem(
                  title: 'Email',
                  value: 'jacobcapulong123@gmail.com',
                ),
                ProfileItem(
                  title: 'Date',
                  value: currentDate,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
