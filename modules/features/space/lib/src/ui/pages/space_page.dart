import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../space.dart';
import '../../domain/entities/space.dart';
import '../../ui/widgets/space_card.dart';
import '../../ui/pages/space_detail_page.dart';

class SpacePage extends StatefulWidget {
  const SpacePage({Key? key}) : super(key: key);

  @override
  State<SpacePage> createState() => _SpacePageState();
}

class _SpacePageState extends State<SpacePage> {
  final SpaceBloc bloc = Get.find();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaces'),
      ),
      body: _SpaceList(),
    );
  }
}

class _SpaceList extends StatelessWidget {
  final SpaceBloc bloc = Get.find();

  _SpaceList({Key? key}) : super(key: key);

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
                              onPressed: () =>
                                  _onSpaceCardPressed(context, space),
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
    bloc.event.add(SpaceEvent.update);
  }

  Future<void> _onSpaceCardPressed(BuildContext context, Space space) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SpaceDetailPage(space: space);
        },
      ),
    );
  }
}
