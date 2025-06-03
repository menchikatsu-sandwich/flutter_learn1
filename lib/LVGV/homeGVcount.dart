import 'package:flutter/material.dart';

class HomeGVcount extends StatefulWidget {
  const HomeGVcount({super.key});

  @override
  State<HomeGVcount> createState() => _HomeGVcountState();
}

class _HomeGVcountState extends State<HomeGVcount> {
  List<bool> _pressed = List.generate(9, (_) => false);

  int? currentIndex;

  void _handleTouch(Offset position, BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final localOffset = box.globalToLocal(position);

    final width = box.size.width;
    final boxSize = (width - 40) / 3; // 3 columns, 10 padding

    final col = (localOffset.dx / (boxSize + 10)).floor();
    final row = (localOffset.dy / (boxSize + 10)).floor();

    int index = row * 3 + col;
    if (index >= 0 && index < _pressed.length && currentIndex != index) {
      setState(() {
        _pressed[index] = true;
        if (currentIndex != null) _pressed[currentIndex!] = false;
        currentIndex = index;
      });
    }
  }

  void _reset() {
    setState(() {
      for (int i = 0; i < _pressed.length; i++) {
        _pressed[i] = false;
      }
      currentIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tap-Drag Grid - Santo Evorius Jehu"),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return GestureDetector(
              onPanStart: (details) {
                _handleTouch(details.globalPosition, context);
              },
              onPanUpdate: (details) {
                _handleTouch(details.globalPosition, context);
              },
              onPanEnd: (_) => _reset(),
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(10),
                children: List.generate(9, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _pressed[index]
                          ? Color.fromARGB(255, 230, 107, 252)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        if (_pressed[index])
                          BoxShadow(
                            color: Colors.purple.withOpacity(0.5),
                            blurRadius: 12,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                      ],
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
