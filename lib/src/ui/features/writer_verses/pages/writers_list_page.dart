import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/writer_bloc/writer_bloc.dart';
import '../bloc/writer_bloc/writer_events/get_all_writers_event.dart';
import '../bloc/writer_bloc/writer_state.dart';
import '../widgets/widgets.dart';
import 'writer_details_page.dart';

class WritersListPage extends StatelessWidget {
  const WritersListPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Писатели'),
      ),
      body: const _WritersList(),
    );
  }
}

class _WritersList extends StatelessWidget {
  const _WritersList({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return BlocBuilder<WriterBloc, WriterState>(
      builder: (context, writerState) {
        return writerState.isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : RefreshIndicator(
                // ignore: prefer-extracting-callbacks
                onRefresh: () async {
                  context.read<WriterBloc>().add(GetAllWritersEvent());
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...writerState.writers
                          .map(
                            (writer) => WriterCard(
                              writer: writer,
                              onPressed: () =>
                                  _onWriterCardPressed(context, writer),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              );
      },
    );
  }
}

Future<void> _onWriterCardPressed(BuildContext context, Writer writer) async {
  await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return WriterDetailsPage(writer: writer);
      },
    ),
  );
}
