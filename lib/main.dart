import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier_sandbox/state/app_state.dart' as state;

import 'dart:ui';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<state.AppStateNotifier, state.AppState>(
        create: (_) => state.AppStateNotifier(),
        // child: SamplePage1(),
        child: SamplePage2(),
      ),
    );
  }
}

class SamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state_notifier sample'),
      ),
      body: Center(
        child: Text(
          context
              .select<state.AppState, int>((state) => state.count)
              .toString(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<state.AppStateNotifier>().increment(),
        label: Text('1'),
        icon: Icon(Icons.add),
      ),
    );
  }
}

class SamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Polygons'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: CustomPaint(
                painter: ShapePainter(
                    context.select<state.AppState, double>(
                        (state) => state.polygonState.sides),
                    context.select<state.AppState, double>(
                        (state) => state.polygonState.size),
                    context.select<state.AppState, double>(
                        (state) => state.polygonState.rotation)),
                child: Container(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Sides'),
            ),
            Slider(
              value: context.select<state.AppState, double>(
                  (state) => state.polygonState.sides),
              min: 3.0,
              max: 10.0,
              label: context
                  .select<state.AppState, double>(
                      (state) => state.polygonState.sides)
                  .toInt()
                  .toString(),
              divisions: 7,
              onChanged: (value) {
                context.read<state.AppStateNotifier>().setSides(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Size'),
            ),
            Slider(
              value: context.select<state.AppState, double>(
                  (state) => state.polygonState.size),
              min: 10.0,
              max: MediaQuery.of(context).size.width / 2,
              onChanged: (value) {
                context.read<state.AppStateNotifier>().setSize(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Rotation'),
            ),
            Slider(
              value: context.select<state.AppState, double>(
                  (state) => state.polygonState.rotation),
              min: 0.0,
              max: math.pi,
              onChanged: (value) {
                context.read<state.AppStateNotifier>().setRotation(value);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            context.read<state.AppStateNotifier>().clearPolygonState(),
        label: Text('clear'),
        icon: Icon(Icons.clear),
      ),
    );
  }
}

// FOR PAINTING POLYGONS
class ShapePainter extends CustomPainter {
  final double sides;
  final double radius;
  final double radians;
  ShapePainter(this.sides, this.radius, this.radians);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    var path = Path();
    var angle = (math.pi * 2) / sides;
    Offset center = Offset(size.width / 2, size.height / 2);
    Offset startPoint =
        Offset(radius * math.cos(radians), radius * math.sin(radians));
    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);
    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(radians + angle * i) + center.dx;
      double y = radius * math.sin(radians + angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
