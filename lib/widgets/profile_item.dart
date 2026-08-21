import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String value;

  const ProfileItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF131320),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.cyanAccent.withValues(alpha: 0.5), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.cyanAccent.withValues(alpha: 0.3),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            shadows: [
              Shadow(
                color: Colors.cyanAccent,
                blurRadius: 5,
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
