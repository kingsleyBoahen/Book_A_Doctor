
import 'package:flutter/material.dart';

class DiagnosticsCard extends StatelessWidget {
  const DiagnosticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 78,
        width: 140,
        decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(18),
        
        ),
      ),
    );
  }
}