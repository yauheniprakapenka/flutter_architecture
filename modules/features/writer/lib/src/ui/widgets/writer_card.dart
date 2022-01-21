import 'package:flutter/material.dart';
import 'package:writer/src/domain/entities/writer.dart';

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
    return Container(
      height: 160,
      width: double.maxFinite,
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[100],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: _Image(
              writer: writer,
            ),
          ),
          Positioned.fill(
            top: 100,
            child: _Description(
              writer: writer,
            ),
          ),
          Positioned(
            right: 24,
            top: 80,
            child: _Button(onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final Writer writer;

  const _Description({
    Key? key,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Hero(
          tag: WriterHeroTagFactory.makeNameTag(writer),
          child: Material(
            color: Colors.transparent,
            child: Text(
              writer.name,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final Writer writer;

  const _Image({
    Key? key,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Hero(
      tag: WriterHeroTagFactory.makeAvatarTag(writer),
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

class _Button extends StatelessWidget {
  final GestureTapCallback onPressed;

  const _Button({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: onPressed,
      child: const SizedBox.square(
        dimension: 40,
        child: ColoredBox(
          color: Colors.deepPurple,
          child: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
