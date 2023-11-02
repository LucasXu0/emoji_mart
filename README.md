<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

<div align="center">
    <h1>Emoji Picker for Flutter</h1>
    <p>This package is inspired by <a href="https://github.com/missive/emoji-mart">emoji_mart</a></p>
    </p>

</div>

<div align="center">
    <img src="https://github.com/LucasXu0/emoji_mart/blob/main/resources/showcase.png?raw=true">
</div>

## Features

- customize your own emoji list
- support emoji search
- support emoji categories
- support emoji skin tone

## Install

## Getting started
In the pubspec.yaml of your flutter project, add the following dependency:

```yml
dependencies:
  emoji_mart: <latest_version>
```

In your library add the following import:

```dart
import 'package:emoji_mart/emoji_mart.dart';
```

## Usage

Example:

```dart
EmojiPicker(
  emojiData: [YOUR_EMOJI_DATA],
  onEmojiSelected: (emojiId, emoji) {
    // ...
  },
)
```

For further information, please refer to the [example](https://github.com/LucasXu0/emoji_mart/blob/main/example/lib/main.dart).