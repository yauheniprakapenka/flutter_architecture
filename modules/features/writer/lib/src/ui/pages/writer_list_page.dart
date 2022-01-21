import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/bloc/writer_bloc/writer_bloc.dart';
import '../../domain/bloc/writer_bloc/writer_event.dart';
import '../../domain/entities/writer.dart';
import '../../ui/widgets/writer_card.dart';
import '../../ui/pages/writer_details_page.dart';

class WritersListPage extends StatefulWidget {
  const WritersListPage({Key? key}) : super(key: key);

  @override
  State<WritersListPage> createState() => _WritersListPageState();
}

class _WritersListPageState extends State<WritersListPage> {
  final WriterBloc bloc = Get.put(WriterBloc());

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Writers'),
      ),
      body: _WritersList(),
    );
  }
}

class _WritersList extends StatelessWidget {
  final WriterBloc bloc = Get.find();

  _WritersList({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return SizedBox(
      child: StreamBuilder<List<Writer>>(
        stream: bloc.state,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isNotEmpty) {
              return RefreshIndicator(
                onRefresh: _onRefresh,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...snapshot.data!
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
            }
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }

  Future<void> _onRefresh() async {
    bloc.event.add(WriterEvent.update);
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
}
