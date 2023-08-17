import 'package:flutter/material.dart';

import 'button_loading_widget.dart';

class TPrimaryButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;
  final String text;

  const TPrimaryButton({
    super.key,
    this.isLoading = false,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            side: BorderSide.none,
          ),
          icon: isLoading ? const SizedBox() : CircularProgressIndicator(),
          label: isLoading ? const ButtonLoadingWidget() : Text(text)),
    );
  }
}
