// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String,
      emojiIds:
          (json['emojis'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emojis': instance.emojiIds,
    };

_$SkinImpl _$$SkinImplFromJson(Map<String, dynamic> json) => _$SkinImpl(
      unified: json['unified'] as String,
      native: json['native'] as String,
    );

Map<String, dynamic> _$$SkinImplToJson(_$SkinImpl instance) =>
    <String, dynamic>{
      'unified': instance.unified,
      'native': instance.native,
    };

_$EmojiImpl _$$EmojiImplFromJson(Map<String, dynamic> json) => _$EmojiImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toSet(),
      skins: (json['skins'] as List<dynamic>)
          .map((e) => Skin.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: (json['version'] as num).toDouble(),
    );

Map<String, dynamic> _$$EmojiImplToJson(_$EmojiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'keywords': instance.keywords.toList(),
      'skins': instance.skins,
      'version': instance.version,
    };

_$EmojiDataImpl _$$EmojiDataImplFromJson(Map<String, dynamic> json) =>
    _$EmojiDataImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      emojis: (json['emojis'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Emoji.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$EmojiDataImplToJson(_$EmojiDataImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'emojis': instance.emojis,
    };
