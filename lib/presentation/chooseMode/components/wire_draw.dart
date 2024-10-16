import 'package:flutter/material.dart';
import 'package:listen_music/core/configs/themes/app_theme.dart';
import 'package:provider/provider.dart';


class Wire extends StatefulWidget {
  const Wire({super.key, required this.initialPosition, required this.toOffSet});
  final Offset initialPosition;
  final Offset toOffSet;


  @override
  State<Wire> createState() => _WireState();
}

class _WireState extends State<Wire> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of<ThemeProvider>(context);
    return CustomPaint(
      painter: WirePainter(initialPosition: widget.initialPosition, toOffSet: widget.toOffSet, themeProvider: themeProvider),
    );
  }
}

class WirePainter extends CustomPainter{
  Paint? _paint;
  final Offset initialPosition;
  final Offset toOffSet;
  final ThemeProvider themeProvider;

  WirePainter({super.repaint, required this.initialPosition, required this.toOffSet, required this.themeProvider});
  @override
  void paint(Canvas canvas, Size size) {
    _paint=Paint()..color=themeProvider.themeMode().switchColor!..strokeWidth=10..style=PaintingStyle.stroke;

canvas.drawLine(initialPosition,toOffSet,_paint!);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;
}
