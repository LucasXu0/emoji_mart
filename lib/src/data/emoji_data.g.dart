// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String,
  emojiIds: (json['emojis'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'emojis': instance.emojiIds,
};

_Skin _$SkinFromJson(Map<String, dynamic> json) =>
    _Skin(unified: json['unified'] as String, native: json['native'] as String);

Map<String, dynamic> _$SkinToJson(_Skin instance) => <String, dynamic>{
  'unified': instance.unified,
  'native': instance.native,
};

_Emoji _$EmojiFromJson(Map<String, dynamic> json) => _Emoji(
  id: json['id'] as String,
  name: json['name'] as String,
  keywords: (json['keywords'] as List<dynamic>).map((e) => e as String).toSet(),
  skins: (json['skins'] as List<dynamic>)
      .map((e) => Skin.fromJson(e as Map<String, dynamic>))
      .toList(),
  version: (json['version'] as num).toDouble(),
);

Map<String, dynamic> _$EmojiToJson(_Emoji instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'keywords': instance.keywords.toList(),
  'skins': instance.skins,
  'version': instance.version,
};

_EmojiData _$EmojiDataFromJson(Map<String, dynamic> json) => _EmojiData(
  categories: (json['categories'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  emojis: (json['emojis'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Emoji.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$EmojiDataToJson(_EmojiData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'emojis': instance.emojis,
    };
