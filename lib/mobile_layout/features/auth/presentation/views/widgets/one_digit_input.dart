import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneDigitInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    // Only allow if new input is a single digit (0–9)
    if (newValue.text.length <= 1 && RegExp(r'^[0-9]?$').hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue; // Reject changes
  }
}

