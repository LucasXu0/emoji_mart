import 'package:flutter/material.dart';

class EmojiItem extends StatelessWidget {
  const EmojiItem({
    super.key,
    required this.onTap,
    required this.emoji,
    this.size = 24,
    this.fontFamilyFallback,
  });

  final VoidCallback onTap;

  final String emoji;

  // size of the emoji, font size
  final double size;

  // In some platforms, emoji is not supported, so we need to use fallback font
  final List<String>? fontFamilyFallback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(0.0),
      constraints: const BoxConstraints(),
      alignment: Alignment.center,
      icon: Text(
        emoji,
        style: TextStyle(
          fontSize: size,
          fontFamilyFallback: fontFamilyFallback ?? ['Noto Color Emoji'],
        ),
      ),
    );
  }
}
