import 'package:flutter/services.dart';

class InappropriateCharFilter extends TextInputFormatter {
  final List<String> inappropriateChar = [
    '`',
    '~',
    '!',
    '\$',
    '%',
    '^',
    '&',
    '=',
    '{',
    '}',
    '[',
    ']',
    '|',
    '\\',
    '/',
    ';',
    '"',
    "'",
    "<",
    ">",
  ];

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    for (var word in inappropriateChar) {
      if (newValue.text.contains(word)) {
        return oldValue;
      }
    }
    return newValue;
  }
}
