import 'package:flutter_emoji_mart/flutter_emoji_mart.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('test default emoji data', () async {
    final emojiData = await EmojiData.builtIn();
    expect(emojiData.categories.length, 8);
    expect(emojiData.emojis.length, 1849);
  });
}
