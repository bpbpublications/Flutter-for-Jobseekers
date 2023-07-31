import 'dart:ui' as ui;

// Cascade notation
Paint()
  ..style = PaintingStyle.stroke
  ..strokeWidth = 3
  ..shader = ui.Gradient.linear(
    const Offset(0, 20),
    const Offset(300, 20),
    <Color>[
      Colors.blue,
      Colors.red,
    ],
  );

// Non-cascade notation
final Paint paint = Paint();
paint.style = PaintingStyle.stroke;
paint.strokeWidth = 3;
paint.shader = ui.Gradient.linear(
  const Offset(0, 20),
  const Offset(300, 20),
  <Color>[
    Colors.blue,
    Colors.red,
  ],
);
