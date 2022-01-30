import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/features/writer_verses/bloc/writer_bloc/writer_bloc.dart';
import '../ui/features/writer_verses/bloc/writer_bloc/writer_events/get_all_writers_event.dart';
import '../ui/features/writer_verses/pages/writers_list_page.dart';
import '../ui/theme/app_theme.dart';

class WriterApp extends StatelessWidget {
  const WriterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<WriterBloc>(
            create: (_) => WriterBloc()..add(GetAllWritersEvent()),
          ),
        ],
        child: const WritersListPage(),
      ),
    );
  }
}
