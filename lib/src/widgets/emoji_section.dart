import 'package:emoji_mart/emoji_mart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

typedef EmojiSectionHeaderBuilder = Widget Function(
  BuildContext context,
  Category category,
);

typedef EmojiItemBuilder = Widget Function(
  BuildContext context,
  String emojiId,
  String emoji,
  EmojiSelectedCallback callback,
);

class EmojiSection extends StatelessWidget {
  const EmojiSection({
    super.key,
    required this.configuration,
    required this.emojiData,
    required this.category,
    required this.onEmojiSelected,
    required this.sectionKey,
    this.headerBuilder,
    this.itemBuilder,
    this.skinTone = EmojiSkinTone.none,
  });

  final Key sectionKey;
  final EmojiPickerConfiguration configuration;
  final EmojiData emojiData;
  final Category category;
  final EmojiSkinTone skinTone;
  final EmojiSelectedCallback onEmojiSelected;
  final EmojiSectionHeaderBuilder? headerBuilder;
  final EmojiItemBuilder? itemBuilder;

  @override
  Widget build(BuildContext context) {
    Widget child = SliverGrid.builder(
      key: sectionKey,
      itemCount: category.emojiIds.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: configuration.perLine,
      ),
      itemBuilder: (context, index) {
        final emojiId = category.emojiIds[index];
        final emoji = emojiData.getEmojiById(
          emojiId,
          skinTone: skinTone,
        );
        return itemBuilder?.call(
              context,
              emojiId,
              emoji,
              onEmojiSelected,
            ) ??
            EmojiItem(
              size: configuration.emojiSize,
              emoji: emoji,
              onTap: () => onEmojiSelected(
                emojiId,
                emoji,
              ),
            );
      },
    );
    if (configuration.showSectionHeader) {
      child = SliverStickyHeader(
        header: headerBuilder != null
            ? headerBuilder!(context, category)
            : EmojiSectionHeader(
                category: category,
                configuration: configuration,
              ),
        sliver: child,
      );
    }

    return child;
  }
}
