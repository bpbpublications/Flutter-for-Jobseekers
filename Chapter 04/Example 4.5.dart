Container(
  width: 100,
  height: 100,
  margin: const EdgeInsets.only(
    top: 20,
    left: 100,
  ),
  decoration: BoxDecoration(
    shape: BoxShape.circle,
      color: Colors.grey[50],
  ),
  child: const FlutterLogo(),
  padding: const EdgeInsets.all(30.0),
  foregroundDecoration: BoxDecoration(
    border: Border.all(
      width: 5,
      color: Colors.grey,
      style: BorderStyle.solid,
    ),
    gradient: const RadialGradient(
      colors: [
        Colors.white,
        Colors.white,
        Colors.black,
      ],
    ),
    shape: BoxShape.circle,
  ),
)
