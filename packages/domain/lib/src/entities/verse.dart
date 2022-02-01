class Verse {
  final String title;
  final String text;

  const Verse({
    required this.title,
    required this.text,
  });

  @override
  String toString() => 'Verse(title: $title, text: $text)';
}
