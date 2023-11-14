import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_emoji_mart/flutter_emoji_mart.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(
        useMaterial3: true,
      ),
      dark: ThemeData.dark(
        useMaterial3: true,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        supportedLocales: const [Locale('en')],
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(title: '🏪 Emoji Mart'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// emojiId, emoji
typedef EmojiNotifier = ValueNotifier<(String, String)>;

class _MyHomePageState extends State<MyHomePage> {
  late final Future<EmojiData> emojiData;

  final EmojiNotifier onHoverEmojiNotifier = EmojiNotifier(('', ''));

  final EmojiNotifier selectedEmojiNotifier = EmojiNotifier(('', ''));

  @override
  void initState() {
    super.initState();

    emojiData = EmojiData.builtIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<EmojiData>(
              future: emojiData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.shadow,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: SizedBox(
                      width: 320,
                      height: 400,
                      child: EmojiPicker(
                        emojiData: snapshot.data!,
                        configuration: const EmojiPickerConfiguration(
                          emojiSize: 28,
                          showSectionHeader: false,
                          perLine: 9,
                          defaultSkinTone: EmojiSkinTone.dark,
                        ),
                        itemBuilder: (context, emojiId, emoji, callback) {
                          return MouseRegion(
                            onHover: (_) {
                              onHoverEmojiNotifier.value = (emojiId, emoji);
                            },
                            child: EmojiItem(
                              onTap: () {
                                callback(emojiId, emoji);
                              },
                              emoji: emoji,
                              size: 28,
                            ),
                          );
                        },
                        onEmojiSelected: (emojiId, emoji) {
                          selectedEmojiNotifier.value = (emojiId, emoji);
                        },
                      ),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ValueListenableBuilder<(String, String)>(
              valueListenable: onHoverEmojiNotifier,
              builder: (context, value, child) {
                return Text(
                  'You\'re hovering on: ${value.$1} ${value.$2}',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ValueListenableBuilder<(String, String)>(
              valueListenable: selectedEmojiNotifier,
              builder: (context, value, child) {
                return Text(
                  'You have picked the emoji: ${value.$1} ${value.$2}',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.color_lens_outlined),
        onPressed: () {
          AdaptiveTheme.of(context).toggleThemeMode();
        },
      ),
    );
  }
}
