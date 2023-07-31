Text(
  'Fancy text',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3¬¬
      ..shader = ui.Gradient.linear(
        const Offset(0, 20),
        const Offset(300, 20),
        <Color>[
          Colors.blue,
          Colors.red,
        ],
      ),
  ),
)
