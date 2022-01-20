import 'package:flutter/material.dart';

import '../../domain/entities/space.dart';
import '../../domain/repositories/space_repository/i_space_repository.dart';
import '../../domain/bloc/space_bloc/space_bloc.dart';
import '../../ui/widgets/space_card.dart';
import '../../ui/pages/space_detail_page.dart';

class SpacePage extends StatefulWidget {
  final ISpaceRepository spaceRepository;
  final ISpaceBloc bloc;

  const SpacePage({
    Key? key,
    required this.spaceRepository,
    required this.bloc,
  }) : super(key: key);

  @override
  State<SpacePage> createState() => _SpacePageState();
}

class _SpacePageState extends State<SpacePage> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaces'),
      ),
      body: _SpaceList(
        bloc: widget.bloc,
        spaceRepository: widget.spaceRepository,
      ),
    );
  }
}

class _SpaceList extends StatelessWidget {
  final ISpaceRepository spaceRepository;
  final ISpaceBloc bloc;

  const _SpaceList({
    Key? key,
    required this.bloc,
    required this.spaceRepository,
  }) : super(key: key);

  @override
  Widget build(context) {
    return SizedBox(
      child: StreamBuilder<List<Space>>(
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
                            (space) => SpaceCard(
                                space: space,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return SpaceDetailPage(space: space);
                                    },
                                  ));
                                }),
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
    bloc.event.add(SpaceEvent.update);
  }
}
