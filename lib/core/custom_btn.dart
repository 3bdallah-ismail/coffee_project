import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  final bool isLoading;
  final Function() onPressed;
  final String text;

  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: isLoading ? null : onPressed,
      color: const Color(0xFFCE8554),
      disabledColor: const Color(0xFFCE8554).withValues(alpha: .5),
      child: AnimatedCrossFade(
        firstChild: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        secondChild: const CupertinoActivityIndicator(color: Colors.white),
        crossFadeState:
            isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
