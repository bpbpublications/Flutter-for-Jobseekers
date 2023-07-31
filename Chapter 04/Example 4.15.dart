Container(
  color: Colors.grey[300],
  width: 105,
  height: 105,
  child: const Text(
    "Your text will automatically wrap to the next line, but what happens if it overflows its parent?",
    overflow: TextOverflow.ellipsis,
  ),
)
