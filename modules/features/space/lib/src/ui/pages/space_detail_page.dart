import 'package:flutter/material.dart';

import '../../domain/entities/space.dart';
import '../utils/space_hero_tag_factory.dart';

class SpaceDetailPage extends StatelessWidget {
  final Space space;

  const SpaceDetailPage({
    Key? key,
    required this.space,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space details'),
      ),
      body: Column(
        children: [
          Hero(
            tag: SpaceHeroTagFactory.makeImageTag(space),
            child: SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Image.asset(
                space.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Hero(
                tag: SpaceHeroTagFactory.makeDescriptionTag(space),
                child: Material(
                  child: Text(
                    space.description,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
