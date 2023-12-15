import 'dart:convert';
import 'dart:math';

import 'package:base_app/theme/app_theme.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum StringListFormattingTypes { conjunction, disjunction }

const _stringNormalizerChars = {
  'à': 'a',
  'á': 'a',
  'â': 'a',
  'ã': 'a',
  'ä': 'a',
  'å': 'a',
  'ò': 'o',
  'ó': 'o',
  'ô': 'o',
  'õ': 'o',
  'ö': 'o',
  'ø': 'o',
  'ð': 'o',
  'è': 'e',
  'é': 'e',
  'ê': 'e',
  'ë': 'e',
  'ç': 'c',
  'ì': 'i',
  'í': 'i',
  'î': 'i',
  'ï': 'i',
  'ù': 'u',
  'ú': 'u',
  'û': 'u',
  'ü': 'u',
  'ñ': 'n',
  'š': 's',
  'ÿ': 'y',
  'ý': 'y',
  'ž': 'z',
};

class StringUtils {
  /// Normalize a string for search
  static String normalizeStringForSearch(String str) {
    final strBuilder = StringBuffer();

    for (var i = 0; i < str.length; i++) {
      final char = str[i].toLowerCase();
      strBuilder.write(_stringNormalizerChars[char] ?? char);
    }

    return strBuilder.toString().trim();
  }

  /// Helper to simplify search, receive the [normalizedSearchValue]
  /// and normalize and compare it to [target]
  static bool normalizedSearch(String normalizedSearchValue, String target) {
    final normalizedTarget = normalizeStringForSearch(target);
    return normalizedTarget.contains(normalizedSearchValue);
  }

  /// Creates a list of TextSpan's highlighting the current search
  static List<InlineSpan> createTextSpansOfSearch(String normalizedSearch, String target) {
    if (normalizedSearch.isEmpty) {
      return [
        TextSpan(text: target),
      ];
    }

    final normalizedTarget = normalizeStringForSearch(target);
    final searchIndex = normalizedTarget.indexOf(normalizedSearch);

    if (searchIndex >= 0) {
      final endIndex = searchIndex + normalizedSearch.length;
      return [
        if (searchIndex > 0) TextSpan(text: target.substring(0, searchIndex)),
        TextSpan(
          text: target.substring(searchIndex, endIndex),
          style: const TextStyle(
            color: AppTheme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (endIndex < target.length) TextSpan(text: target.substring(endIndex)),
      ];
    }

    return [
      TextSpan(text: target),
    ];
  }

  /// Capitalize a string
  static String capitalize(String str) {
    return str[0].toUpperCase() + str.substring(1);
  }

  /// Capitalize all words of a string
  static String capitalizeAllWords(String str) {
    return str.split(' ').map(capitalize).join(' ');
  }

  /// Generates a random string whit [len] characters.
  static String randomString(int len) {
    final r = Random();
    return String.fromCharCodes(List.generate(len, (index) => r.nextInt(33) + 89));
  }

  static String prettyEncodeJson(Map<String, dynamic> map) {
    const encoder = JsonEncoder.withIndent('    ');
    return encoder.convert(map);
  }

  /// Sanitize a file name by removing special chars and
  /// removing extra dots, keeping only the last one
  static String sanitizeFileName(String fileName) {
    final sanitizedFileName = fileName.replaceAll(RegExp(r'[^0-9a-zA-ZÀ-ÿ-_ \.#]+'), '_');

    return sanitizedFileName.replaceAll(RegExp(r'\.(?=[^\.]*\.)+'), '_');
  }

  static String countryCodeToEmoji(String countryCode) {
    // 0x41 is Letter A
    // 0x1F1E6 is Regional Indicator Symbol Letter A
    // Example :
    // firstLetter U => 20 + 0x1F1E6
    // secondLetter S => 18 + 0x1F1E6
    // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
    final firstLetter = countryCode.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final secondLetter = countryCode.codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  static String listFormat(Iterable<String> items, StringListFormattingTypes type) =>
      items.reduceIndexed((index, previous, element) => index < items.length - 1
          ? '$previous, $element'
          : type == StringListFormattingTypes.conjunction
              ? '$previous ${'and'.tr} $element'
              : '$previous ${'or'.tr} $element');

  /// Returns null if [str] is empty, or [str] if is not empty
  static String? nullOrNonEmptyString(String? str) {
    return str == null || str.isEmpty ? null : str;
  }
}
