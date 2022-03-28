import 'package:flutter/material.dart';

class GlowinButton extends StatefulWidget {
  final Color colors1;
  final Color colors2;
  GlowinButton(
      {Key? key, this.colors1 = Colors.cyan, this.colors2 = Colors.greenAccent})
      : super(key: key);

  @override
  State<GlowinButton> createState() => _GlowinButtonState();
}

class _GlowinButtonState extends State<GlowinButton> {
  var glowing = false;
  var scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          glowing = false;
          scale = 1.0;
        });
      },
      onTapDown: (val) {
        setState(() {
          scale = 1.2;
          glowing = true;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.identity()..scale(scale, scale),
        margin: const EdgeInsets.all(10),
        duration: const Duration(milliseconds: 2000),
        height: 50,
        width: 170,
        decoration: BoxDecoration(
            boxShadow: glowing
                ? [
                    BoxShadow(
                        color: widget.colors1.withOpacity(0.6),
                        spreadRadius: 10,
                        blurRadius: 16,
                        offset: Offset(2, 2)),
                    BoxShadow(
                        color: widget.colors2.withOpacity(0.2),
                        spreadRadius: 10,
                        blurRadius: 16,
                        offset: Offset(1.5, 1.5)),
                    BoxShadow(
                        color: widget.colors1.withOpacity(0.3),
                        spreadRadius: 10,
                        blurRadius: 16,
                        offset: Offset(3.2, 3.1)),
                  ]
                : [],
            gradient: LinearGradient(colors: [widget.colors1, widget.colors2]),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              glowing ? Icons.lightbulb : Icons.lightbulb_outline,
              color: Colors.white,
            ),
            Text(
              glowing ? "Glowing" : "Diammod",
              style: TextStyle(
                  color: glowing ? Colors.amber : Colors.black,
                  fontSize: glowing ? 20 : 15),
            ),
          ],
        ),
      ),
    );
  }
}
