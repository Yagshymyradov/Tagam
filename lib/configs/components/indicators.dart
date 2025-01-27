import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  final VoidCallback onTap;

  const ErrorIndicator({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () async => onTap(),
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
              vertical: 6,
            ),
          ),
          child: const Text('Refresh'),
        ),
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  final Color? color;

  const LoadingIndicator({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
