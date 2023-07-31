Container(
  width: 100,
  color: Colors.blue,
  child: Row(
    children: const [
      Text(
        'This text will overflow its constraints.',
        softWrap: false,
        overflow: TextOverflow.visible,
      ),
    ],
  ),
)
