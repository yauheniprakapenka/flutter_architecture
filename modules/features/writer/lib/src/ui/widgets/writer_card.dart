import 'package:flutter/material.dart';

import '../../domain/entities/writer.dart';
import '../../ui/utils/writer_hero_tag_factory.dart';

class WriterCard extends StatelessWidget {
  final Writer writer;
  final GestureTapCallback onPressed;

  const WriterCard({
    Key? key,
    required this.writer,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 144,
        width: double.maxFinite,
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: Colors.grey[300] ?? Colors.white,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        _WriterName(
                          writer: writer,
                        ),
                        const SizedBox(height: 16),
                        _WriterBio(
                          bio: writer.bio,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _WriterAvatar(
                    writer: writer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WriterName extends StatelessWidget {
  final Writer writer;

  const _WriterName({
    Key? key,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Material(
      color: Colors.transparent,
      child: Text(
        writer.name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _WriterAvatar extends StatelessWidget {
  final Writer writer;

  const _WriterAvatar({
    Key? key,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Hero(
      tag: WriterHeroTagFactory.makeWriterAvatarTag(writer),
      child: Container(
        height: 100,
        width: 100,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(writer.avatar),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class _WriterBio extends StatelessWidget {
  final String bio;

  const _WriterBio({
    Key? key,
    required this.bio,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bio,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[700],
          ),
          maxLines: 5,
        ),
      ],
    );
  }
}
