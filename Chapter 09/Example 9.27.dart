// Both methods are correct. However, note how cascade notation makes for much cleaner code!

// Cascade notation
Color test = const Color(0xFFFFFFFF)
  ..withAlpha(128)
  ..withBlue(100)
  ..withGreen(20)
  ..withRed(72);

// "Standard" notation
Color test = const Color(0xFFFFFFFF);
test = test.withAlpha(128);
test = test.withBlue(100);
test = test.withGreen(20);
test = test.withRed(72);
