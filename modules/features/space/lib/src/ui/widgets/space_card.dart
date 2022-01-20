import 'package:flutter/material.dart';

import '../../domain/entities/space.dart';
import '../../ui/utils/space_hero_tag_factory.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  final GestureTapCallback onPressed;

  const SpaceCard({
    Key? key,
    required this.space,
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
              space: space,
            ),
          ),
          Positioned.fill(
            top: 100,
            child: _Description(
              space: space,
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
  final Space space;

  const _Description({
    Key? key,
    required this.space,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Hero(
          tag: SpaceHeroTagFactory.makeDescriptionTag(space),
          child: Material(
            color: Colors.transparent,
            child: Text(
              space.description,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final Space space;

  const _Image({
    Key? key,
    required this.space,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Hero(
      tag: SpaceHeroTagFactory.makeImageTag(space),
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
              image: AssetImage(space.image),
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
