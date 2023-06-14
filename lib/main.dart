import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 是否显示文本框
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter 动画')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // AnimatedOpacity 实现文本框渐隐渐现效果
              AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Text('Hello Flutter!'),
              ),
              SizedBox(height: 20),
              // AnimatedContainer 实现容器宽度变换效果
              AnimatedContainer(
                width: _isVisible ? 200 : 100,
                height: 50,
                duration: Duration(milliseconds: 500),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // 点击按钮时，切换文本框的显示状态
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Text('切换显示'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}