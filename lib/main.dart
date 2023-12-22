import 'package:flutter/material.dart';
import 'package:helloworld/test_page2.dart';
import 'package:helloworld/test_page3.dart';
import 'test_page1.dart';

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
  late PageController _pageController;
  int _selectIndex = 0;

  // ページの配列
  final _pages = [TestPage1(), TestPage2(), TestPage3()];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
    );
  }
}
