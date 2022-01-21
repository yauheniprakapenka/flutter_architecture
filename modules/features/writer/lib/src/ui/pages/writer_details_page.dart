import 'package:flutter/material.dart';

import '../../domain/entities/writer.dart';
import '../utils/writer_hero_tag_factory.dart';

class WriterDetailsPage extends StatelessWidget {
  final Writer writer;

  const WriterDetailsPage({
    Key? key,
    required this.writer,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Writer poems'),
      ),
      body: Column(
        children: [
          Hero(
            tag: WriterHeroTagFactory.makeAvatarTag(writer),
            child: SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Image.asset(
                writer.avatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Hero(
                tag: WriterHeroTagFactory.makeNameTag(writer),
                child: Material(
                  child: Text(
                    writer.poem.first.poem,
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
