import 'package:flutter/material.dart';

// エントリーポイントのmain関数
void main() {
  // MyAppの呼び出し
  runApp(const MyApp());
}

// MyAppの定義
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            const Text("HelloWorld"),
            const Text("ハローワールド"),
            TextButton(
                onPressed: () => {print("ボタンが押されたよ")},
                child: const Text("テキストボタン")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                Icon(Icons.beach_access, color: Colors.blue, size: 36.0)
              ],
            )
          ],
        ));
  }
}
