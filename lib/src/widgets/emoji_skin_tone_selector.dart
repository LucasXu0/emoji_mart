import 'package:emoji_mart/emoji_mart.dart';
import 'package:flutter/material.dart';

typedef EmojiSkinToneChanged = void Function(EmojiSkinTone skinTone);

class EmojiSkinToneSelector extends StatefulWidget {
  const EmojiSkinToneSelector({
    super.key,
    required this.configuration,
    required this.onSkinToneChanged,
  });

  final EmojiPickerConfiguration configuration;
  final EmojiSkinToneChanged onSkinToneChanged;

  @override
  State<EmojiSkinToneSelector> createState() => _EmojiSkinToneSelectorState();
}

class _EmojiSkinToneSelectorState extends State<EmojiSkinToneSelector> {
  EmojiSkinTone skinTone = EmojiSkinTone.none;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<EmojiSkinTone>(
      initialValue: skinTone,
      icon: const Icon(
        Icons.emoji_emotions_outlined,
      ),
      onSelected: (value) {
        widget.onSkinToneChanged(value);
        setState(() {
          skinTone = value;
        });
      },
      tooltip: widget.configuration.i18n.skinButtonTooltip,
      itemBuilder: (context) {
        return EmojiSkinTone.values
            .map(
              (skin) => PopupMenuItem(
                value: skin,
                child: Text(skinToneI18n(skin)),
              ),
            )
            .toList();
      },
    );
  }

  String skinToneI18n(EmojiSkinTone skinTone) {
    switch (skinTone) {
      case EmojiSkinTone.none:
        return widget.configuration.i18n.skin1;
      case EmojiSkinTone.light:
        return widget.configuration.i18n.skin2;
      case EmojiSkinTone.mediumLight:
        return widget.configuration.i18n.skin3;
      case EmojiSkinTone.medium:
        return widget.configuration.i18n.skin4;
      case EmojiSkinTone.mediumDark:
        return widget.configuration.i18n.skin5;
      case EmojiSkinTone.dark:
        return widget.configuration.i18n.skin6;
    }
  }
}
