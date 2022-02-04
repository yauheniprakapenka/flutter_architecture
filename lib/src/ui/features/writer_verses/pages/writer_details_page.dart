import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../builders/writer_hero_tag_factory.dart';

class WriterDetailsPage extends StatelessWidget {
  final Writer writer;

  const WriterDetailsPage({Key? key, required this.writer}) : super(key: key);

  @override
  Widget build(context) {
    return BlocBuilder<WriterBloc, WriterState>(builder: (context, state) {
      final isWriterBookmarked = state.bookmarkedWritersId.contains(writer.id);
      return Scaffold(
        appBar: AppBar(
          title: Text(writer.name),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: isWriterBookmarked ? Colors.white : Colors.grey[600],
              ),
              onPressed: () {
                isWriterBookmarked ? context.read<WriterBloc>().add(UnbookmarkWriterEvent(writer.id)) : context.read<WriterBloc>().add(BookmarkWriterEvent(writer.id));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: buildWriterAvatarTag(writer),
                child: SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: Image.asset(
                    writer.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ...writer.verses.map((poem) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const Text('* * *'),
                      const SizedBox(height: 8),
                      Text(
                        poem.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        poem.text,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      );
    });
  }
}
