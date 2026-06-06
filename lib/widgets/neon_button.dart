import 'package:flutter/material.dart';
import '../app_theme.dart';

class NeonButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool filled;

  const NeonButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.filled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          gradient: filled ? AppTheme.heroGradient : null,
          color: filled ? null : AppTheme.panel2,
          border: Border.all(color: AppTheme.border),
          borderRadius: BorderRadius.circular(14),
          boxShadow: filled
              ? [BoxShadow(color: AppTheme.cyan.withOpacity(0.18), blurRadius: 18)]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: filled ? Colors.black : AppTheme.text),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: filled ? Colors.black : AppTheme.text,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
