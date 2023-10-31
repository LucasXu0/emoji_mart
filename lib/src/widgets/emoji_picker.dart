import 'package:easy_debounce/easy_debounce.dart';
import 'package:emoji_mart/emoji_mart.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class EmojiPicker extends StatefulWidget {
  const EmojiPicker({
    super.key,
    required this.emojiData,
    required this.onEmojiSelected,
    this.configuration = const EmojiPickerConfiguration(),
  });

  // Data to use for the picker
  final EmojiData emojiData;

  // callback when an emoji is selected
  final EmojiSelectedCallback onEmojiSelected;

  final EmojiPickerConfiguration configuration;

  @override
  State<EmojiPicker> createState() => _EmojiPickerState();
}

class _EmojiPickerState extends State<EmojiPicker>
    with SingleTickerProviderStateMixin {
  // global keys for each section
  //
  // it's used to scroll to a specific section
  final sectionKeys = <String, GlobalKey>{};

  // the index of the most visible section
  final ValueNotifier<int> mostVisibleIndex = ValueNotifier(0);

  // store the visible fraction of each section
  // the key is the category id
  // the value is the visible fraction
  // if the visible fraction is equal or less than 0, it means the section is not visible
  final visibleSections = <String, double>{};

  // the text in the search bar
  final ValueNotifier<String> keyword = ValueNotifier('');

  // current selected skin tone
  final ValueNotifier<EmojiSkinTone> skinTone =
      ValueNotifier(EmojiSkinTone.none);

  late TabController tabController;
  final scrollController = ScrollController();

  // filtered emoji data
  late EmojiData emojiData;

  @override
  void initState() {
    super.initState();

    emojiData = widget.emojiData;
    tabController = TabController(
      length: widget.emojiData.categories.length,
      vsync: this,
    );
    mostVisibleIndex.addListener(scrollToMostVisibleSectionIndex);

    for (final element in emojiData.categories) {
      sectionKeys[element.id] = GlobalKey();
    }
  }

  @override
  void dispose() {
    super.dispose();

    tabController.dispose();
    mostVisibleIndex.removeListener(scrollToMostVisibleSectionIndex);
    mostVisibleIndex.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // tab bar
        _buildTabBar(context),

        // search bar
        if (widget.configuration.showSearchBar)
          EmojiSearchBar(
            configuration: widget.configuration,
            onKeywordChanged: (keyword) {
              this.keyword.value = keyword;
            },
            onSkinToneChanged: (skinTone) {
              this.skinTone.value = skinTone;
            },
          ),

        // sections
        Expanded(
          child: _buildSections(context),
        ),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    final tabs = widget.emojiData.categories
        .map(
          (category) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            // child: Text(category.id),
            child: Icon(
              categoryIcon(category.id),
              size: 20,
            ),
          ),
        )
        .toList();
    return TabBar(
      isScrollable: true,
      controller: tabController,
      tabs: tabs,
      onTap: (index) {
        scrollToSection(index);
      },
    );
  }

  Widget _buildSections(BuildContext context) {
    CustomScrollView builder(EmojiData emojiData, EmojiSkinTone skinTone) =>
        CustomScrollView(
          controller: scrollController,
          slivers: emojiData.categories
              .map(
                (category) => SliverVisibilityDetector(
                  key: ValueKey(category.id),
                  onVisibilityChanged: (info) => updateMostVisibleSection(
                    category.id,
                    info,
                  ),
                  sliver: EmojiSection(
                    sectionKey: sectionKeys[category.id]!,
                    skinTone: skinTone,
                    configuration: widget.configuration,
                    emojiData: emojiData,
                    category: category,
                    onEmojiSelected: widget.onEmojiSelected,
                  ),
                ),
              )
              .toList(),
        );

    if (widget.configuration.showSearchBar) {
      return ValueListenableBuilder<EmojiSkinTone>(
        valueListenable: skinTone,
        builder: (_, skinTone, __) {
          return ValueListenableBuilder(
            valueListenable: keyword,
            builder: (_, keyword, ___) {
              final emojiData = widget.emojiData.filterByKeyword(keyword);
              if (emojiData.categories.isEmpty) {
                return Center(
                  child: Text(widget.configuration.i18n.searchNoResult),
                );
              }
              return builder(emojiData, skinTone);
            },
          );
        },
      );
    }

    return builder(emojiData, EmojiSkinTone.none);
  }

  void scrollToMostVisibleSectionIndex() {
    final index = mostVisibleIndex.value;
    tabController.animateTo(index);
  }

  Future<void> scrollToSection(int index) async {
    final categoryId = widget.emojiData.categories[index].id;
    final key = sectionKeys[categoryId];
    final currentContext = key?.currentContext;
    if (currentContext != null) {
      await Scrollable.ensureVisible(
        currentContext,
      );
    }
  }

  // Count the most visible section based on the visibility info
  void updateMostVisibleSection(String categoryId, VisibilityInfo info) {
    visibleSections[categoryId] = info.visibleFraction;

    // Remove the category if it is not visible
    if (info.visibleFraction <= 0) {
      visibleSections.remove(categoryId);
    }

    // If there are no visible sections, return
    if (visibleSections.isEmpty) {
      return;
    }

    // Update the most visible index
    EasyDebounce.debounce(
        'updateMostVisibleIndex', const Duration(milliseconds: 250), () {
      // Find the category with the highest visibility fraction
      final mostVisibleCategoryId = visibleSections.entries
          .reduce((a, b) => a.value > b.value ? a : b)
          .key;
      mostVisibleIndex.value = widget.emojiData.categories.indexWhere(
        (category) => category.id == mostVisibleCategoryId,
      );
    });
  }

  IconData categoryIcon(String categoryId) {
    switch (categoryId) {
      case 'people':
        return Icons.tag_faces;
      case 'nature':
        return Icons.eco;
      case 'foods':
        return Icons.fastfood;
      case 'activity':
        return Icons.directions_run;
      case 'places':
        return Icons.location_city;
      case 'objects':
        return Icons.lightbulb;
      case 'symbols':
        return Icons.emoji_symbols;
      case 'flags':
        return Icons.flag;
      default:
        return Icons.emoji_emotions;
    }
  }
}
