// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {
  String get id;
  @JsonKey(name: 'emojis')
  List<String> get emojiIds;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Category &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.emojiIds, emojiIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(emojiIds));

  @override
  String toString() {
    return 'Category(id: $id, emojiIds: $emojiIds)';
  }
}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) =
      _$CategoryCopyWithImpl;
  @useResult
  $Res call({String id, @JsonKey(name: 'emojis') List<String> emojiIds});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emojiIds = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emojiIds: null == emojiIds
          ? _self.emojiIds
          : emojiIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Category value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Category value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Category value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, @JsonKey(name: 'emojis') List<String> emojiIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.emojiIds);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, @JsonKey(name: 'emojis') List<String> emojiIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that.id, _that.emojiIds);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id, @JsonKey(name: 'emojis') List<String> emojiIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.emojiIds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Category implements Category {
  const _Category(
      {required this.id,
      @JsonKey(name: 'emojis') required final List<String> emojiIds})
      : _emojiIds = emojiIds;
  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  final String id;
  final List<String> _emojiIds;
  @override
  @JsonKey(name: 'emojis')
  List<String> get emojiIds {
    if (_emojiIds is EqualUnmodifiableListView) return _emojiIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojiIds);
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._emojiIds, _emojiIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_emojiIds));

  @override
  String toString() {
    return 'Category(id: $id, emojiIds: $emojiIds)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'emojis') List<String> emojiIds});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? emojiIds = null,
  }) {
    return _then(_Category(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      emojiIds: null == emojiIds
          ? _self._emojiIds
          : emojiIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$Skin {
  String get unified;
  String get native;

  /// Create a copy of Skin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkinCopyWith<Skin> get copyWith =>
      _$SkinCopyWithImpl<Skin>(this as Skin, _$identity);

  /// Serializes this Skin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Skin &&
            (identical(other.unified, unified) || other.unified == unified) &&
            (identical(other.native, native) || other.native == native));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unified, native);

  @override
  String toString() {
    return 'Skin(unified: $unified, native: $native)';
  }
}

/// @nodoc
abstract mixin class $SkinCopyWith<$Res> {
  factory $SkinCopyWith(Skin value, $Res Function(Skin) _then) =
      _$SkinCopyWithImpl;
  @useResult
  $Res call({String unified, String native});
}

/// @nodoc
class _$SkinCopyWithImpl<$Res> implements $SkinCopyWith<$Res> {
  _$SkinCopyWithImpl(this._self, this._then);

  final Skin _self;
  final $Res Function(Skin) _then;

  /// Create a copy of Skin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unified = null,
    Object? native = null,
  }) {
    return _then(_self.copyWith(
      unified: null == unified
          ? _self.unified
          : unified // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _self.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Skin].
extension SkinPatterns on Skin {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Skin value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Skin() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Skin value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Skin():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Skin value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Skin() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String unified, String native)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Skin() when $default != null:
        return $default(_that.unified, _that.native);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String unified, String native) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Skin():
        return $default(_that.unified, _that.native);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String unified, String native)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Skin() when $default != null:
        return $default(_that.unified, _that.native);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Skin implements Skin {
  const _Skin({required this.unified, required this.native});
  factory _Skin.fromJson(Map<String, dynamic> json) => _$SkinFromJson(json);

  @override
  final String unified;
  @override
  final String native;

  /// Create a copy of Skin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkinCopyWith<_Skin> get copyWith =>
      __$SkinCopyWithImpl<_Skin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SkinToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Skin &&
            (identical(other.unified, unified) || other.unified == unified) &&
            (identical(other.native, native) || other.native == native));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unified, native);

  @override
  String toString() {
    return 'Skin(unified: $unified, native: $native)';
  }
}

/// @nodoc
abstract mixin class _$SkinCopyWith<$Res> implements $SkinCopyWith<$Res> {
  factory _$SkinCopyWith(_Skin value, $Res Function(_Skin) _then) =
      __$SkinCopyWithImpl;
  @override
  @useResult
  $Res call({String unified, String native});
}

/// @nodoc
class __$SkinCopyWithImpl<$Res> implements _$SkinCopyWith<$Res> {
  __$SkinCopyWithImpl(this._self, this._then);

  final _Skin _self;
  final $Res Function(_Skin) _then;

  /// Create a copy of Skin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unified = null,
    Object? native = null,
  }) {
    return _then(_Skin(
      unified: null == unified
          ? _self.unified
          : unified // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _self.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Emoji {
  String get id;
  String get name;
  Set<String> get keywords;
  List<Skin> get skins;
  double get version;

  /// Create a copy of Emoji
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiCopyWith<Emoji> get copyWith =>
      _$EmojiCopyWithImpl<Emoji>(this as Emoji, _$identity);

  /// Serializes this Emoji to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Emoji &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
            const DeepCollectionEquality().equals(other.skins, skins) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(keywords),
      const DeepCollectionEquality().hash(skins),
      version);

  @override
  String toString() {
    return 'Emoji(id: $id, name: $name, keywords: $keywords, skins: $skins, version: $version)';
  }
}

/// @nodoc
abstract mixin class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) _then) =
      _$EmojiCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Set<String> keywords,
      List<Skin> skins,
      double version});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res> implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._self, this._then);

  final Emoji _self;
  final $Res Function(Emoji) _then;

  /// Create a copy of Emoji
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? keywords = null,
    Object? skins = null,
    Object? version = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _self.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      skins: null == skins
          ? _self.skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<Skin>,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Emoji].
extension EmojiPatterns on Emoji {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Emoji value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Emoji() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Emoji value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Emoji():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Emoji value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Emoji() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, Set<String> keywords,
            List<Skin> skins, double version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Emoji() when $default != null:
        return $default(
            _that.id, _that.name, _that.keywords, _that.skins, _that.version);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, Set<String> keywords,
            List<Skin> skins, double version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Emoji():
        return $default(
            _that.id, _that.name, _that.keywords, _that.skins, _that.version);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, Set<String> keywords,
            List<Skin> skins, double version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Emoji() when $default != null:
        return $default(
            _that.id, _that.name, _that.keywords, _that.skins, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Emoji implements Emoji {
  const _Emoji(
      {required this.id,
      required this.name,
      required final Set<String> keywords,
      required final List<Skin> skins,
      required this.version})
      : _keywords = keywords,
        _skins = skins;
  factory _Emoji.fromJson(Map<String, dynamic> json) => _$EmojiFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Set<String> _keywords;
  @override
  Set<String> get keywords {
    if (_keywords is EqualUnmodifiableSetView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keywords);
  }

  final List<Skin> _skins;
  @override
  List<Skin> get skins {
    if (_skins is EqualUnmodifiableListView) return _skins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skins);
  }

  @override
  final double version;

  /// Create a copy of Emoji
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmojiCopyWith<_Emoji> get copyWith =>
      __$EmojiCopyWithImpl<_Emoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmojiToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Emoji &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality().equals(other._skins, _skins) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_keywords),
      const DeepCollectionEquality().hash(_skins),
      version);

  @override
  String toString() {
    return 'Emoji(id: $id, name: $name, keywords: $keywords, skins: $skins, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$EmojiCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$EmojiCopyWith(_Emoji value, $Res Function(_Emoji) _then) =
      __$EmojiCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Set<String> keywords,
      List<Skin> skins,
      double version});
}

/// @nodoc
class __$EmojiCopyWithImpl<$Res> implements _$EmojiCopyWith<$Res> {
  __$EmojiCopyWithImpl(this._self, this._then);

  final _Emoji _self;
  final $Res Function(_Emoji) _then;

  /// Create a copy of Emoji
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? keywords = null,
    Object? skins = null,
    Object? version = null,
  }) {
    return _then(_Emoji(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _self._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      skins: null == skins
          ? _self._skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<Skin>,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$EmojiData {
  List<Category> get categories;
  Map<String, Emoji> get emojis;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiDataCopyWith<EmojiData> get copyWith =>
      _$EmojiDataCopyWithImpl<EmojiData>(this as EmojiData, _$identity);

  /// Serializes this EmojiData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmojiData &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.emojis, emojis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(emojis));

  @override
  String toString() {
    return 'EmojiData(categories: $categories, emojis: $emojis)';
  }
}

/// @nodoc
abstract mixin class $EmojiDataCopyWith<$Res> {
  factory $EmojiDataCopyWith(EmojiData value, $Res Function(EmojiData) _then) =
      _$EmojiDataCopyWithImpl;
  @useResult
  $Res call({List<Category> categories, Map<String, Emoji> emojis});
}

/// @nodoc
class _$EmojiDataCopyWithImpl<$Res> implements $EmojiDataCopyWith<$Res> {
  _$EmojiDataCopyWithImpl(this._self, this._then);

  final EmojiData _self;
  final $Res Function(EmojiData) _then;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? emojis = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      emojis: null == emojis
          ? _self.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as Map<String, Emoji>,
    ));
  }
}

/// Adds pattern-matching-related methods to [EmojiData].
extension EmojiDataPatterns on EmojiData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EmojiData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmojiData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EmojiData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EmojiData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Category> categories, Map<String, Emoji> emojis)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmojiData() when $default != null:
        return $default(_that.categories, _that.emojis);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Category> categories, Map<String, Emoji> emojis)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiData():
        return $default(_that.categories, _that.emojis);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Category> categories, Map<String, Emoji> emojis)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiData() when $default != null:
        return $default(_that.categories, _that.emojis);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EmojiData extends EmojiData {
  const _EmojiData(
      {required final List<Category> categories,
      required final Map<String, Emoji> emojis})
      : _categories = categories,
        _emojis = emojis,
        super._();
  factory _EmojiData.fromJson(Map<String, dynamic> json) =>
      _$EmojiDataFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Map<String, Emoji> _emojis;
  @override
  Map<String, Emoji> get emojis {
    if (_emojis is EqualUnmodifiableMapView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emojis);
  }

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmojiDataCopyWith<_EmojiData> get copyWith =>
      __$EmojiDataCopyWithImpl<_EmojiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmojiDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmojiData &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_emojis));

  @override
  String toString() {
    return 'EmojiData(categories: $categories, emojis: $emojis)';
  }
}

/// @nodoc
abstract mixin class _$EmojiDataCopyWith<$Res>
    implements $EmojiDataCopyWith<$Res> {
  factory _$EmojiDataCopyWith(
          _EmojiData value, $Res Function(_EmojiData) _then) =
      __$EmojiDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<Category> categories, Map<String, Emoji> emojis});
}

/// @nodoc
class __$EmojiDataCopyWithImpl<$Res> implements _$EmojiDataCopyWith<$Res> {
  __$EmojiDataCopyWithImpl(this._self, this._then);

  final _EmojiData _self;
  final $Res Function(_EmojiData) _then;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
    Object? emojis = null,
  }) {
    return _then(_EmojiData(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      emojis: null == emojis
          ? _self._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as Map<String, Emoji>,
    ));
  }
}

// dart format on
