import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../builders/writer_hero_tag_factory.dart';
import 'bookmark_icon.dart';

class WriterCard extends StatelessWidget {
  final Writer writer;
  final GestureTapCallback onPressed;
  final bool isBookmarked;

  const WriterCard({
    Key? key,
    required this.writer,
    required this.onPressed,
    required this.isBookmarked,
  }) : super(key: key);

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 144,
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: Colors.grey[300] ?? Colors.red,
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            _WriterName(
                              writer: writer,
                            ),
                            const SizedBox(height: 16),
                            _WriterBiography(
                              bio: writer.biography,
                            ),
                          ],
                        ),
                      ),
                    ],
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
            if (isBookmarked)
              const Positioned(
                right: 14,
                child: BookmarkIcon(),
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
      tag: buildWriterAvatarTag(writer),
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

class _WriterBiography extends StatelessWidget {
  final String bio;

  const _WriterBiography({
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
