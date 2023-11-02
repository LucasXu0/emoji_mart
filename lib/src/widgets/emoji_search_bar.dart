import 'package:flutter/material.dart';
import 'package:flutter_emoji_mart/flutter_emoji_mart.dart';

class EmojiSearchBar extends StatefulWidget {
  const EmojiSearchBar({
    super.key,
    required this.configuration,
    required this.onKeywordChanged,
    required this.onSkinToneChanged,
  });

  final EmojiPickerConfiguration configuration;
  final void Function(String keyword) onKeywordChanged;
  final EmojiSkinToneChanged onSkinToneChanged;

  @override
  State<EmojiSearchBar> createState() => _EmojiSearchBarState();
}

class _EmojiSearchBarState extends State<EmojiSearchBar> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          // search bar
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                hintText: widget.configuration.i18n.searchHintText,
                border: const OutlineInputBorder(),
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(
                fontSize: 15,
              ),
              onChanged: widget.onKeywordChanged,
            ),
          ),
          // clear button
          IconButton(
            tooltip: widget.configuration.i18n.searchClearTooltip,
            icon: const Icon(
              Icons.clear,
            ),
            onPressed: () {
              controller.clear();
              widget.onKeywordChanged('');
            },
          ),
          // skin tone picker
          EmojiSkinToneSelector(
            configuration: widget.configuration,
            onSkinToneChanged: widget.onSkinToneChanged,
          ),
        ],
      ),
    );
  }
}
